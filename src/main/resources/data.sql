-- =========================
-- 1) CATEGORY
-- =========================
INSERT INTO category (category_id, category_name, category_url) VALUES
(1, 'Vietnamese Coffee', 'vietnamese-coffee'),
(2, 'Milk Tea', 'milk-tea'),
(3, 'Fruit Tea', 'fruit-tea'),
(4, 'Matcha & Houjicha', 'matcha-houjicha');

-- =========================
-- 2) PRODUCT
-- =========================
INSERT INTO product (product_id, product_name, product_price, product_url, category_id) VALUES
(1, 'Vietnamese Black Coffee', 30000.00, 'black-coffee', 1),
(2, 'Vietnamese Milk Coffee', 35000.00, 'milk-coffee', 1),

(3, 'Classic Milk Tea', 45000.00, 'classic-milk-tea', 2),
(4, 'Brown Sugar Milk Tea', 50000.00, 'brown-sugar-milk-tea', 2),

(5, 'Peach Tea', 40000.00, 'peach-tea', 3),
(6, 'Lemon Tea', 35000.00, 'lemon-tea', 3),

(7, 'Matcha Latte', 55000.00, 'matcha-latte', 4),
(8, 'Houjicha Latte', 55000.00, 'houjicha-latte', 4);

-- =========================
-- 3) OPTION_GROUP
-- =========================
INSERT INTO option_group (group_id, group_name, required, product_id) VALUES

-- Coffee
(1, 'Size', 1, 1),
(2, 'Ice Level', 0, 1),

(3, 'Size', 1, 2),
(4, 'Sugar Level', 0, 2),

-- Milk tea
(5, 'Size', 1, 3),
(6, 'Toppings', 0, 3),

(7, 'Size', 1, 4),
(8, 'Toppings', 0, 4),

-- Fruit tea
(9, 'Ice Level', 0, 5),
(10, 'Sugar Level', 0, 5),

(11, 'Ice Level', 0, 6),

-- Matcha
(12, 'Size', 1, 7),
(13, 'Toppings', 0, 7),

(14, 'Size', 1, 8);

-- =========================
-- 4) OPTION
-- =========================
INSERT INTO options (option_id, option_name, option_price, group_id) VALUES

-- Size group 1
(1, 'M', 0.00, 1),
(2, 'L', 10000.00, 1),

-- Ice level
(3, 'No Ice', 0.00, 2),
(4, 'Less Ice', 0.00, 2),
(5, 'Normal Ice', 0.00, 2),

-- Size group 3
(6, 'M', 0.00, 3),
(7, 'L', 10000.00, 3),

-- Sugar level
(8, '0%', 0.00, 4),
(9, '50%', 0.00, 4),
(10, '100%', 0.00, 4),

-- Milk tea size
(11, 'M', 0.00, 5),
(12, 'L', 10000.00, 5),

-- Toppings
(13, 'Pearl', 10000.00, 6),
(14, 'Pudding', 12000.00, 6),
(15, 'Grass Jelly', 10000.00, 6),

(16, 'Pearl', 10000.00, 8),
(17, 'Cheese Foam', 15000.00, 8),

-- Fruit tea
(18, 'No Ice', 0.00, 9),
(19, 'Less Ice', 0.00, 9),
(20, 'Normal Ice', 0.00, 9),

(21, '0%', 0.00, 10),
(22, '50%', 0.00, 10),
(23, '100%', 0.00, 10),

(24, 'No Ice', 0.00, 11),
(25, 'Less Ice', 0.00, 11),

-- Matcha
(26, 'M', 0.00, 12),
(27, 'L', 10000.00, 12),

(28, 'Cheese Foam', 15000.00, 13),
(29, 'Pearl', 10000.00, 13),

(30, 'M', 0.00, 14),
(31, 'L', 10000.00, 14);

-- =========================
-- 5) ORDER
-- =========================
INSERT INTO orders (order_id, total_quantity, total_amount) VALUES
(1, 2, 90000.00),
(2, 3, 170000.00);

-- =========================
-- 6) ORDER_ITEM
-- =========================
INSERT INTO order_item (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 3, 1, 55000.00),
(2, 1, 5, 1, 35000.00),

(3, 2, 7, 2, 65000.00),
(4, 2, 2, 1, 40000.00);

-- =========================
-- 7) ORDER_ITEM_SELECTED_OPTIONS
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
-- 8) PAYMENT
-- =========================
INSERT INTO payment (payment_id, total_price, time_payment, payment_method, order_id) VALUES
(1, 90000.00, '2026-06-26 10:00:00', 'CASH', 1),
(2, 170000.00, '2026-06-26 10:10:00', 'QR', 2);