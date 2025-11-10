/*
 * Copyright (c) 2023 Nordic Semiconductor ASA
 *
 * SPDX-License-Identifier: LicenseRef-Nordic-5-Clause
 */

#include <zephyr/kernel.h>
#include <zephyr/logging/log.h>
/* STEP 3 - Include the header file of the Bluetooth LE stack */
#include <zephyr/bluetooth/bluetooth.h>
#include <zephyr/bluetooth/gap.h>

#include <dk_buttons_and_leds.h>

LOG_MODULE_REGISTER(Lesson2_Exercise1, LOG_LEVEL_INF);

#define DEVICE_NAME CONFIG_BT_DEVICE_NAME
#define DEVICE_NAME_LEN (sizeof(DEVICE_NAME) - 1)

#define RUN_STATUS_LED DK_LED1
#define RUN_LED_BLINK_INTERVAL 1000

/* STEP 4.1.1 - Declare the advertising packet */
static const struct bt_data ad[] = {
	BT_DATA_BYTES(BT_DATA_FLAGS,BT_LE_AD_NO_BREDR), // Byte로 기본적인 플래그로 BLE라는 걸 표시.
	BT_DATA(BT_DATA_NAME_COMPLETE, DEVICE_NAME, DEVICE_NAME_LEN), // 이름가져와서 박음
};

/* STEP 4.2.2 - Declare the URL data to include in the scan response */
static unsigned char url_data[] = {
	0x17, '/', '/', 'v', 'e', 'l', 'o', 'g', '.', 
	'i', 'o', '/', '@', 'p','s','h','4','2','0','4',
}; // URI 주소 입력. (0x17 = https)

/* STEP 4.2.1 - Declare the scan response packet */
static const struct bt_data sd[] = {
	BT_DATA(BT_DATA_URI, url_data, sizeof(url_data)),
};



int main(void)
{
	int blink_status = 0;
	int err;

	LOG_INF("Starting Lesson 2 - Exercise 1 \n");

	err = dk_leds_init();
	if (err) {
		LOG_ERR("LEDs init failed (err %d)\n", err);
		return -1;
	}
	/* STEP 5 - Enable the Bluetooth LE stack */
	err = bt_enable(NULL);
	if (err) {
		LOG_ERR("BT Init Failed (err %d)\n", err);
	}
	LOG_INF("BT Initialized\n");

	/* STEP 6 - Start advertising */
	err = bt_le_adv_start(BT_LE_ADV_NCONN, ad, ARRAY_SIZE(ad), sd, ARRAY_SIZE(sd));
	if(err) {
		LOG_ERR("ADV Failed to start (err %d)\n", err);
	}
	LOG_INF("Advertising successfully started\n");

	for (;;) {
		dk_set_led(RUN_STATUS_LED, (++blink_status) % 2);
		k_sleep(K_MSEC(RUN_LED_BLINK_INTERVAL));
	}
}
	