create database hh;
use hh;

Delimiter $$

delimiter $$
CREATE FUNCTION add_numbers (num1 INT, num2 INT)
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE sum INT;
    SET sum = num1 + num2;
    RETURN sum;
END$$
delimiter ;

SELECT add_numbers(5, 10); 

---------------------------------------------------------------------------------------------

delimiter &&
CREATE FUNCTION sub_numbers (num1 INT, num2 INT)
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE sub INT;
    SET sub = num1 - num2;
    RETURN sub;
END &&
delimiter ;

SELECT sub_numbers(5, 10);

-----------------------------------------------------------------------------------

delimiter //
CREATE FUNCTION   SimpleInterst (amount INT, rate INT, time INT)
RETURNS INT DETERMINISTIC
BEGIN
    DECLARE si INT;
    SET si = amount * rate*time/100;
    RETURN si;
END//
delimiter ;

SELECT SimpleInterst(200, 3000,15.52);
    
-------------------------------------------------------------------------------
    