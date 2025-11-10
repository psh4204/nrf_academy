/*
 * Copyright (c) 2023 Nordic Semiconductor ASA
 *
 * SPDX-License-Identifier: LicenseRef-Nordic-5-Clause
 */

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
#include <zephyr/bluetooth/bluetooth.h>
#include <zephyr/bluetooth/gap.h>
#include <dk_buttons_and_leds.h>

/* STEP 2.1 - Declare the Company identifier (Company ID) */
#define COMPANY_ID_CODE 0x0059 // Nordic Compny ID

/* STEP 2.2 - Declare the structure for your custom data  */
typedef struct adv_mfg_data {
	uint16_t campany_code;
	uint16_t number_press;
} adv_mfg_data_type;
static adv_mfg_data_type adv_mfg_data = {COMPANY_ID_CODE, 0x00}; 

#define USER_BUTTON DK_BTN1_MSK

/* STEP 1 - Create an LE Advertising Parameters variable */
/* 굳이 adv_param을 포인터로 선언한 이유 
- bt_le_adv_start()의 파라미터 원형이 포인터임.
	- 파라미터 마저 포인터를 사용하는 이유는 구조체나 실제 변수를 집어넣으면 무거워져서
	- 그래서 포인터 박은거
- 해당 변수는 BT_LE_ADV_PARAM 매크로를 통해서 변수를 세팅해서 해당 주소를 가진 포인터변수
	- C언어는 포인터지옥~
 */
static const struct bt_le_adv_param *adv_param = 
	BT_LE_ADV_PARAM(BT_LE_ADV_OPT_NONE, // No-Specific Options
		800, // Min Intver 500ms = 0.625ms *800
		801, // Max Intver 500.625ms = 0.625ms *800
		NULL); 


/* STEP 2.3 - Define and initialize a variable of type adv_mfg_data_type */
static unsigned char url_data[] = {
	0x17, '/', '/', 'v', 'e', 'l', 'o', 'g', '.', 
	'i', 'o', '/', '@', 'p','s','h','4','2','0','4',};
LOG_MODULE_REGISTER(Lesson2_Exercise2, LOG_LEVEL_INF);

#define DEVICE_NAME CONFIG_BT_DEVICE_NAME
#define DEVICE_NAME_LEN (sizeof(DEVICE_NAME) - 1)

#define RUN_STATUS_LED DK_LED1
#define RUN_LED_BLINK_INTERVAL 1000

static const struct bt_data ad[] = {
	BT_DATA_BYTES(BT_DATA_FLAGS, BT_LE_AD_NO_BREDR),
	BT_DATA(BT_DATA_NAME_COMPLETE, DEVICE_NAME, DEVICE_NAME_LEN),
	/* STEP 3 - Include the Manufacturer Specific Data in the advertising packet. */
	BT_DATA(BT_DATA_MANUFACTURER_DATA, (unsigned char*)&adv_mfg_data, sizeof(adv_mfg_data)),
};

static const struct bt_data sd[] = {
	BT_DATA(BT_DATA_URI, url_data, sizeof(url_data)),
};
/* STEP 5 - Add the definition of callback function and update the advertising data dynamically */
static void button_changed(uint32_t button_state, uint32_t has_changed)
{
	// 버튼이 눌리면 카운트 증가
    if (has_changed & button_state & USER_BUTTON) {
        adv_mfg_data.number_press +=1;
        // ADV 데이터를 업데이트 하는 함수
        bt_le_adv_update_data(ad, ARRAY_SIZE(ad), sd, ARRAY_SIZE(sd));
		
    }
}
static int init_button(void)
{
	int err;
	err = dk_buttons_init(button_changed);
	if(err) {
		printk("Cannot Init Buttons (err: %d)\n", err);
	}
	return err;
}

/* STEP 4.1 - Define the initialization function of the buttons and setup interrupt.  */

int main(void)
{
	int blink_status = 0;
	int err;

	LOG_INF("Starting Lesson 2 - Exercise 2 \n");

	err = dk_leds_init();
	if (err) {
		LOG_ERR("LEDs init failed (err %d)\n", err);
		return -1;
	}
	/* STEP 4.2 - Setup buttons on your board  */
	err = init_button();
	if(err) {
		printk("Button init failed (err: %d)\n", err);
	}

	err = bt_enable(NULL);
	if (err) {
		LOG_ERR("Bluetooth init failed (err %d)\n", err);
		return -1;
	}

	LOG_INF("Bluetooth initialized\n");

	err = bt_le_adv_start(adv_param, ad, ARRAY_SIZE(ad), sd, ARRAY_SIZE(sd));
	if (err) {
		LOG_ERR("Advertising failed to start (err %d)\n", err);
		return -1;
	}

	LOG_INF("Advertising successfully started\n");

	for (;;) {
		dk_set_led(RUN_STATUS_LED, (++blink_status) % 2);
		k_sleep(K_MSEC(RUN_LED_BLINK_INTERVAL));
	}
}
