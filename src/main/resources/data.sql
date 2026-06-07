-- =========================
-- 1) CATEGORY
-- =========================
INSERT INTO category (category_id, category_name, category_url) VALUES
(1, 'Burger', 'burger'),
(2, 'Chicken', 'chicken'),
(3, 'Drink', 'drink');

-- =========================
-- 2) PRODUCT
-- =========================
INSERT INTO product (product_id, product_name, product_price, product_url, category_id) VALUES
(1, 'Beef Burger', 50000.00, 'beef-burger', 1),
(2, 'Cheese Burger', 60000.00, 'cheese-burger', 1),
(3, 'Fried Chicken', 70000.00, 'fried-chicken', 2),
(4, 'Spicy Chicken', 75000.00, 'spicy-chicken', 2),
(5, 'Coca Cola', 15000.00, 'coca-cola', 3),
(6, 'Orange Juice', 20000.00, 'orange-juice', 3);

-- =========================
-- 3) OPTION_GROUP
-- =========================
INSERT INTO option_group (group_id, group_name, required, product_id) VALUES
(1, 'Size', 1, 1),
(2, 'Add-ons', 0, 1),
(3, 'Size', 1, 2),
(4, 'Spice Level', 1, 4),
(5, 'Ice Level', 0, 5),
(6, 'Toppings', 0, 3);

-- =========================
-- 4) OPTION
-- =========================
INSERT INTO options (option_id, option_name, option_price, group_id) VALUES
(1, 'Small', 0.00, 1),
(2, 'Medium', 10000.00, 1),
(3, 'Large', 15000.00, 1),

(4, 'Cheese', 10000.00, 2),
(5, 'Bacon', 15000.00, 2),
(6, 'Egg', 12000.00, 2),

(7, 'Small', 0.00, 3),
(8, 'Medium', 10000.00, 3),
(9, 'Large', 15000.00, 3),

(10, 'Mild', 0.00, 4),
(11, 'Normal', 0.00, 4),
(12, 'Hot', 5000.00, 4),

(13, 'No Ice', 0.00, 5),
(14, 'Less Ice', 0.00, 5),
(15, 'Normal Ice', 0.00, 5),

(16, 'Ketchup', 2000.00, 6),
(17, 'Mayo', 2000.00, 6),
(18, 'Pepper', 3000.00, 6);

-- =========================
-- 5) ORDER
-- =========================
INSERT INTO `orders` (order_id, total_quantity, total_amount) VALUES
(1, 3, 100000.00),
(2, 3, 222000.00);

-- =========================
-- 6) ORDER_ITEM
-- =========================
INSERT INTO order_item (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 50000.00),
(2, 1, 5, 2, 15000.00),
(3, 2, 3, 1, 70000.00),
(4, 2, 2, 2, 60000.00);

-- =========================
-- 7) ORDER_ITEM_SELECTED_OPTIONS
-- =========================
INSERT INTO order_item_selected_options (order_item_id, option_id) VALUES
(1, 2),   -- Beef Burger: Medium
(1, 4),   -- Beef Burger: Cheese
(2, 13),  -- Coca Cola: No Ice

(3, 17),  -- Fried Chicken: Mayo
(3, 18),  -- Fried Chicken: Pepper

(4, 9),   -- Cheese Burger: Large
(4, 5);   -- Cheese Burger: Bacon

-- =========================
-- 8) PAYMENT
-- =========================
INSERT INTO payment (payment_id, total_price, time_payment, payment_method, order_id) VALUES
(1, 100000.00, '2026-06-07 10:00:00', 'CASH', 1),
(2, 222000.00, '2026-06-07 10:05:00', 'QR', 2);