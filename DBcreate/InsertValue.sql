use GamingGearEcommerce
go
SET IDENTITY_INSERT Product
OFF
---------BRAND------------ Not yet + linkURL
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Logitech', 'Logitech là công ty đa quốc gia có trụ sở chính tại Thụy Sĩ và California. LogitechG là dòng sản phẩm hướng tới game thủ nhằm tăng trải nghiệm khi chơi game ', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Asus', 'là nhà sản xuất máy tính, phần cứng điện thoại và thiết bị điện tử đa quốc gia của Đài Loan có trụ sở tại quận Beitou, Đài Bắc, Đài Loan. Asus cung cấp các sản phẩm chất lượng cao và hiệu suất ấn tượng để đáp ứng nhu cầu của cộng đồng game thủ.', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Corsair', 'Corsair Gaming, Inc. là một công ty phần cứng và thiết bị ngoại vi máy tính của Mỹ có trụ sở tại Milpitas, California.', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Zowie', 'ZOWIE là thương hiệu chuyên cung cấp các thiết bị eSports chuyên nghiệp. Chúng tôi không ngừng phát triển các sản phẩm nhằm giúp game thủ có thể phát huy tối đa khả năng của họ.', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('SteelSeries', 'Steelseries một thương Gaming Gear danh tiếng đến từ Đan Mạch được thành năm năm 2001 bởi Jacob Wolff-Petersen. Là thương hiệu rất quen thuộc đối với các game thủ FPS.', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Razer', 'Razer một thương hiệu nỗi tiếng về Gaming Gear được thành lập vào năm 1998 tại Mỹ đã nhanh chóng chiếm trọn trái tim các game thủ bằng những sản phẩm đính đám như: chuột Razer DeathAdder, bàn phím Razer  Blackwindow Chroma, tai nghe Kraken 7.1 Chroma...', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Sony', 'Playstation của Sony là một cái tên phổ biến hàng đầu thế giới mỗi khi nhắc đến các dòng máy chơi game console. Đến nay, PS vẫn là một cỗ máy được Sony phát triển theo hướng đa nhiệm bên cạnh hoàn thành rất tốt vai trò là máy chơi game. ', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('E-Dra', 'E-Dra là thương hiệu Gaming Gear giá rẻ mới ra mắt thời gian gần đây. Đây là thương hiệu đến từ Việt Nam nhưng đa số các sản phẩm được gia công tại Trung Quốc.', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Nitendo', 'Nintendo là một công ty trò chơi điện tử nổi tiếng Nhật Bản, công ty này có xuất phát điểm từ một công ty thẻ bài có tên là Nintendo Karuta được thành lập vào năm 1989 tại Kyoto. Công ty này chính là cha đẻ tạo nên thành công của những tựa game đình đám như: Pokemon, Super Mario, Donkey Kong, Animal Crossing,… ', 'brand_a.jpg');
INSERT INTO [Brand] ([name], [description], [imageUrl])
VALUES ('Microsoft', 'Xbox là một thương hiệu trò chơi video được sáng tạo và sở hữu bởi Microsoft, bao gồm máy chơi game, game, dịch vụ phát trực tuyến,.... Đứa con của tập đoàn Microsoft dù sinh sau đẻ muộn nhưng đã sớm vươn lên trở thành một trong những thế lực mạnh và là một trong ba cột trụ mảng game console', 'brand_a.jpg');

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
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime])
VALUES ('Logitech G913 TKL', 1, 1, 49.99, 0.1, 'product_a.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime])
VALUES ('Logitech G913 TKL', 1, 1, 49.99, 0.1, 'product_a.jpg', '2023-07-02');
INSERT INTO [Product] ([name], [category_id], [brand_id], [price], [discount], [imageUrl], [createtime])
VALUES ('Logitech G913 TKL', 1, 1, 49.99, 0.1, 'product_a.jpg', '2023-07-02');

---------INFO------------Not Yet + linkURL
INSERT INTO [Info] ([info_id], [warranty], [imageUrl1], [imageUrl2], [imageUrl3], [description])
VALUES (1, 1, 'image1.jpg', 'image2.jpg', 'image3.jpg', 'Product information');
