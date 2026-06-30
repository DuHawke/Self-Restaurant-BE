-- =========================
-- 1) CATEGORY
-- =========================
INSERT INTO category (category_id, category_name, category_url) VALUES
(1, 'Vietnamese Coffee', 'https://i.pinimg.com/1200x/81/72/60/81726082c6d0780cb89ef2d45a02684d.jpg'),
(2, 'Milk Tea',          'https://i.pinimg.com/1200x/bd/f6/65/bdf665afa503a372c02d1480388954dc.jpg'),
(3, 'Fruit Tea',         'https://i.pinimg.com/1200x/07/64/a6/0764a653192a11d809a6f7849bf28e84.jpg'),
(4, 'Matcha & Houjicha', 'https://i.pinimg.com/736x/d2/7f/8b/d27f8b5bd7955eee2446a0b3447aeafa.jpg');

-- =========================
-- 2) PRODUCT (19 sản phẩm)
-- =========================
INSERT INTO product (product_id, product_name, product_price, product_url, category_id) VALUES
-- Vietnamese Coffee (1-2)
(1,  'Vietnamese Black Coffee',                  30000.00, 'https://i.pinimg.com/736x/fa/21/eb/fa21eb28c29f08f40bd7f44e9d21f27d.jpg', 1),
(2,  'Vietnamese Milk Coffee',                    35000.00, 'https://i.pinimg.com/1200x/ea/b5/1d/eab51d648190226b680df8bb4ff08b4a.jpg', 1),

-- Milk Tea (3-7)
(3,  'Classic Milk Tea',                          45000.00, 'https://i.pinimg.com/736x/3b/1b/77/3b1b77d67d2b643ad36ebd29170df649.jpg', 2),
(4,  'Brown Sugar Milk Tea',                       50000.00, 'https://i.pinimg.com/736x/1a/83/3f/1a833f1bf636f9034328b036476fd59c.jpg', 2),
(5,  'Roasted Oolong Milk Tea',                    50000.00, 'https://i.pinimg.com/1200x/9c/84/8e/9c848ed2eb2b43fd82147879750f80d2.jpg', 2),
(6,  'Green Thai Milk Tea',                        50000.00, 'https://i.pinimg.com/736x/1a/83/3f/1a833f1bf636f9034328b036476fd59c.jpg', 2),
(7,  'Red Thai Milk Tea',                          50000.00, 'https://i.pinimg.com/736x/3b/1b/77/3b1b77d67d2b643ad36ebd29170df649.jpg', 2),

-- Fruit Tea (8-13)
(8,  'Peach Tea',                                  40000.00, 'https://i.pinimg.com/736x/13/29/2f/13292f0a2609c317a663c29128414934.jpg', 3),
(9,  'Lemon Tea',                                  35000.00, 'https://i.pinimg.com/1200x/01/6c/44/016c440dafbfaff46b8ebdf5071bd539.jpg', 3),
(10, 'Peach, Orange, and Lemongrass Tea',          35000.00, 'https://i.pinimg.com/736x/13/29/2f/13292f0a2609c317a663c29128414934.jpg', 3),
(11, 'Longan Jasmine Tea',                         35000.00, 'https://i.pinimg.com/1200x/01/6c/44/016c440dafbfaff46b8ebdf5071bd539.jpg', 3),
(12, 'Strawberry Jasmine Tea',                     35000.00, 'https://i.pinimg.com/1200x/00/d8/1a/00d81a88d38638e506c530d3a3798a3f.jpg', 3),
(13, 'Lychee Artichoke Jasmine Tea',                35000.00, 'https://i.pinimg.com/1200x/5e/63/e6/5e63e6ffe3019bd6ba9f7bad24062266.jpg', 3),

-- Matcha & Houjicha (14-19)
(14, 'Matcha Latte',                               55000.00, 'https://i.pinimg.com/736x/28/b0/7f/28b07f5c9a74fdcbc84c465cf54571a8.jpg', 4),
(15, 'Houjicha Latte',                             55000.00, 'https://i.pinimg.com/1200x/70/9e/59/709e599c84610aca9a1dbcfb233e2055.jpg', 4),
(16, 'Iced Blended Matcha',                        55000.00, 'https://i.pinimg.com/1200x/63/23/f9/6323f999dcfde756c62589d16e1df2cf.jpg', 4),
(17, 'Golden Orange Matcha',                       55000.00, 'https://i.pinimg.com/736x/52/68/d4/5268d4aeeaaf347520a221ad55604202.jpg', 4),
(18, 'Coco Houjicha',                              55000.00, 'https://i.pinimg.com/1200x/95/fd/b9/95fdb92b5ee3d408a01a9494946f091f.jpg', 4),
(19, 'Cheese Houjicha (Roasted Green Tea)',        55000.00, 'https://i.pinimg.com/736x/28/18/b3/2818b36cf9dadaf45c4a467e7dc47aa2.jpg', 4);

-- =========================
-- 3) OPTION_GROUP
-- =========================
INSERT INTO option_group (group_id, group_name, required, product_id) VALUES

-- ── Vietnamese Coffee ──────────────────────────────
(1,  'Size',        1, 1),   -- Vietnamese Black Coffee
(2,  'Ice Level',   0, 1),
(3,  'Size',        1, 2),   -- Vietnamese Milk Coffee
(4,  'Sugar Level', 0, 2),

-- ── Milk Tea ────────────────────────────────────────
(5,  'Size',        1, 3),   -- Classic Milk Tea
(6,  'Toppings',    0, 3),
(7,  'Size',        1, 4),   -- Brown Sugar Milk Tea
(8,  'Toppings',    0, 4),
(9,  'Size',        1, 5),   -- Roasted Oolong Milk Tea
(10, 'Toppings',    0, 5),
(11, 'Size',        1, 6),   -- Green Thai Milk Tea
(12, 'Toppings',    0, 6),
(13, 'Size',        1, 7),   -- Red Thai Milk Tea
(14, 'Toppings',    0, 7),

-- ── Fruit Tea ───────────────────────────────────────
(15, 'Ice Level',   0, 8),   -- Peach Tea
(16, 'Sugar Level', 0, 8),
(17, 'Ice Level',   0, 9),   -- Lemon Tea
(18, 'Sugar Level', 0, 9),
(19, 'Ice Level',   0, 10),  -- Peach, Orange, and Lemongrass Tea
(20, 'Sugar Level', 0, 10),
(21, 'Ice Level',   0, 11),  -- Longan Jasmine Tea
(22, 'Sugar Level', 0, 11),
(23, 'Ice Level',   0, 12),  -- Strawberry Jasmine Tea
(24, 'Sugar Level', 0, 12),
(25, 'Ice Level',   0, 13),  -- Lychee Artichoke Jasmine Tea
(26, 'Sugar Level', 0, 13),

-- ── Matcha & Houjicha ──────────────────────────────
(27, 'Size',        1, 14),  -- Matcha Latte
(28, 'Toppings',    0, 14),
(29, 'Size',        1, 15),  -- Houjicha Latte
(30, 'Toppings',    0, 15),
(31, 'Size',        1, 16),  -- Iced Blended Matcha
(32, 'Toppings',    0, 16),
(33, 'Size',        1, 17),  -- Golden Orange Matcha
(34, 'Toppings',    0, 17),
(35, 'Size',        1, 18),  -- Coco Houjicha
(36, 'Toppings',    0, 18),
(37, 'Size',        1, 19),  -- Cheese Houjicha (Roasted Green Tea)
(38, 'Toppings',    0, 19);

-- =========================
-- 4) OPTION
-- =========================
INSERT INTO options (option_id, option_name, option_price, group_id) VALUES

-- ── Vietnamese Black Coffee (group 1,2) ────────────
(1,  'M', 0.00,     1),
(2,  'L', 10000.00, 1),
(3,  'No Ice',     0.00, 2),
(4,  'Less Ice',   0.00, 2),
(5,  'Normal Ice', 0.00, 2),

-- ── Vietnamese Milk Coffee (group 3,4) ─────────────
(6,  'M', 0.00,     3),
(7,  'L', 10000.00, 3),
(8,  '0%',   0.00, 4),
(9,  '50%',  0.00, 4),
(10, '100%', 0.00, 4),

-- ── Classic Milk Tea (group 5,6) ───────────────────
(11, 'M', 0.00,     5),
(12, 'L', 10000.00, 5),
(13, 'Pearl',       10000.00, 6),
(14, 'Pudding',     12000.00, 6),
(15, 'Grass Jelly', 10000.00, 6),

-- ── Brown Sugar Milk Tea (group 7,8) ───────────────
(16, 'M', 0.00,     7),
(17, 'L', 10000.00, 7),
(18, 'Pearl',       10000.00, 8),
(19, 'Cheese Foam', 15000.00, 8),

-- ── Roasted Oolong Milk Tea (group 9,10) ───────────
(20, 'M', 0.00,     9),
(21, 'L', 10000.00, 9),
(22, 'Pearl',       10000.00, 10),
(23, 'Pudding',     12000.00, 10),

-- ── Green Thai Milk Tea (group 11,12) ──────────────
(24, 'M', 0.00,     11),
(25, 'L', 10000.00, 11),
(26, 'Pearl',       10000.00, 12),
(27, 'Cheese Foam', 15000.00, 12),

-- ── Red Thai Milk Tea (group 13,14) ────────────────
(28, 'M', 0.00,     13),
(29, 'L', 10000.00, 13),
(30, 'Pearl',       10000.00, 14),
(31, 'Grass Jelly', 10000.00, 14),

-- ── Peach Tea (group 15,16) ─────────────────────────
(32, 'No Ice',     0.00, 15),
(33, 'Less Ice',   0.00, 15),
(34, 'Normal Ice', 0.00, 15),
(35, '0%',   0.00, 16),
(36, '50%',  0.00, 16),
(37, '100%', 0.00, 16),

-- ── Lemon Tea (group 17,18) ─────────────────────────
(38, 'No Ice',     0.00, 17),
(39, 'Less Ice',   0.00, 17),
(40, 'Normal Ice', 0.00, 17),
(41, '0%',   0.00, 18),
(42, '50%',  0.00, 18),
(43, '100%', 0.00, 18),

-- ── Peach, Orange, and Lemongrass Tea (group 19,20) ─
(44, 'No Ice',     0.00, 19),
(45, 'Less Ice',   0.00, 19),
(46, 'Normal Ice', 0.00, 19),
(47, '0%',   0.00, 20),
(48, '50%',  0.00, 20),
(49, '100%', 0.00, 20),

-- ── Longan Jasmine Tea (group 21,22) ────────────────
(50, 'No Ice',     0.00, 21),
(51, 'Less Ice',   0.00, 21),
(52, '0%',   0.00, 22),
(53, '50%',  0.00, 22),
(54, '100%', 0.00, 22),

-- ── Strawberry Jasmine Tea (group 23,24) ────────────
(55, 'No Ice',     0.00, 23),
(56, 'Less Ice',   0.00, 23),
(57, '0%',   0.00, 24),
(58, '50%',  0.00, 24),
(59, '100%', 0.00, 24),

-- ── Lychee Artichoke Jasmine Tea (group 25,26) ──────
(60, 'No Ice',     0.00, 25),
(61, 'Less Ice',   0.00, 25),
(62, '0%',   0.00, 26),
(63, '50%',  0.00, 26),
(64, '100%', 0.00, 26),

-- ── Matcha Latte (group 27,28) ──────────────────────
(65, 'M', 0.00,     27),
(66, 'L', 10000.00, 27),
(67, 'Cheese Foam', 15000.00, 28),
(68, 'Pearl',       10000.00, 28),

-- ── Houjicha Latte (group 29,30) ────────────────────
(69, 'M', 0.00,     29),
(70, 'L', 10000.00, 29),
(71, 'Cheese Foam', 15000.00, 30),
(72, 'Pearl',       10000.00, 30),

-- ── Iced Blended Matcha (group 31,32) ───────────────
(73, 'M', 0.00,     31),
(74, 'L', 10000.00, 31),
(75, 'Cheese Foam', 15000.00, 32),
(76, 'Pudding',     12000.00, 32),

-- ── Golden Orange Matcha (group 33,34) ──────────────
(77, 'M', 0.00,     33),
(78, 'L', 10000.00, 33),
(79, 'Cheese Foam', 15000.00, 34),
(80, 'Pearl',       10000.00, 34),

-- ── Coco Houjicha (group 35,36) ─────────────────────
(81, 'M', 0.00,     35),
(82, 'L', 10000.00, 35),
(83, 'Cheese Foam', 15000.00, 36),
(84, 'Pudding',     12000.00, 36),

-- ── Cheese Houjicha (Roasted Green Tea) (group 37,38)
(85, 'M', 0.00,     37),
(86, 'L', 10000.00, 37),
(87, 'Cheese Foam', 15000.00, 38),
(88, 'Pearl',       10000.00, 38);

-- =========================
-- 5) ORDER (seed)
-- =========================
INSERT INTO orders (order_id, total_quantity, total_amount) VALUES
(1, 2, 90000.00),
(2, 3, 170000.00);

-- =========================
-- 6) ORDER_ITEM (seed)
-- =========================
INSERT INTO order_item (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 3,  1, 55000.00), -- Classic Milk Tea (Size L + Pearl)
(2, 1, 8,  1, 35000.00), -- Peach Tea

(3, 2, 14, 2, 65000.00), -- Matcha Latte (Size L + Cheese Foam)
(4, 2, 2,  1, 40000.00); -- Vietnamese Milk Coffee (Size L + 50% sugar)

-- =========================
-- 7) ORDER_ITEM_SELECTED_OPTIONS (seed)
-- =========================
INSERT INTO order_item_selected_options (order_item_id, option_id) VALUES
(1, 12), -- Classic Milk Tea: Size L (group 5)
(1, 13), -- Classic Milk Tea: Pearl (group 6)

(2, 32), -- Peach Tea: No Ice (group 15)
(2, 36), -- Peach Tea: 50% sugar (group 16)

(3, 66), -- Matcha Latte: Size L (group 27)
(3, 67), -- Matcha Latte: Cheese Foam (group 28)

(4, 7),  -- Vietnamese Milk Coffee: Size L (group 3)
(4, 9);  -- Vietnamese Milk Coffee: 50% sugar (group 4)

-- =========================
-- 8) PAYMENT (seed)
-- =========================
INSERT INTO payment (payment_id, total_price, time_payment, payment_method, order_id) VALUES
(1, 90000.00,  '2026-06-26 10:00:00', 'CASH', 1),
(2, 170000.00, '2026-06-26 10:10:00', 'QR',   2);