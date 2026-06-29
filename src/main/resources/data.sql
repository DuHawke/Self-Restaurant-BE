-- =========================
-- 1) CATEGORY
-- =========================
INSERT INTO category (category_id, category_name, category_url) VALUES
(1, 'Vietnamese Coffee', 'https://i.pinimg.com/1200x/81/72/60/81726082c6d0780cb89ef2d45a02684d.jpg'),
(2, 'Milk Tea',          'https://i.pinimg.com/1200x/bd/f6/65/bdf665afa503a372c02d1480388954dc.jpg'),
(3, 'Fruit Tea',         'https://i.pinimg.com/1200x/07/64/a6/0764a653192a11d809a6f7849bf28e84.jpg'),
(4, 'Matcha & Houjicha', 'https://i.pinimg.com/736x/d2/7f/8b/d27f8b5bd7955eee2446a0b3447aeafa.jpg');

-- =========================
-- 2) PRODUCT
-- =========================
INSERT INTO product (product_id, product_name, product_price, product_url, category_id) VALUES
(1, 'Vietnamese Black Coffee', 30000.00, 'https://i.pinimg.com/736x/fa/21/eb/fa21eb28c29f08f40bd7f44e9d21f27d.jpg', 1),
(2, 'Vietnamese Milk Coffee',  35000.00, 'https://i.pinimg.com/1200x/ea/b5/1d/eab51d648190226b680df8bb4ff08b4a.jpg', 1),

(3, 'Classic Milk Tea',        45000.00, 'https://i.pinimg.com/736x/3b/1b/77/3b1b77d67d2b643ad36ebd29170df649.jpg', 2),
(4, 'Brown Sugar Milk Tea',    50000.00, 'https://i.pinimg.com/736x/1a/83/3f/1a833f1bf636f9034328b036476fd59c.jpg', 2),
(5, 'Roasted Oolong Milk Tea',    50000.00, 'https://i.pinimg.com/1200x/9c/84/8e/9c848ed2eb2b43fd82147879750f80d2.jpg', 2),
(6, 'Green Thai Milk Tea',    50000.00, 'https://i.pinimg.com/736x/1a/83/3f/1a833f1bf636f9034328b036476fd59c.jpg', 2),
(7, 'Red Thai Milk Tea',    50000.00, 'https://i.pinimg.com/736x/3b/1b/77/3b1b77d67d2b643ad36ebd29170df649.jpg', 2),

(8, 'Peach Tea',               40000.00, 'https://i.pinimg.com/736x/13/29/2f/13292f0a2609c317a663c29128414934.jpg', 3),
(9, 'Lemon Tea',               35000.00, 'https://i.pinimg.com/1200x/01/6c/44/016c440dafbfaff46b8ebdf5071bd539.jpg', 3),
(10, 'Peach, Orange, and Lemongrass Tea',               35000.00, 'https://i.pinimg.com/736x/13/29/2f/13292f0a2609c317a663c29128414934.jpg', 3),
(11, 'Longan Jasmine Tea',               35000.00, 'https://i.pinimg.com/1200x/01/6c/44/016c440dafbfaff46b8ebdf5071bd539.jpg', 3),
(12, 'Strawberry Jasmine Tea',               35000.00, 'https://i.pinimg.com/1200x/00/d8/1a/00d81a88d38638e506c530d3a3798a3f.jpg', 3),
(13, 'Lychee Artichoke Jasmine Tea',               35000.00, 'https://i.pinimg.com/1200x/5e/63/e6/5e63e6ffe3019bd6ba9f7bad24062266.jpg', 3),

(14, 'Matcha Latte',            55000.00, 'https://i.pinimg.com/736x/28/b0/7f/28b07f5c9a74fdcbc84c465cf54571a8.jpg', 4),
(15, 'Houjicha Latte',          55000.00, 'https://i.pinimg.com/1200x/70/9e/59/709e599c84610aca9a1dbcfb233e2055.jpg', 4),;
(16, 'Iced Blended Matcha',          55000.00, 'https://i.pinimg.com/1200x/63/23/f9/6323f999dcfde756c62589d16e1df2cf.jpg', 4),;
(17, 'Golden Orange Matcha',          55000.00, 'https://i.pinimg.com/736x/52/68/d4/5268d4aeeaaf347520a221ad55604202.jpg', 4),;
(18, 'Coco Houjicha',          55000.00, 'https://i.pinimg.com/1200x/95/fd/b9/95fdb92b5ee3d408a01a9494946f091f.jpg', 4),;
(19, 'Cheese Houjicha (Roasted Green Tea)',          55000.00, 'https://i.pinimg.com/736x/28/18/b3/2818b36cf9dadaf45c4a467e7dc47aa2.jpg', 4);

-- =========================
-- 3) OPTION_GROUP
-- =========================
INSERT INTO option_group (group_id, group_name, required, product_id) VALUES
-- Coffee
(1, 'Size',      1, 1),
(2, 'Ice Level', 0, 1),

(3, 'Size',        1, 2),
(4, 'Sugar Level', 0, 2),

-- Milk tea
(5, 'Size',     1, 3),
(6, 'Toppings', 0, 3),

(7, 'Size',     1, 4),
(8, 'Toppings', 0, 4),

-- Fruit tea
(9,  'Ice Level',   0, 5),
(10, 'Sugar Level', 0, 5),

(11, 'Ice Level', 0, 6),

-- Matcha
(12, 'Size',     1, 7),
(13, 'Toppings', 0, 7),

(14, 'Size', 1, 8);

-- =========================
-- 4) OPTION
-- =========================
INSERT INTO options (option_id, option_name, option_price, group_id) VALUES

-- Size group 1
(1, 'M', 0.00,     1),
(2, 'L', 10000.00, 1),

-- Ice level
(3, 'No Ice',     0.00, 2),
(4, 'Less Ice',   0.00, 2),
(5, 'Normal Ice', 0.00, 2),

-- Size group 3
(6, 'M', 0.00,     3),
(7, 'L', 10000.00, 3),

-- Sugar level
(8,  '0%',   0.00, 4),
(9,  '50%',  0.00, 4),
(10, '100%', 0.00, 4),

-- Milk tea size
(11, 'M', 0.00,     5),
(12, 'L', 10000.00, 5),

-- Toppings
(13, 'Pearl',       10000.00, 6),
(14, 'Pudding',     12000.00, 6),
(15, 'Grass Jelly', 10000.00, 6),

(16, 'Pearl',       10000.00, 8),
(17, 'Cheese Foam', 15000.00, 8),

-- Fruit tea
(18, 'No Ice',     0.00, 9),
(19, 'Less Ice',   0.00, 9),
(20, 'Normal Ice', 0.00, 9),

(21, '0%',   0.00, 10),
(22, '50%',  0.00, 10),
(23, '100%', 0.00, 10),

(24, 'No Ice',   0.00, 11),
(25, 'Less Ice', 0.00, 11),

-- Matcha
(26, 'M', 0.00,     12),
(27, 'L', 10000.00, 12),

(28, 'Cheese Foam', 15000.00, 13),
(29, 'Pearl',       10000.00, 13),

(30, 'M', 0.00,     14),
(31, 'L', 10000.00, 14);

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
(1, 1, 3, 1, 55000.00),
(2, 1, 5, 1, 35000.00),

(3, 2, 7, 2, 65000.00),
(4, 2, 2, 1, 40000.00);

-- =========================
-- 7) ORDER_ITEM_SELECTED_OPTIONS (seed)
-- =========================
INSERT INTO order_item_selected_options (order_item_id, option_id) VALUES
(1, 12), -- Classic Milk Tea L
(1, 13), -- Pearl

(2, 18), -- No Ice
(2, 22), -- 50% sugar

(3, 27), -- Matcha L
(3, 28), -- Cheese Foam

(4, 7),  -- Milk Coffee L
(4, 9);  -- 50% sugar

-- =========================
-- 8) PAYMENT (seed)
-- =========================
INSERT INTO payment (payment_id, total_price, time_payment, payment_method, order_id) VALUES
(1, 90000.00,  '2026-06-26 10:00:00', 'CASH', 1),
(2, 170000.00, '2026-06-26 10:10:00', 'QR',   2);