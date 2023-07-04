use GamingGearEcommerce
go
SET IDENTITY_INSERT Product
OFF
---------BRAND------------ Not yet + linkURL
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Logitech', N'Logitech là công ty đa quốc gia có trụ sở chính tại Thụy Sĩ và California. LogitechG là dòng sản phẩm hướng tới game thủ nhằm tăng trải nghiệm khi chơi game ', 'https://th.bing.com/th/id/OIP.vv-NWyVvJzHWtGKlMJNwLgHaCO?w=344&h=105&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Asus', N'là nhà sản xuất máy tính, phần cứng điện thoại và thiết bị điện tử đa quốc gia của Đài Loan có trụ sở tại quận Beitou, Đài Bắc, Đài Loan. Asus cung cấp các sản phẩm chất lượng cao và hiệu suất ấn tượng để đáp ứng nhu cầu của cộng đồng game thủ.', 'https://th.bing.com/th/id/OIP.i9w3MHFrSlxPgqZDSVqyxAHaEH?w=281&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Corsair',N'Corsair Gaming, Inc. là một công ty phần cứng và thiết bị ngoại vi máy tính của Mỹ có trụ sở tại Milpitas, California.', 'https://th.bing.com/th/id/OIP.8ZnAtzd0bp0xoie4iGUAsQHaHa?w=164&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Zowie', N'ZOWIE là thương hiệu chuyên cung cấp các thiết bị eSports chuyên nghiệp. Chúng tôi không ngừng phát triển các sản phẩm nhằm giúp game thủ có thể phát huy tối đa khả năng của họ.', 'https://th.bing.com/th/id/OIP.M2tcN9Q8eM6_nSN1N9Rz8wHaCG?w=283&h=99&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('SteelSeries', N'Steelseries một thương Gaming Gear danh tiếng đến từ Đan Mạch được thành năm năm 2001 bởi Jacob Wolff-Petersen. Là thương hiệu rất quen thuộc đối với các game thủ FPS.', 'https://th.bing.com/th/id/OIP.60H03MQCLrbZ9tA1SE1lZAHaDb?w=298&h=162&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Razer', N'Razer một thương hiệu nỗi tiếng về Gaming Gear được thành lập vào năm 1998 tại Mỹ đã nhanh chóng chiếm trọn trái tim các game thủ bằng những sản phẩm đính đám như: chuột Razer DeathAdder, bàn phím Razer  Blackwindow Chroma, tai nghe Kraken 7.1 Chroma...', 'https://th.bing.com/th/id/OIP.tjxUDM7kAgVQMmyRaMbHxwHaEK?w=283&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Sony', N'Playstation của Sony là một cái tên phổ biến hàng đầu thế giới mỗi khi nhắc đến các dòng máy chơi game console. Đến nay, PS vẫn là một cỗ máy được Sony phát triển theo hướng đa nhiệm bên cạnh hoàn thành rất tốt vai trò là máy chơi game. ', 'https://th.bing.com/th/id/OIP.xdXbi1WX38I-3xbU86OYdAHaEK?w=318&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('E-Dra', N'E-Dra là thương hiệu Gaming Gear giá rẻ mới ra mắt thời gian gần đây. Đây là thương hiệu đến từ Việt Nam nhưng đa số các sản phẩm được gia công tại Trung Quốc.', 'http://edravn.com/template/default/images/logo.png');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Nitendo', N'Nintendo là một công ty trò chơi điện tử nổi tiếng Nhật Bản, công ty này có xuất phát điểm từ một công ty thẻ bài có tên là Nintendo Karuta được thành lập vào năm 1989 tại Kyoto. Công ty này chính là cha đẻ tạo nên thành công của những tựa game đình đám như: Pokemon, Super Mario, Donkey Kong, Animal Crossing,… ', 'https://th.bing.com/th/id/OIP.1TqxG3NcgORCPOiJh4ooYQHaFg?w=230&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Microsoft', N'Xbox là một thương hiệu trò chơi video được sáng tạo và sở hữu bởi Microsoft, bao gồm máy chơi game, game, dịch vụ phát trực tuyến,.... Đứa con của tập đoàn Microsoft dù sinh sau đẻ muộn nhưng đã sớm vươn lên trở thành một trong những thế lực mạnh và là một trong ba cột trụ mảng game console', 'https://th.bing.com/th/id/OIP.sal3uYjwTYKlK5VOL9S5QQHaHa?w=169&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');

---------CATEGORY------------
INSERT INTO [Category] ([name])
VALUES (N'Bàn Phím Gaming');
INSERT INTO [Category] ([name])
VALUES (N'Chuột Gaming');
INSERT INTO [Category] ([name])
VALUES (N'Tai Nghe Gaming');
INSERT INTO [Category] ([name])
VALUES (N'Tay Cầm');
INSERT INTO [Category] ([name])
VALUES (N'Pad Chuột Và Phụ Kiện');

---------PRODUCT------------Not yet + linkURL
--INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
--VALUES ('LOGITECH  ', 2, 1, 3549000, 0.22, '3.jpg', '2023-06-29');
------ 11 - DONE
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) ----TEST-----
VALUES ('LOGITECH G PRO X RGB LIGHTSYNC', 1, 1, 3999000, 0.40, 'https://hanoicomputercdn.com/media/product/49500_ban_phim_co_logitech_g_pro_x_rgb_lightsync_mechanical_gx_blue_switch_gaming_keyboard_0001_1.jpg', '2023-06-25');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) ----TEST-----
VALUES ('LOGITECH G512 LIGHTSYNC RGB CLICKY', 1, 1, 2999000, 0.39, 'https://hanoicomputercdn.com/media/product/54071_ban_phim_co_logitech_g512_lightsync_rgb_gx_blue_clicky_switch_0001_2.jpg', '2023-07-01');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) ----TEST-----
VALUES ('LOGITECH G913 TKL LIGHTSPEED WIRELESS RGB BLUE CLICKY SWITCH', 1, 1, 5359000, 0.33, 'https://hanoicomputercdn.com/media/product/53336_ban_phim_logitech_g913_tkl_lightspeed_wireless_rgb_blue_switch_0002_3.jpg', '2023-06-25');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) ----TEST-----
VALUES ('LOGITECH G715 TKL RGB AURORA OFF WHITE TACTILE', 1, 1, 4999000, 0.23, 'https://hanoicomputercdn.com/media/product/68796_ban_phim_game_khong_day_logitech_g715_tkl_rgb_off_white_tactile_920_010467_1.jpg', '2023-07-01');
--21- DONE
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G203 LILAC ', 2, 1, 499000, 0.24, 'https://hanoicomputercdn.com/media/product/250_64939_chuot_game_logitech_g203_lilac_910_005853_usb_rgb_0003_4.jpg', '2023-06-28');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G703 HERO LIGHTSPEED WIRELESS GAMING', 2, 1, 2499000, 0.28, 'https://hanoicomputercdn.com/media/product/250_486_tong_the_mouse_logitech_g703_lightspeed_wireless_gaming_hero.jpg', '2023-06-25');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G502 HERO ', 2, 1, 2019000, 0.54, 'https://hanoicomputercdn.com/media/product/250_44370_mouse_logitech_g502_hero_gaming_usb_black_0003_1.jpg', '2023-06-25');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G502X RGB PLUS LIGHTSPEED ', 2, 1, 4359000, 0.33, 'https://hanoicomputercdn.com/media/product/69519_chuot_game_khong_day_logitech_g502x_rgb_plus_lightspeed_trang_910_006148_usb_0004_5.jpg', '2023-06-25');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH PRO X SUPERLIGHT WHITE ', 2, 1, 2849000, 0, 'https://hanoicomputercdn.com/media/product/57305_chuot_khong_day_logitech_pro_x_superlight_white_usb_rgb_trang_910_005944_0001_2.jpg', '2023-06-28');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G502X RGB PLUS LIGHTSPEED  ', 2, 1, 3549000, 0.22, 'https://hanoicomputercdn.com/media/product/68291_chuot_game_khong_day_logitech_g502x_rgb_plus_lightspeed_den_910_006164_0002_3.jpg', '2023-06-29');
---12- DONE
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('ASUS ROG STRIX FLARE II NX  ', 1, 2, 3390000, 0.1, 'https://hanoicomputercdn.com/media/product/65933_ban_phim_game_khong_day_asus_rog_strix_flare_ii_4.jpg', '2023-06-29');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES (' ASUS ROG CLAYMORE II', 1, 2, 5499000, 0.2, 'https://hanoicomputercdn.com/media/product/59088_ban_phim_co_khong_day_asus_rog_claymore_ii_rgb_rx_optical_red_sw_logo.jpg', '2023-06-28');
--16
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER PRO TYPE ULTRA WIRELESS PRODUCTIVITY   ', 1, 6, 3699000, 0, 'https://hanoicomputercdn.com/media/product/63910_razer_pro_type_ultra_wireless_0001_2.jpg', '2023-06-29');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER BLACKWIDOW V3 HALO INFINITE GREEN SW', 1, 6, 38390000, 0.22, 'https://hanoicomputercdn.com/media/product/61706_ban_phim_co_razer_blackwidow_v3_halo_infinite_green_sw_rz03_03542600_r3m1_usb_0001_2.jpg', '2023-06-29');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER BLACKWIDOW LITE SILENT', 1, 6, 1899000, 0, 'https://hanoicomputercdn.com/media/product/45171_tong_the_ban_phim_razer_blackwidow_lite_silent_mechanical_gaming_keyboard_orange_switch.jpg', '2023-07-02');
--31
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G735 WHITE', 3, 1, 3999000, 0, 'https://hanoicomputercdn.com/media/product/68682_tai_nghe_choi_game_khong_day_logitech_g735_mau_trang_wireless_bluetooth_5_2_0003_4.jpg', '2023-06-29');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G633S 7.1 GAMING HEADSET', 3, 1, 2549000, 0.20, 'https://hanoicomputercdn.com/media/product/67534_tai_nghe_logitech_g633s_7_1_gaming_headset_0002_3.jpg', '2023-06-29');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH LIGHTSPEED G733 WIRELESS RGB  ', 3, 1, 2799000, 0.10, 'https://hanoicomputercdn.com/media/product/64962_tai_nghe_gaming_logitech_lightspeed_g733_wireless_rgb_tim_0001_2.jpg', '2023-06-26');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G435 LIGHTSPEED WIRELESS WHITE  ', 3, 1, 1500000, 0, 'https://hanoicomputercdn.com/media/product/62592_tai_nghe_logitech_g435_lightspeed_wireless_white_0001_2.jpg', '2023-06-28');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('G933 SNOW WIRELESS 7.1 RGB GAMING HEADSET WHITE  ', 3, 1, 2349000, 0, 'https://hanoicomputercdn.com/media/product/48768_tai_nghe_logitech_g933_snow_wireless_71_rgb_gaming_headset_white_981_000622_0003_1.jpg', '2023-06-27');
--51
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('LOGITECH G840 XL MAGENTA  ', 5, 1, 860000, 0, 'https://hanoicomputercdn.com/media/product/64456_ban_di_chuot_logitech_g840_xl_magenta_hong_900mm_x_400mm_x_3mm_0000_1.jpg', '2023-06-29');
--22
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('ASUS ROG GLADIUS II  ', 2, 2, 1095000, 0, 'https://hanoicomputercdn.com/media/product/59000_chuot_asus_rog_gladius_ii_usb_rgb_den_0001_2.jpg', '2023-07-01');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('ASUS ROG GLADIUS III WIRELESS AIMPOINT BLACK  ', 2, 2, 2249000, 0, 'https://hanoicomputercdn.com/media/product/69040_chuot_game_asus_rog_gladius_iii_wireless_aimpoint_black_p711_usb_rgb_0003_4.jpg', '2023-07-03');
--32
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('ASUS ROG CETRA TRUE WIRELESS WHITE 90YH03X1-B5UA00', 3, 2, 2349000, 0, 'https://hanoicomputercdn.com/media/product/69536_tai_nghe_asus_rog_cetra_true_wireless_white_90yh03x1_b5ua00_0001_2.jpg', '2023-06-26');
--23
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('CORSAIR HARPOON RGB WIRELESS', 2, 3, 1149000, 0, 'https://hanoicomputercdn.com/media/product/250_63999_chuot_khong_day_corsair_sabre_pro_rgb_usb_ch_9313211_ap_3.jpg', '2023-06-26');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('CORSAIR SABRE RGB PRO', 2, 3, 1349000, 0, 'https://hanoicomputercdn.com/media/product/58578_chuot_corsair_sabre_rgb_pro_usb_rgb_pmw3392_den_ch_9303111_ap_0004_5.jpg', '2023-06-28');
--33
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('CORSAIR HS80 RGB WHITE', 3, 3, 3349000, 0, 'https://hanoicomputercdn.com/media/product/65839_tai_nghe_khong_day_corsair_hs80_rgb_white_ca_9011236_ap_1.jpg', '2023-06-28');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('CORSAIR HS65 WIRELESS WHITE', 3, 3, 3949000, 0, 'https://hanoicomputercdn.com/media/product/71915_tai_nghe_gaming_khong_day_corsair_hs65_wireless_white_ca_9011286_ap_0003_4.jpg', '2023-06-29');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('CORSAIR HS55 WIRELESS CARBON', 3, 3, 1349000, 0, 'https://hanoicomputercdn.com/media/product/71912_tai_nghe_gaming_khong_day_corsair_hs55_wireless_carbon_ca_9011280_ap_0004_5.jpg', '2023-06-28');
--53
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES (' CORSAIR MM200 PRO XLARGE', 5, 3, 549000, 0, 'https://hanoicomputercdn.com/media/product/59805_ban_di_chuot_corsair_mm200_pro_xlarge_ch_9412660_ww_450_x_400_x_6mm_0001_screenshot_1623726602.jpg', '2023-07-03');
--24
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('ZOWIE BENQ EC2-C ', 2, 4, 2349000, 0, 'https://hanoicomputercdn.com/media/product/63360_chuot_zowie_benq_ec2_c_usb_den_6.jpg', '2023-06-28');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('ZOWIE BENQ S1 OPTICAL E-SPORT GAMING', 2, 4, 2399000, 0, 'https://hanoicomputercdn.com/media/product/49957_chuot_zowie_benq_s1_optical_e_sport_gaming_0000_1.jpg', '2023-06-28');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('ZOWIE BENQ EC3-C', 2, 4, 1549000, 0, 'https://hanoicomputercdn.com/media/product/60911_chuot_zowie_benq_ec3_c_usb_ergonomic_3200dpi_1000hz_3360_0000_1.jpg', '2023-06-29');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('ZOWIE BENQ S2 OPTICAL E-SPORT GAMING', 2, 4, 1999000, 0, 'https://hanoicomputercdn.com/media/product/49958_chuot_zowie_benq_s2_optical_e_sport_gaming_0001_1.jpg', '2023-06-30');
--15
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('STEELSERIES APEX 3 TKL 64831', 1, 5, 1189000, 0, 'https://hanoicomputercdn.com/media/product/69602_ba_n_phi_m_gaming_co_day_steelseries_apex_3_tkl_64831_2.jpg', '2023-07-04');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('STEELSERIES APEX PRO MINI US 64820', 1, 5, 3289000, 0, 'https://hanoicomputercdn.com/media/product/69604_ba_n_phi_m_co_day_steelseries_apex_pro_mini_us_64820_4.jpg', '2023-07-01');
--25
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('STEELSERIES RIVAL 3 WIRELESS', 2, 5, 1189000, 0, 'https://hanoicomputercdn.com/media/product/56021_chuot_khong_day_steelseries_rival_3_wireless_62521_usb_den_0001_2.jpg', '2023-06-27');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('STEELSERIES AEROX 5 62401', 2, 5, 1789000, 0, 'https://hanoicomputercdn.com/media/product/69599_chuot_gaming_co_day_steelseries_aerox_5_62401_3.jpg', '2023-06-30');
--35
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('STEELSERIES ARCTIS NOVA 1 WHITE', 3, 5, 1689000, 0, 'https://hanoicomputercdn.com/media/product/70969_tai_nghe_gaming_steelseries_arctis_nova_1_white_61607_9.jpg', '2023-06-26');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('STEELSERIES ARCTIS NOVA PRO (WIRED)', 3, 5, 5989000, 0, 'https://hanoicomputercdn.com/media/product/69041_tai_nghe_steelseries_arctis_nova_pro_wired_61527_0001_2.jpg', '2023-06-26');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('STEELSERIES ARCTIS 9', 3, 5, 5289000, 0, 'https://hanoicomputercdn.com/media/product/64615_tai_nghe_khong_day_steelseries_arctis_9_61484_6.jpg', '2023-06-26');
--26
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER NAGA X', 2, 6, 1700000, 0, 'https://hanoicomputercdn.com/media/product/58098_chuot_choi_game_razer_naga_x_usb_rgb_den_rz01_03590100_r3m1_0002_1.jpg', '2023-07-01');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER DEATHADDER ESSENTIAL ERGONOMIC', 2, 6, 500000, 0, 'https://hanoicomputercdn.com/media/product/64001_chuot_razer_deathadder_essential_ergonomic_trang_usb_led_white_1.jpg', '2023-07-01');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER VIPER V2 PRO WHITE ULTRA LIGHTWEIGHT', 2, 6, 3500000, 0, 'https://hanoicomputercdn.com/media/product/65961_chuot_game_khong_day_razer_viper_v2_pro_white_ultra_lightweight_6.jpg', '2023-07-01');
--36
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER KRAKEN TE BLACK', 3, 6, 799000, 0, 'https://hanoicomputercdn.com/media/product/72424_tai_nghe_gaming_razer_kraken_te_black_tray_likenew_99.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER HAMMERHEAD TRUE WIRELESS GEN2', 3, 6, 799000, 0, 'https://hanoicomputercdn.com/media/product/72425_tai_nghe_gaming_razer_hammerhead_true_wireless_gen2_tray_likenew_99_0002_3.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER BARACUDA X BLACK', 3, 6, 799000, 0, 'https://hanoicomputercdn.com/media/product/72422_tai_nghe_gaming_razer_baracuda_x_black_tray_likenew_99_1.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER BARRACUDA WHITE WIRELESS ', 3, 6, 3900000, 0, 'https://hanoicomputercdn.com/media/product/72261_tai_nghe_khong_day_razer_barracuda_white_wireless_rz04_03790200_r3m1_5.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('RAZER BARRACUDA X MERCURY 2022', 3, 6, 2900000, 0, 'https://hanoicomputercdn.com/media/product/72264_tai_nghe_khong_day_razer_barracuda_x_mercury_2022_0003_4.jpg', '2023-07-02');
--47
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('PS4 SONY DUALSHOCK 4 CONTROLLER', 4, 7, 1390000, 0, 'https://hanoicomputercdn.com/media/product/37581_gamepad_sony_ps4_dualshock4_wireles_scontroller_den_chinhhang_0003_1.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('PS5 SONY DUALSENSE CFI-ZCT1G', 4, 7, 1890000, 0, 'https://hanoicomputercdn.com/media/product/58107_sony_dualsense_cfi_zct1g_0003_4.jpg', '2023-07-02');
-- 18
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('EDRA EK387L RGB', 1, 8, 799000, 0, 'https://hanoicomputercdn.com/media/product/69440_ban_phim_co_edra_ek387l_rgb_mau_den_blue_sw_usb_0000_1.jpg', '2023-07-01');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('EDRA EK387FL RGB POLAR NIGHT', 1, 8, 1399000, 0, 'https://hanoicomputercdn.com/media/product/68145_ban_phim_co_game_edra_ek387fl_rgb_polar_night_brown_sw_usbc_pbt_0003_4.jpg', '2023-07-01');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('EDRA EK384 TRIPLE MODE', 1, 8, 849000, 0, 'https://hanoicomputercdn.com/media/product/72547_ban_phim_co_edra_ek384_triple_mode_beta_usb_c_wireless_24g_bluetooth_1.jpg', '2023-07-01');
-- 49
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('NINTENDO SWITCH PRO CONTROLLER - SUPER SMASH BROS ULTIMATE LIMITED', 4, 9, 2099000, 0, 'https://hanoicomputercdn.com/media/product/66724_tay_cam_choi_game_khong_day_nintendo_switch_pro_controller_super_smash_bros_ultimate_limited_3.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('JOY-CON CONTROLLERS PASTEL PINK - PASTEL YELLOW', 4, 9, 1599000, 0, 'https://hanoicomputercdn.com/media/product/73360_bo_2_tay_cam_joy_con_controllers_pastel_pink_pastel_yellow_1.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('NINTENDO SWITCH PRO CONTROLLER', 4, 9, 1599000, 0, 'https://hanoicomputercdn.com/media/product/66244_tay_cam_choi_game_khong_day_nintendo_switch_pro_controller_mau_den_0004_5.jpg', '2023-07-02');
--410
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('MICROSOFT XBOX 360', 4, 10, 599000, 0, 'https://hanoicomputercdn.com/media/product/60562_tay_cam_choi_game_co_day_microsoft_xbox_360_refurbished_8.png', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('XBOX ONE S WHITE', 4, 10, 1299000, 0, 'https://hanoicomputercdn.com/media/product/36411_tay_game_khong_day_xbox_one_white_0003_1.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime]) 
VALUES ('XBOX SERIES X CONTROLLER - CARBON BLACK', 4, 10, 1799000, 0, 'https://hanoicomputercdn.com/media/product/69477_tay_cam_choi_game_xbox_series_x_controller_carbon_black_mau_den_usb_adapter_khong_day_0000_1.jpg', '2023-07-02');

---------INFO------------Not Yet + linkURL
INSERT INTO [Info] ([info_id], [warranty], [imageUrl1], [imageUrl2], [imageUrl3], [description])
VALUES (1, 1, 'image1.jpg', 'image2.jpg', 'image3.jpg', 'Product information');



-- 4 5
-- Brand have product
-- 1 logitech 4
-- 2 asus --
-- 3 corsair --
-- 4 zowie--
-- 5 steelseries--
-- 6 razer--
-- 7 sony -- maybe 5
-- 8 edra --
-- 9 nitendo -- 5
-- 10 xbox -- 5

