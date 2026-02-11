-- 1. Create the orders table
CREATE OR REPLACE TABLE `your_project.your_dataset.orders` (
  order_id STRING,
  order_date DATE,
  customer_id STRING,
  product_id STRING,
  quantity INT64,
  unit_price NUMERIC,
  order_amount NUMERIC,
  order_status STRING
);

-- 2. Insert 20 sample records
INSERT INTO `your_project.your_dataset.orders`
(order_id, order_date, customer_id, product_id, quantity, unit_price, order_amount, order_status)
VALUES
('ORD001', '2026-01-01', 'C001', 'P1001', 2, 120.50, 241.00, 'Completed'),
('ORD002', '2026-01-02', 'C002', 'P1002', 1, 89.90, 89.90, 'Completed'),
('ORD003', '2026-01-03', 'C003', 'P1003', 3, 45.00, 135.00, 'Completed'),
('ORD004', '2026-01-04', 'C004', 'P1001', 5, 120.50, 602.50, 'Pending'),
('ORD005', '2026-01-05', 'C005', 'P1005', 2, 210.00, 420.00, 'Completed'),
('ORD006', '2026-01-06', 'C006', 'P1004', 1, 150.75, 150.75, 'Cancelled'),
('ORD007', '2026-01-07', 'C007', 'P1003', 4, 45.00, 180.00, 'Completed'),
('ORD008', '2026-01-08', 'C008', 'P1007', 2, 300.00, 600.00, 'Pending'),
('ORD009', '2026-01-09', 'C009', 'P1002', 3, 89.90, 269.70, 'Completed'),
('ORD010', '2026-01-10', 'C001', 'P1006', 1, 500.00, 500.00, 'Completed'),
('ORD011', '2026-01-11', 'C002', 'P1003', 2, 45.00, 90.00, 'Completed'),
('ORD012', '2026-01-12', 'C003', 'P1007', 1, 300.00, 300.00, 'Completed'),
('ORD013', '2026-01-13', 'C004', 'P1004', 2, 150.75, 301.50, 'Completed'),
('ORD014', '2026-01-14', 'C005', 'P1001', 3, 120.50, 361.50, 'Pending'),
('ORD015', '2026-01-15', 'C006', 'P1002', 2, 89.90, 179.80, 'Completed'),
('ORD016', '2026-01-16', 'C007', 'P1006', 1, 500.00, 500.00, 'Completed'),
('ORD017', '2026-01-17', 'C008', 'P1005', 4, 210.00, 840.00, 'Completed'),
('ORD018', '2026-01-18', 'C009', 'P1003', 2, 45.00, 90.00, 'Completed'),
('ORD019', '2026-01-19', 'C010', 'P1004', 1, 150.75, 150.75, 'Completed'),
('ORD020', '2026-01-20', 'C011', 'P1007', 3, 300.00, 900.00, 'Pending');
