-- On March 5th at 12:03 pm there was a dine-in order for a large thin crust pizza with Regular Cheese
-- (extra), Pepperoni, and Sausage (Price: 13.50, Cost: 3.68 ). They used the “Lunch Special Large” discount
-- They sat at Table 14

SELECT
@dinein_cid := CustomerID
FROM customer
WHERE
    CustomerFName = 'Dinein'
    AND CustomerLName = 'Customer';
SET @o_cp = 3.68;
SET @o_sp = 13.50;
SET @o_time = "2023-03-05 12:03:00";
SET @o_type = "dinein";
INSERT INTO orders(OrderType, OrderTime, OrderSP, OrderCP, OrderCustomerID)
VALUES (@o_type, @o_time, @o_sp, @o_cp, @dinein_cid);

SELECT
@o_id
FROM order
WHERE
    OrderType=@o_type
    AND OrderTime=@o_time
    AND OrderSP=@o_sp
    AND OrderCP=o_cp
    AND OrderCustomerID=@dinein_cid;

INSERT INTO dinein(DineinOrderID, DineinSeat)
VALUES(@o_id, 14);

SET @p_crust = 'Thin';
SET @p_size = 'large';
INSERT INTO pizza(PizzaBaseSize, PizzaBaseCrust, PizzaState, PizzaSP, PizzaCP, PizzaOrderID)
VALUES(@p_size, @p_crust, '----------', @o_sp, @o_cp, @o_id);

SET @d_name = 'Lunch Special Large';
SELECT @d_id := DiscountID
FROM discount WHERE DiscountName = @d_name;

-- On March 3rd at 12:05 pm there was a dine-in order At table 4. They ordered a medium pan pizza with
-- Feta Cheese, Black Olives, Roma Tomatoes, Mushrooms and Banana Peppers (P: 10.60, C: 3.23). They get
-- the “Lunch Special Medium”and the “Specialty Pizza” discounts. They also ordered a small original crust
-- pizza with Regular Cheese, Chicken and Banana Peppers (P: 6.75, C: 1.40)
SELECT
@dinein_cid := CustomerID
FROM customer
WHERE
    CustomerFName = 'Dinein'
    AND CustomerLName = 'Customer';


-- On March 3rd at 9:30 pm Ellis Beck places an order for pickup of 6 large original crust pizzas with Regular
-- Cheese and Pepperoni (Price: 10.75, Cost:3.30 each). Ellis’ phone number is 864-254-5861.
SET @c_fname = 'Ellis';
SET @c_lname = 'Beck';
SET @c_phone = '864-254-5861';

INSERT INTO customer (CustomerFName, CustomerLName, CustomerPhone)
VALUES (@c_fname, @c_lname, @c_phone);

SELECT
@c_id := CustomerID
FROM customer
WHERE
    CustomerFName=@c_fname
    AND CustomerLName=@c_lname
    AND CustomerPhone=@c_phone;


-- On March 5th at 7:11 pm there was a delivery order made by Ellis Beck for 1 x-large pepperoni and
-- Sausage pizza (P 14.50, C 5.59), one x-large pizza with Ham (extra) and Pineapple (extra) pizza (P: 17, C:
-- 5.59), and one x-large Jalapeno and Bacon pizza (P: 14.00, C: 5.68). All the pizzas have the Four Cheese
-- Blend on it and are original crust. The order has the “Gameday Special” discount applied to it, and the
-- ham and pineapple pizza has the “Specialty Pizza” discount applied to it. The pizzas were delivered to 115
-- Party Blvd, Anderson SC 29621. His phone number is the same as before.
SET @c_fname = 'Ellis';
SET @c_lname = 'Beck';
SET @c_phone = '864-232-8944';
INSERT INTO customer(CustomerFName, CustomerLName, CustomerPhone)
VALUES (@c_fname, @c_lname, @c_phone);


-- On March 2nd at 5:30 pm Kurt McKinney placed an order for pickup for an x-large pizza with Green Pepper,
-- Onion, Roma Tomatoes, Mushrooms, and Black Olives on it. He wants the Goat Cheese on it, and a Gluten
-- Free Crust (P: 16.85, C:7.85). The “Specialty Pizza” discount is applied to the pizza. Kurt’s phone number is
-- 864-474-9953.
SET @c_fname = 'Kurt';
SET @c_lname = 'McKinney';
SET @c_phone = '864-474-9953';
INSERT INTO customer(CustomerFName, CustomerLName, CustomerPhone)
VALUES (@c_fname, @c_lname, @c_phone);


-- On March 2nd at 6:17 pm Calvin Sanders places on order for delivery of one large pizza with Chicken,
-- Green Peppers, Onions, and Mushrooms. He wants the Four Cheese Blend (extra) and thin crust (P:
-- 13.25, C: 3.20). The pizza was delivered to 6745 Wessex St Anderson SC 29621. Calvin’s phone number is
-- 864-232-8944.
SET @c_fname = 'Calvin';
SET @c_lname = 'Sanders';
SET @c_phone = '864-232-8944';
INSERT INTO customer(CustomerFName, CustomerLName, CustomerPhone)
VALUES (@c_fname, @c_lname, @c_phone);


-- On March 6th at 8:32 pm Lance Benton ordered two large thin crust pizzas. One had the Four Cheese
-- Blend on it (extra) (P: 12, C: 3.75), the other was Regular Cheese and Pepperoni (extra) (P:12, C: 2.55). He
-- used the “Employee” discount on his order. He had them delivered to 8879 Suburban Home, Anderson,
-- SC 29621. His phone number is 864-878-5679.
SET @c_fname = 'Lance';
SET @c_lname = 'Benton';
SET @c_phone = '864-878-5679';
INSERT INTO customer (CustomerFName, CustomerLName, CustomerPhone)
VALUES (@c_fname, @c_lname, @c_phone);