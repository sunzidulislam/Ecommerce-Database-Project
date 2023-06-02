
--PL/SQL


BEGIN
  INSERT INTO Product (id_product, name_product, description, customer_id, price, stock, model)
  VALUES (12, 'Product 12', 'Description', 10, 6, 'In Stock', 'Model 11');
END;
/

-- MAX quantity in a orderitem
SET SERVEROUTPUT ON
DECLARE
   max_quantity OrderItem.quantity%type;
BEGIN
   SELECT MAX(quantity) INTO max_quantity 
   FROM OrderItem;
   DBMS_OUTPUT.PUT_LINE('The max quantity is : ' || max_quantity);
 END;
/

-- The Average of all orderitem 
-- print good if av is > 2
-- print bad if av is < 2
-- print normal otherwise

DECLARE
  avg_quantity NUMBER;
BEGIN
  -- Calculate the average of all order items
  SELECT AVG(quantity) INTO avg_quantity
  FROM OrderItem;

  -- Print the corresponding message based on the average
  IF avg_quantity > 2 THEN
    DBMS_OUTPUT.PUT_LINE('Good');
  ELSIF avg_quantity < 2 THEN
    DBMS_OUTPUT.PUT_LINE('Bad');
  ELSE
    DBMS_OUTPUT.PUT_LINE('Normal');
  END IF;
END;
/


-- Count all quantity using While loop, cursor
SET SERVEROUTPUT ON
DECLARE
		total NUMBER;
		CURSOR x is select quantity from OrderItem;
	y x%rowtype;
	cnt NUMBER;
BEGIN
	select count(quantity) into total from OrderItem;
	--DBMS_OUTPUT.PUT_LINE(total);
	open x;
	cnt := 0;
	while x%rowcount < total
	loop
		fetch x into y;
		cnt := cnt + y.quantity;
	end loop;
	close x;
	DBMS_OUTPUT.PUT_LINE('Total Quantity : ' || cnt);
Exception
WHEN others THEN
DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/

-- Procedure to count all quantity using FOR loop and cursor
SET SERVEROUTPUT ON
CREATE or Replace procedure getTOTALQUANTITY is
		total NUMBER;
		CURSOR x is select quantity from OrderItem;
	y x%rowtype;
	cnt NUMBER;
BEGIN
	select count(quantity) into total from OrderItem;
	--DBMS_OUTPUT.PUT_LINE(total);
	open x;
	cnt := 0;
	FOR i in 1..total
	Loop
		fetch x into y;
		cnt := cnt + y.quantity;
	end loop;
	close x;
	DBMS_OUTPUT.PUT_LINE('Total Quantity : ' || cnt);
Exception
WHEN others THEN
DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/

-- Function to count all Quantity using FOR loop and cursor with return
SET SERVEROUTPUT ON
CREATE or Replace Function getTQ RETURN NUMBER is
		total NUMBER;
		CURSOR x is select quantity from OrderItem;
	y x%rowtype;
	cnt NUMBER;
BEGIN
	select count(quantity) into total from OrderItem;
	--DBMS_OUTPUT.PUT_LINE(total);
	open x;
	cnt := 0;
	FOR i in 1..total
	Loop
		fetch x into y;
		cnt := cnt + y.quantity;
	end loop;
	close x;
	RETURN cnt;
Exception
WHEN others THEN
DBMS_OUTPUT.PUT_LINE (SQLERRM);
END;
/

--PL/SQL Function to Calculate Average Quantity of Order Items
CREATE OR REPLACE FUNCTION calculate_avg_quantity
  RETURN NUMBER
AS
  avg_quantity NUMBER;
BEGIN
  -- Calculate the average of all order items
  SELECT AVG(quantity) INTO avg_quantity
  FROM OrderItem;

  -- Return the average quantity
  RETURN avg_quantity;
END;
/

--PL/SQL Function to Determine Quality Status Based on Average Quantity
CREATE OR REPLACE FUNCTION get_quality_status
  RETURN VARCHAR2
AS
  avg_quantity NUMBER;
  status VARCHAR2(20);
BEGIN
  -- Call the calculate_avg_quantity function to get the average quantity
  avg_quantity := calculate_avg_quantity();

  -- Determine the quality status based on the average quantity
  IF avg_quantity > 2 THEN
    status := 'Good';
  ELSIF avg_quantity < 2 THEN
    status := 'Bad';
  ELSE
    status := 'Normal';
  END IF;

  -- Return the quality status
  RETURN status;
END;
/

DECLARE
  quality_status VARCHAR2(20);
BEGIN
  -- Call the get_quality_status function
  quality_status := get_quality_status();

  -- Print the quality status
  DBMS_OUTPUT.PUT_LINE('Quality Status: ' || quality_status);
END;
/

--PL/SQL Loop to Calculate Average Quantity of Order Items
DECLARE
  v_total_quantity NUMBER := 0;
  v_count NUMBER := 0;
  v_average NUMBER := 0;
BEGIN
  -- Loop through all order items and calculate the total quantity
  FOR order_item IN (SELECT quantity FROM OrderItem)
  LOOP
    v_total_quantity := v_total_quantity + order_item.quantity;
    v_count := v_count + 1;
  END LOOP;

  -- Calculate the average quantity
  IF v_count > 0 THEN
    v_average := v_total_quantity / v_count;
  END IF;

  -- Print the average quantity
  DBMS_OUTPUT.PUT_LINE('Average Quantity: ' || v_average);
END;
/

--PL/SQL Loop to Print Product Names
DECLARE
  v_product_name Product.name_product%TYPE;
BEGIN
  -- Loop through all products and print their names
  FOR product IN (SELECT name_product FROM Product)
  LOOP
    v_product_name := product.name_product;
    DBMS_OUTPUT.PUT_LINE('Product Name: ' || v_product_name);
  END LOOP;
END;
/















