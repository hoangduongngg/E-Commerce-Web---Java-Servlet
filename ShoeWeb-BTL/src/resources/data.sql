INSERT INTO `shoeweb`.`account` (`uID`, `user`, `pass`, `isSell`, `isAdmin`) VALUES ('1', 'admin', '123456', '0', '1');
INSERT INTO `shoeweb`.`account` (`uID`, `user`, `pass`, `isSell`, `isAdmin`) VALUES ('2', 'sell', '123456', '1', '0');


INSERT INTO `shoeweb`.`category` (`cid`, `cname`) VALUES ('1', 'ADIDAS');
INSERT INTO `shoeweb`.`category` (`cid`, `cname`) VALUES ('2', 'NIKE');
INSERT INTO `shoeweb`.`category` (`cid`, `cname`) VALUES ('3', 'BITI\'S');
INSERT INTO `shoeweb`.`category` (`cid`, `cname`) VALUES ('4', 'CONVERSE');


INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (1, N'Giày thể thao', N'https://canary.contestimg.wish.com/api/webimage/5f5ad3f3706bf3003d7acbd3-normal.jpg?cache_buster=10f7d3b88daf4019fa9d8be157793111', 100.0000, N'Giày thể thao nam Adidas Enerergy Falcon EE9844', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau',
 1, 1);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (2, N'Giày chạy bộ', N'https://canary.contestimg.wish.com/api/webimage/5d5bd678d55c843e49fe3077-normal.jpg?cache_buster=ddfc80fb52c6bd85a67c68ceb94a91d7', 120.0000, N'Giày Adidas Nova Run EE9266
', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 6);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (3, N'Giày du lịch', N'https://canary.contestimg.wish.com/api/webimage/5da6e559dcf2d00d2fbc707c-normal.jpg?cache_buster=d9139cea7e503395b907432f89e292d6', 130.0000, N'Dép đúc thể thao nam Adidas Adilette Boost Slides Đen - EH2256
', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 7);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (4, N'Giày adidas 2A', N'https://image.yes24.vn/Upload/ProductImage/thethaochinhang/2063162_L.jpg?width=550&height=550', 140.0000, N'Giày thể thao nam Adidas Enerergy Falcon EE9844
', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 1);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (5, N'Giày adidas 2B', N'https://image.yes24.vn/Upload/ProductImage/thethaochinhang/2063770_L.jpg?width=550&height=550', 150.0000, N'Giày đá bóng nam chính hãng Adidas Predator 18.4 FXG DB2007
', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 6);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (6, N'Giày adidas 2C', N'https://image.yes24.vn/Upload/ProductImage/GmarketSport/2016304_L.jpg?width=550&height=550', 160.0000, N'Giày đá bóng nam chính hãng Adidas Copa Tango 18.3 TF DB2410
', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 2, 7);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (7, N'Giày adidas 2D', N'https://image.yes24.vn/Upload/ProductImage/GmarketSport/2058803_L.jpg?width=550&height=550', 170.0000, N'Giày đá bóng nam chính hãng Adidas X TANGO 18.4 TF DB2479
', N'Giày thể thao Adidas Advantage Clean sử dụng chất liệu cao cấp, thoáng khí cả mặt trong và mặt ngoài giúp bạn luôn dễ chịu và thoải mái dù mang trong thời gian dài. Giày Adidas VS Advantage có bộ đế êm ái giúp người đi tận hưởng cảm giác thoải mái cho cả ngày dài vận động. Thời trang vốn là sự quay vòng, và thiết kế đơn giản, cổ điển đại diện cho xu hướng thời trang hoài cổ đang quay trở lại và được giới trẻ đón nhận nồng nhiệt hơn bao giờ hết. Không giống như những loại giày thể thao thông thường, mẫu giày adidas Advantage có kiểu dáng "thon thả" hơn, khiến cho đôi chân không bị trở nên lạc lõng so với đôi giày thể thao vốn bị "mang tiếng" là thô kệch, không đẹp mắt. Thêm nữa, đế của loại giày này được thiết kế theo kiểu đế xuồng 3cm vừa tạo tính đàn hồi cho từng bước đi mà cũng "tiện tay" giúp cho người đi "ăn gian" chiều cao khá đáng kể. Và tất nhiên, điểm cộng tuyệt vời nhất chính là sự phối hợp tuyệt vời từ kiểu dáng đến màu sắc của các nhà thiết kế tài hoa đã làm cho đôi giày phù hợp với mọi giới tính, mọi lứa tuổi, mix được với rất nhiều phong cách khác nhau', 1, 14);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (8, N'New Men''s Running Shoes', N'https://canary.contestimg.wish.com/api/webimage/5c4a05a08b26e56dcf17a643-normal.jpg?cache_buster=6d01b751858e14e68932bb234cdc44c1', 150.0000, N'Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', N'New Men''s Running Shoes Comfortable Sports Shoes Men Athletic Outdoor Cushioning Sneakers for Walking&Jogging (EUR Size 39-48)', 
4, 15);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (9, N'Men Hiking Shoes Waterproof Non', N'https://canary.contestimg.wish.com/api/webimage/5dc3c309d8b69d0de8949a21-large.jpg?cache_buster=68ad269a9f7b07d0effa9e48c1dc5c0f', 180.0000, N'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors
', N'Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-47 3 Colors
', 3, 14);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (10, N'Winter Men''s Snow Boots Plus Velvet', N'https://canary.contestimg.wish.com/api/webimage/5da3d0b594a0f07fdec6c5ac-large.jpg?cache_buster=a2471ea62eba44e7c0b0f4d2b4c64681', 180.0000, N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes
', N'Winter Men''s Snow Boots Plus Velvet Cotton Shoes Men''s Shoes Martin Cotton Boots Warm Shoes
', 4, 15);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (11, N'New Trend Men Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5df1f07d1fc34e0c50f78eb7-large.jpg?cache_buster=36188c130400df0faa4256aad8e90109', 150.0000, N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48
', N'New Trend Men Hiking Shoes Waterproof Non-slip Sport Shoes Casual Running Camping Shoes Outdoor Sneakers for Men Size 39-48
', 3, 17);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (12, N'Mens Skid Resistant Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5f3fb6d1b2a7ef003f6bd8a4-large.jpg?cache_buster=c9295f971ce194c1e68f6144f11314c6', 165.0000, N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoor Sport Shoes Fashion Sneakers
', 3, 19);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (13, N'NEW Spring White Shoes Men', N'https://canary.contestimg.wish.com/api/webimage/5d0235c9ae115f0be32755ef-large.jpg?cache_buster=fd2c105001ca1cbb03795818542906cc', 185.0000, N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear
', N'NEW Spring White Shoes Men Shoes Men''s Casual Shoes Fashion Sneakers Street Cool Man Footwear
', 3, 18);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (14, N'Winter Outdoor Waterproof', N'https://canary.contestimg.wish.com/api/webimage/5d70b17d55d5981ab5789f86-large.jpg?cache_buster=19f34456a6b274b940c839db21c2ab51', 200.0000, N'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men''s Shoes
', N'Winter Outdoor Waterproof Non-slip Plus Velvet Warm Snow Boots Cotton Boots Men''s Shoes
', 4, 1);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (15, N'Men''s Fashion Casual Shoes', N'https://canary.contestimg.wish.com/api/webimage/5c4a06d9e6a1c62df8877125-large.jpg?cache_buster=d17e757a3f8465edc71812b95b4b1a57', 100.0000, N'Men''s Fashion Casual Shoes Sports Running Shoes Men''s Shoes
', N'Men''s Fashion Casual Shoes Sports Running Shoes Men''s Shoes
', 4, 6);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (16, N'Mens Skid Resistant Hiking Shoes', N'https://canary.contestimg.wish.com/api/webimage/5c4a02d1344e882b1a41bca4-large.jpg?cache_buster=bc4ce4d229ed4e42dbba614acb622899', 120.0000, N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', N'Mens Skid Resistant Hiking Shoes Waterproof Mountain Boots Climbing Shoes Outdoors
', 4, 7);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (17, N'Men''s Modern Classic Lace Up Lined', N'https://canary.contestimg.wish.com/api/webimage/5c9543744578cb33ad0f56cd-large.jpg?cache_buster=ed84658c453c742ad13b9d565566ed06', 100.0000, N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', N'Men''s Modern Classic Lace Up Lined Perforated Dress Oxfords Shoes Flexible and Comfort oxfords
', 3, 1);
INSERT INTO `shoeweb`.`product` (`id`, `name`, `image`, `price`, `title`, `description`, `cateID`, `sell_ID`) 
VALUES (18, N'Men''s Outdoors Waterproof Boots Sports Shoes', N'https://canary.contestimg.wish.com/api/webimage/5e0db090b6383fa7bb0416ab-large.jpg?cache_buster=92297459781628185d780669109c00d6', 120.0000, N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', N'Men''s Outdoors Waterproof Boots Sports Shoes Snow Boots Hiking Boots Men''s Winter Warm Boots(No Velvet/Plus Velvet)
', 3, 7);

UPDATE `shoeweb`.`category` SET `cname` = 'NIKE AIR FORCE' WHERE (`cid` = '2');
UPDATE `shoeweb`.`category` SET `cname` = 'JORDAN' WHERE (`cid` = '1');
UPDATE `shoeweb`.`category` SET `cname` = 'FOOTBAL' WHERE (`cid` = '3');
DELETE FROM `shoeweb`.`category` WHERE (`cid` = '4');

UPDATE `shoeweb`.`product` SET `name` = 'Nike 1 \'07', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f094af40-f82f-4fb9-a246-e031bf6fc411/air-force-1-07-shoe-NMmm1B.png', `title` = 'Nike Air Force 1 \'07 White', `description` = 'The radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.', `cateID` = '2', `sell_ID` = '2' WHERE (`id` = '1');
UPDATE `shoeweb`.`product` SET `name` = 'Nike LV8 EMB', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/e28d2e35-8a74-49e7-996a-778a815fe065/air-force-1-07-lv8-emb-shoes-3qf7r1.png', `title` = 'Nike Air Force 1 \'07 LV8 EMB', `description` = 'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.', `sell_ID` = '2' WHERE (`id` = '4');
UPDATE `shoeweb`.`product` SET `name` = 'Nike 1 \'071', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/aee23c65-5ed1-4a07-aeff-180b2ad74c00/air-force-1-07-shoe-NMmm1B.png', `title` = 'Nike Air Force 1 \'07 Green', `description` = 'The radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.', `sell_ID` = '2' WHERE (`id` = '2');
UPDATE `shoeweb`.`product` SET `name` = 'Nike 1 \'072', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/64999541-d10f-4bc6-b0d3-5a143bbecf77/air-force-1-07-shoe-NMmm1B.png', `title` = 'Nike Air Force 1 \'07 Gray', `description` = 'The radiance lives on in the Nike Air Force 1 \'07, the b-ball icon that puts a fresh spin on what you know best: crisp leather, bold colours and the perfect amount of flash to make you shine.', `cateID` = '2', `sell_ID` = '2' WHERE (`id` = '3');
UPDATE `shoeweb`.`product` SET `name` = 'Nike Shadow', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/21385d10-9b67-4719-907b-97e761874d3e/air-force-1-shadow-shoes-mN8Glx.png', `title` = 'Nike Air Force 1 Shadow Green', `description` = 'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.', `cateID` = '2', `sell_ID` = '2' WHERE (`id` = '5');
UPDATE `shoeweb`.`product` SET `name` = 'Nike Shadow 2', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/76976120-1c43-4b97-8e7e-251f0b9684e8/air-force-1-shadow-shoes-mN8Glx.png', `title` = 'Nike Air Force 1 Shadow Pink', `description` = 'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.', `sell_ID` = '2' WHERE (`id` = '6');
UPDATE `shoeweb`.`product` SET `name` = 'Nike Shadow 3', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/4621066a-6e19-49e5-a2d7-4e7e5eade298/air-force-1-shadow-shoes-mN8Glx.png', `title` = 'Nike Air Force 1 Shadow', `description` = 'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.', `cateID` = '2', `sell_ID` = '2' WHERE (`id` = '7');
UPDATE `shoeweb`.`product` SET `name` = 'Nike  Premium', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/08105925-b788-48d7-8381-99257fcd0281/air-force-1-07-shoes-dbvfjQ.png', `title` = 'Nike Air Force 1 \'07 Premium', `description` = 'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.', `cateID` = '2', `sell_ID` = '2' WHERE (`id` = '8');
UPDATE `shoeweb`.`product` SET `name` = 'Nike Force', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/22191d2e-0b52-49fc-9b68-c03edd91dad0/force-1-toggle-younger-shoe-BDVjjK.png', `title` = 'Nike Force 1 Toggle', `description` = 'The radiance lives on with the b-ball original. Crossing hardwood comfort with off-court flair, it puts a fresh spin on what you know best: era-echoing, \'80s construction, bold details and nothin\'-but-net style.', `cateID` = '2', `sell_ID` = '2' WHERE (`id` = '9');
UPDATE `shoeweb`.`product` SET `name` = 'Jordan 1', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/9146f1f8-e561-4fd6-b1fc-d4ddcad66fed/air-jordan-1-shoes-d1vgvb.png', `title` = 'Air Jordan 1', `description` = 'Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.', `cateID` = '1', `sell_ID` = '2' WHERE (`id` = '10');
UPDATE `shoeweb`.`product` SET `name` = 'Jordan MA2', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/eeffc3fb-b18d-4db4-966b-2629ed2a30c4/jordan-ma2-shoe-qw1Z6m.png', `title` = 'Jordan MA2', `description` = 'Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.', `cateID` = '1', `sell_ID` = '2' WHERE (`id` = '11');
UPDATE `shoeweb`.`product` SET `name` = 'Jordan NFH', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/5b734c61-39ab-44b2-b18d-53963181f6d8/jordan-air-nfh-shoes-1msFvZ.png', `title` = 'Jordan Air NFH', `description` = 'Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.', `cateID` = '1', `sell_ID` = '2' WHERE (`id` = '12');
UPDATE `shoeweb`.`product` SET `name` = 'Jordan Retro', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/eb4fd3e6-71cc-4a34-8b65-0f5dbba2a7b6/air-jordan-6-retro-shoes-4m3b9d.png', `title` = 'Air Jordan 6 Retro', `description` = 'Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.', `cateID` = '1', `sell_ID` = '2' WHERE (`id` = '13');
UPDATE `shoeweb`.`product` SET `name` = 'Jordan SE', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/6da91d9c-038b-4104-9f50-b6c50ade106e/air-jordan-1-mid-se-shoes-bwRXft.png', `title` = 'Air Jordan 1 Mid SE', `description` = 'Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.', `cateID` = '1', `sell_ID` = '2' WHERE (`id` = '14');
UPDATE `shoeweb`.`product` SET `name` = 'Jordan Air', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/3c526174-8f08-41df-bf58-c0a158e74d35/jordan-air-nfh-bayou-shoe-3JqHmN.png', `title` = 'Jordan Air NFH \'Bayou Boys\'', `description` = 'Shift into casual mode with the Air Jordan 1.Rich with iconic hoops heritage, the wardrobe staple steps up its game with GORE-TEX material and buttery nubuck leather overlays.A reflective Swoosh shines along the sides.', `cateID` = '1', `sell_ID` = '2' WHERE (`id` = '15');
UPDATE `shoeweb`.`product` SET `name` = 'Legend 9', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/022cde50-18e5-4b81-b63e-c71340a43e7f/tiempo-legend-9-academy-mg-multi-ground-football-boot-8Vvl8G.png', `title` = 'Nike Tiempo Legend 9 Academy MG', `description` = '1 of our lightest Tiempos to date, the Nike Tiempo Legend 9 Academy MG lets you go on the offensive with a low-profile design that\'s reinvented for attackers. The upper has raised textures backed by soft foam pods for precise dribbling, passing and shooting, while studs on the bottom provide traction for quick cuts and sudden stops.', `cateID` = '3', `sell_ID` = '2' WHERE (`id` = '16');
UPDATE `shoeweb`.`product` SET `name` = 'Phantom GT2', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/0e089df8-44f3-49ce-ba75-825b0eab1bec/phantom-gt2-academy-mg-multi-ground-football-boot-Mnr9D7.png', `title` = 'Nike Phantom GT2 Academy MG', `description` = 'The Nike Mercurial Vapor 14 Club elevates a classic with gold and silver accents for a look that\'s fit for champions. A grippy texture throughout the upper provides precise control when dribbling at higher speeds.', `sell_ID` = '2' WHERE (`id` = '17');
UPDATE `shoeweb`.`product` SET `name` = 'Vapor 14', `image` = 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/67cfc9bf-4006-4e4a-958a-e82517199ce8/mercurial-vapor-14-club-mg-multi-ground-football-boots-6M4M03.png', `title` = 'Nike Mercurial Vapor 14 Club MG', `description` = 'The Nike Mercurial Vapor 14 Club elevates a classic with gold and silver accents for a look that\'s fit for champions. A grippy texture throughout the upper provides precise control when dribbling at higher speeds.', `sell_ID` = '2' WHERE (`id` = '18');

ALTER TABLE `shoeweb`.`product` 
CHANGE COLUMN `price` `price` FLOAT NULL DEFAULT NULL ;

ALTER TABLE `shoeweb`.`account` 
ADD COLUMN `name` VARCHAR(255) NULL AFTER `isAdmin`,
ADD COLUMN `address` VARCHAR(255) NULL AFTER `name`,
ADD COLUMN `phone` VARCHAR(255) NULL AFTER `address`,
CHANGE COLUMN `isSell` `isSell` INT NOT NULL ,
CHANGE COLUMN `isAdmin` `isAdmin` INT NOT NULL ;
UPDATE `shoeweb`.`account` SET `name` = 'Nguyen Hoang Duong', `address` = 'Bac Ninh, Viet Nam', `phone` = '0123456789' WHERE (`uID` = '3');
UPDATE `shoeweb`.`account` SET `user` = 'hoangduongnguyen', `isSell` = '0', `name` = 'Nguyen Hoang Duong', `address` = 'Ha Dong, Ha Noi, Viet Nam', `phone` = '0123456789' WHERE (`uID` = '4');

ALTER TABLE `shoeweb`.`orderdetail` 
CHANGE COLUMN `itemID` `itemID` INT NOT NULL ,
CHANGE COLUMN `orderID` `orderID` INT NOT NULL ;

ALTER TABLE `shoeweb`.`order` 
CHANGE COLUMN `accountID` `accountID` INT NOT NULL ;

ALTER TABLE `shoeweb`.`product` 
CHANGE COLUMN `price` `price` DOUBLE NULL DEFAULT NULL ;

ALTER TABLE `shoeweb`.`order` 
CHANGE COLUMN `orderDate` `orderDate` VARCHAR(255) NOT NULL ;

ALTER TABLE `shoeweb`.`orderdetail` 
DROP COLUMN `itemID`,
ADD COLUMN `productID` INT NOT NULL AFTER `orderID`,
ADD COLUMN `quantity` INT NOT NULL AFTER `productID`,
ADD COLUMN `price` DOUBLE NOT NULL AFTER `quantity`;

ALTER TABLE `shoeweb`.`product` 
ADD COLUMN `quantity` INT NOT NULL AFTER `sell_ID`,
CHANGE COLUMN `name` `name` VARCHAR(1000) NOT NULL ,
CHANGE COLUMN `image` `image` VARCHAR(5000) NOT NULL ,
CHANGE COLUMN `price` `price` DOUBLE NOT NULL ,
CHANGE COLUMN `title` `title` VARCHAR(1000) NOT NULL ,
CHANGE COLUMN `description` `description` VARCHAR(5000) NOT NULL ,
CHANGE COLUMN `cateID` `cateID` INT NOT NULL ,
CHANGE COLUMN `sell_ID` `sell_ID` INT NOT NULL ;

UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '1');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '2');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '3');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '4');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '5');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '6');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '7');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '8');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '9');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '10');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '11');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '12');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '13');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '14');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '15');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '16');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '17');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '18');
UPDATE `shoeweb`.`product` SET `quantity` = '50' WHERE (`id` = '19');

ALTER TABLE `shoeweb`.`product` 
ADD COLUMN `insertDate` DATE NOT NULL AFTER `quantity`;

UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '1');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '2');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '3');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '4');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '5');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '6');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '7');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '8');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '9');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '10');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '11');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '12');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '13');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '14');
UPDATE `shoeweb`.`product` SET `insertDate` = '2020-05-10' WHERE (`id` = '15');
UPDATE `shoeweb`.`product` SET `insertDate` = '2020-05-10' WHERE (`id` = '16');
UPDATE `shoeweb`.`product` SET `insertDate` = '2020-05-10' WHERE (`id` = '17');
UPDATE `shoeweb`.`product` SET `insertDate` = '2022-05-10' WHERE (`id` = '18');

ALTER TABLE `shoeweb`.`product` 
CHANGE COLUMN `insertDate` `insertDate` VARCHAR(100) NOT NULL ;

UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '1');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '2');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '3');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '4');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '5');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '6');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '7');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '8');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '9');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '10');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '11');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2020' WHERE (`id` = '12');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2020' WHERE (`id` = '13');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2020' WHERE (`id` = '14');
UPDATE `shoeweb`.`product` SET `insertDate` = '10-05-2022' WHERE (`id` = '18');

ALTER TABLE `shoeweb`.`product` 
CHANGE COLUMN `insertDate` `date` VARCHAR(100) NOT NULL ;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nohope`
--

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `thanh_vien`, `money`, `note`, `vnp_response_code`, `code_vnpay`, `code_bank`, `time`) VALUES
(1, '742874161', 'abc', 100000, 'chinh chuyển khoản', '00', '13401455', 'NCB', '2020-10-10 01:00:00'),
(2, '608324672', 'abc', 1000000, 'test chuyển khoản', '00', '13401811', 'NCB', '2020-10-11 21:00:00'),
(3, '1134065293', 'CT2', 150000, 'học phí', '00', '13407163', 'NCB', '2020-10-22 23:00:00'),
(4, '596509313', 'CT2', 5000000, 'học phí', '00', '13407176', 'NCB', '2020-10-23 00:00:00'),
(5, '70267166', 'CT2', 5000000, 'học phí', '00', '13407178', 'NCB', '2020-10-23 00:00:00'),
(6, '1672349048', 'CT1', 150000, 'học phí', '00', '13407729', 'NCB', '2020-10-23 21:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

