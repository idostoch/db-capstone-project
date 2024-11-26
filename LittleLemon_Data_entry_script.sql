INSERT INTO `littlelemondb`.`menu` (`MenuItemID`, `Category`, `ItemName`, `Price`) VALUES
(1, 'Appetizer', 'Bruschetta', 8.99),
(2, 'Main Course', 'Margherita Pizza', 12.99),
(3, 'Dessert', 'Tiramisu', 6.99),
(4, 'Appetizer', 'Garlic Bread', 5.49),
(5, 'Main Course', 'Spaghetti Carbonara', 14.99),
(6, 'Dessert', 'Panna Cotta', 7.49),
(7, 'Appetizer', 'Caprese Salad', 9.99),
(8, 'Main Course', 'Lasagna', 13.99),
(9, 'Dessert', 'Gelato', 4.99),
(10, 'Appetizer', 'Stuffed Mushrooms', 6.49);



USE littlelemondb;
ALTER TABLE customer MODIFY Phone VARCHAR(100);

ALTER TABLE delivery CHANGE DelivdeyDate DeliveryDate DATE;




INSERT INTO `littlelemondb`.`delivery` (`DeliveryID`, `DeliveryDate`, `Status`) VALUES
(1, '2024-11-01', 'Delivered'),
(2, '2024-11-02', 'Pending'),
(3, '2024-11-03', 'Delivered'),
(4, '2024-11-04', 'Cancelled'),
(5, '2024-11-05', 'Pending'),
(6, '2024-11-06', 'Delivered'),
(7, '2024-11-07', 'In Transit'),
(8, '2024-11-08', 'Delivered'),
(9, '2024-11-09', 'Pending'),
(10, '2024-11-10', 'Delivered');

ALTER TABLE orders MODIFY TotalCost Decimal(5,2);

INSERT INTO `littlelemondb`.`orders` (`OrderID`, `OrderDate`, `Quantity`, `TotalCost`, `MenuItemID`, `DeliveryID`) VALUES
(1, '2024-11-01', 2, 29.98, 1, 1),
(2, '2024-11-02', 1, 12.99, 2, 2),
(3, '2024-11-03', 3, 38.97, 3, 3),
(4, '2024-11-04', 1, 8.99, 4, 4),
(5, '2024-11-05', 2, 29.98, 5, 5),
(6, '2024-11-06', 1, 7.49, 6, 6),
(7, '2024-11-07', 2, 19.98, 7, 7),
(8, '2024-11-08', 1, 13.99, 8, 8),
(9, '2024-11-09', 3, 14.97, 9, 9),
(10, '2024-11-10', 1, 6.49, 10, 10);

INSERT INTO `littlelemondb`.`customer` (`CustomerID`, `FullName`, `Phone`, `Address`, `Email`, `OrderID`) VALUES
(1, 'John Doe', '123-456-7890', '123 Main St, Springfield', 'john.doe@example.com', 10),
(2, 'Jane Smith', '234-567-8901', '456 Elm St, Springfield', 'jane.smith@example.com', 9),
(3, 'Alice Johnson', '345-678-9012', '789 Oak St, Springfield', 'alice.johnson@example.com', 8),
(4, 'Bob Brown', '456-789-0123', '101 Pine St, Springfield', 'bob.brown@example.com', 7),
(5, 'Charlie Davis', '567-890-1234', '202 Maple St, Springfield', 'charlie.davis@example.com', 6),
(6, 'Diana Evans', '678-901-2345', '303 Cedar St, Springfield', 'diana.evans@example.com', 5),
(7, 'Ethan Foster', '789-012-3456', '404 Birch St, Springfield', 'ethan.foster@example.com', 4),
(8, 'Fiona Green', '890-123-4567', '505 Walnut St, Springfield', 'fiona.green@example.com', 3),
(9, 'George Harris', '901-234-5678', '606 Chestnut St, Springfield', 'george.harris@example.com', 2),
(10, 'Hannah White', '012-345-6789', '707 Ash St, Springfield', 'hannah.white@example.com', 1);

INSERT INTO `littlelemondb`.`bookings` (`BookingsID`, `Date`, `TableNumber`, `CustomerID`) VALUES
(1, '2024-11-01', 5, 1),
(2, '2024-11-02', 3, 2),
(3, '2024-11-03', 8, 3),
(4, '2024-11-04', 2, 4),
(5, '2024-11-05', 7, 5),
(6, '2024-11-06', 1, 6),
(7, '2024-11-07', 4, 7),
(8, '2024-11-08', 6, 8),
(9, '2024-11-09', 9, 9),
(10, '2024-11-10', 10, 10);

INSERT INTO `littlelemondb`.`employee` (`EmployeeID`, `FullName`, `Position`, `Salary`, `BookingsID`) VALUES
(1, 'Emma Johnson', 'Manager', 60000, 1),
(2, 'Liam Smith', 'Chef', 50000, 2),
(3, 'Olivia Brown', 'Waiter', 30000, 3),
(4, 'Noah Davis', 'Bartender', 35000, 4),
(5, 'Ava Wilson', 'Hostess', 28000, 5),
(6, 'Sophia Martinez', 'Sous Chef', 45000, 6),
(7, 'Mason Anderson', 'Dishwasher', 25000, 7),
(8, 'Isabella Thomas', 'Waiter', 30000, 8),
(9, 'James Jackson', 'Chef', 50000, 9),
(10, 'Mia White', 'Manager', 60000, 10);



