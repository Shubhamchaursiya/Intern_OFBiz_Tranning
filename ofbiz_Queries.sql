1- List all columns of OrderItem table.

Query- show columns from order_item;
+--------------------+---------------+------+-----+---------+-------+
| Field              | Type          | Null | Key | Default | Extra |
+--------------------+---------------+------+-----+---------+-------+
| ORDER_ID           | varchar(40)   | NO   | PRI | NULL    |       |
| ORDER_ITEM_SEQ_ID  | varchar(40)   | NO   | PRI | NULL    |       |
| ORDER_ITEM_TYPE_ID | varchar(40)   | YES  |     | NULL    |       |
| SHIP_GROUP_SEQ_ID  | varchar(40)   | YES  |     | NULL    |       |
| PRODUCT_ID         | varchar(40)   | YES  |     | NULL    |       |
| ITEM_DESCRIPTION   | varchar(255)  | YES  |     | NULL    |       |
| QUANTITY           | decimal(26,6) | YES  |     | NULL    |       |
| UNIT_AMOUNT        | decimal(25,5) | YES  |     | NULL    |       |
+--------------------+---------------+------+-----+---------+-------+

***************************************************************************************************************************************************************************************************************************

2- List the Person details for all females.

Query- select * from person where gender='F';
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo3 | Lily       | J           | Brown     | F      | 1998-06-11 | EmpsPartTime              | Software Engineer |
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EmpsFullTime              | Software Engineer |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+

***************************************************************************************************************************************************************************************************************************

3- List the OrderHeader table contents so that the latest placed order appears in the top.

Query-select * from order_header order by ORDER_DATE desc;
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1064     | SALES_ORDER   | Test Order 7 | 2022-01-09 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     48.8700 |
| 1102     | SALES_ORDER   | Test Order 3 | 2021-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
| 1153     | SALES_ORDER   | Test Order 4 | 2020-04-21 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     31.6400 |
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
| 1052     | SALES_ORDER   | Test Order 2 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     16.3200 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     75.9300 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     87.0700 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+

***************************************************************************************************************************************************************************************************************************

4- Output the count of OrderItem Ship Group for each shipmentMethodTypeId.

Query-select SHIPMENT_METHOD_ENUM_ID, count(*) as Total from order_item_ship_group group by SHIPMENT_METHOD_ENUM_ID;
+-------------------------+-------+
| SHIPMENT_METHOD_ENUM_ID | Total |
+-------------------------+-------+
| GROUND                  |    12 |
+-------------------------+-------+

***************************************************************************************************************************************************************************************************************************

5- List the OrderHeader details with grandTotal greater than 50.

Query- SELECT * FROM ofbiztraining.order_header where GRAND_TOTAL>50;
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     87.0700 |
| 1102     | SALES_ORDER   | Test Order 3 | 2021-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     75.9300 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+

***************************************************************************************************************************************************************************************************************************

6- List the Person details who have not placed any orders.

Query-SELECT * FROM person WHERE PARTY_ID NOT IN (SELECT CUSTOMER_PARTY_ID FROM order_item_ship_group);
+-----------+------------+-------------+-----------+--------+------------+---------------------------+------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+------------+
| CustDemo2 | Jack       | John        | Smith     | M      | 1999-09-14 | EmpsFullTime              | Doctor     |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+------------+


***************************************************************************************************************************************************************************************************************************

7- List the Person details whose first name starts with ‘J’ and third character is ’h’.

Query- select * from person where FIRST_NAME like 'J_h%';
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EmpsFullTime              | Software Engineer |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+

***************************************************************************************************************************************************************************************************************************

8- List all OrderItem details for the order with orderId, 1102 and shipGroupSeqId, 01.

Query-select * from order_item where ORDER_ID='1102' and SHIP_GROUP_SEQ_ID='01';
+----------+-------------------+--------------------+-------------------+-------------+-----------------------+----------+-------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_ITEM_TYPE_ID | SHIP_GROUP_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION      | QUANTITY | UNIT_AMOUNT |
+----------+-------------------+--------------------+-------------------+-------------+-----------------------+----------+-------------+
| 1102     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_1 | Demo Product Unit One | 3.000000 |    16.99000 |
| 1102     | 02                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_2 | Demo Product Unit Two | 3.000000 |    18.99000 |
| 1102     | 03                | RENTAL_ORDER_ITEM  | 01                | null        | Rental Item           | 3.000000 |     2.33000 |
+----------+-------------------+--------------------+-------------------+-------------+-----------------------+----------+-------------+

***************************************************************************************************************************************************************************************************************************

9- List the OrderItem details for only those products for which chargeShipping is set to "Y".

Query-select * from order_item OI,product P where P.PRODUCT_ID=OI.PRODUCT_ID and P.CHARGE_SHIPPING='Y';
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+-------------+-----------------------+-------------------------+---------------------------------+-----------------+------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_ITEM_TYPE_ID | SHIP_GROUP_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT | PRODUCT_ID  | MANUFACTURER_PARTY_ID | PRODUCT_NAME            | DESCRIPTION                     | CHARGE_SHIPPING | RETURNABLE |
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+-------------+-----------------------+-------------------------+---------------------------------+-----------------+------------+
| 1051     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 | DEMO_UNIT_1 | ORG_ZIZI_RETAIL       | Demo Product Unit One   | This is Demo Product Unit One   | Y               | Y          |
| 1051     | 02                | PRODUCT_ORDER_ITEM | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 | DEMO_UNIT_2 | ORG_ZIZI_RETAIL       | Demo Product Unit Two   | This is Demo Product Unit Two   | Y               | Y          |
| 1052     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | DEMO_UNIT_3 | ORG_ZIZI_RETAIL       | Demo Product Unit Three | This is Demo Product Unit Three | Y               | N          |
| 1061     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |    15.99000 | DEMO_UNIT_2 | ORG_ZIZI_RETAIL       | Demo Product Unit Two   | This is Demo Product Unit Two   | Y               | Y          |
| 1102     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |    16.99000 | DEMO_UNIT_1 | ORG_ZIZI_RETAIL       | Demo Product Unit One   | This is Demo Product Unit One   | Y               | Y          |
| 1102     | 02                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 | DEMO_UNIT_2 | ORG_ZIZI_RETAIL       | Demo Product Unit Two   | This is Demo Product Unit Two   | Y               | Y          |
| 1102     | 04                | PRODUCT_ORDER_ITEM | 02                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | DEMO_UNIT_3 | ORG_ZIZI_RETAIL       | Demo Product Unit Three | This is Demo Product Unit Three | Y               | N          |
| 1153     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 | DEMO_UNIT_3 | ORG_ZIZI_RETAIL       | Demo Product Unit Three | This is Demo Product Unit Three | Y               | N          |
| 1153     | 03                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 1.000000 |    12.99000 | DEMO_UNIT_4 | ORG_ZIZI_RETAIL       | Demo Product Unit Four  | This is Demo Product Unit Four  | Y               | Y          |
| 1255     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |    12.99000 | DEMO_UNIT_4 | ORG_ZIZI_RETAIL       | Demo Product Unit Four  | This is Demo Product Unit Four  | Y               | Y          |
| 1255     | 03                | PRODUCT_ORDER_ITEM | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    10.99000 | DEMO_UNIT_5 | ORG_ZIZI_RETAIL       | Demo Product Unit Five  | This is Demo Product Unit Five  | Y               | N          |
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+-------------+-----------------------+-------------------------+---------------------------------+-----------------+------------+

***************************************************************************************************************************************************************************************************************************

10- List the Person details whose employment status is either EMPS_SELF or EMPS_FULLTIME without using the OR operator.

Query- SELECT * FROM person where EMPLOYMENT_STATUS_ENUM_ID IN('EmpsFullTime','EmpsSelf');
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| PARTY_ID  | FIRST_NAME | MIDDLE_NAME | LAST_NAME | GENDER | BIRTH_DATE | EMPLOYMENT_STATUS_ENUM_ID | OCCUPATION        |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+
| CustDemo1 | Joe        | Q           | Public    | M      | 1999-06-15 | EmpsFullTime              | Software Engineer |
| CustDemo2 | Jack       | John        | Smith     | M      | 1999-09-14 | EmpsFullTime              | Doctor            |
| CustDemo4 | John       | J           | Norvig    | F      | 1998-06-11 | EmpsFullTime              | Software Engineer |
| CustDemo5 | Charlie    | Jack        | William   | M      | 1992-04-22 | EmpsSelf                  | Architect         |
| CustDemo6 | James      | W           | Evans     | M      | 1993-05-20 | EmpsFullTime              | Civil Engineer    |
+-----------+------------+-------------+-----------+--------+------------+---------------------------+-------------------+

***************************************************************************************************************************************************************************************************************************

11- List all columns of Facility table.

Query- show columns from facility;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| FACILITY_ID   | varchar(40) | NO   | PRI | NULL    |       |
| FACILITY_NAME | varchar(40) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+

***************************************************************************************************************************************************************************************************************************

12- Output the sum of the grandTotal from OrderHeader table for each order date.

Query- select ORDER_DATE,sum(GRAND_TOTAL) as TOTAL from order_header group by ORDER_DATE;
+-------------------------+----------+
| ORDER_DATE              | TOTAL    |
+-------------------------+----------+
| 2019-04-24 00:00:00.000 |  87.0700 |
| 2020-03-17 00:00:00.000 |  75.9300 |
| 2020-04-17 00:00:00.000 |  94.2700 |
| 2020-04-21 00:00:00.000 |  31.6400 |
| 2021-04-17 00:00:00.000 | 129.9200 |
| 2022-01-09 00:00:00.000 |  48.8700 |
+-------------------------+----------+

***************************************************************************************************************************************************************************************************************************

13- List the OrderHeader records where grand total is greater than highest grand total of the order date on 2020-04-17.

Query-select * from order_header where GRAND_TOTAL>(select sum(GRAND_TOTAL) from order_header where ORDER_DATE='2020-04-17');
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1102     | SALES_ORDER   | Test Order 3 | 2021-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+

***************************************************************************************************************************************************************************************************************************

14- Output the sum of the grandTotal from OrderHeader table for each order date where total sum is greater than 60.

Query-select ORDER_DATE,sum(GRAND_TOTAL) from order_header group by ORDER_DATE having sum(GRAND_TOTAL)>60;
+-------------------------+------------------+
| ORDER_DATE              | sum(GRAND_TOTAL) |
+-------------------------+------------------+
| 2019-04-24 00:00:00.000 |          87.0700 |
| 2020-03-17 00:00:00.000 |          75.9300 |
| 2020-04-17 00:00:00.000 |          94.2700 |
| 2021-04-17 00:00:00.000 |         129.9200 |
+-------------------------+------------------+

***************************************************************************************************************************************************************************************************************************

15- Output the Persons party Id, first name, last name and orderId for all customers who have order date 2020-04-17.

Query-  SELECT P.PARTY_ID, P.FIRST_NAME, P.LAST_NAME, OH.ORDER_DATE 
		FROM person AS P 
		JOIN order_item_ship_group AS OI
		 ON P.PARTY_ID = OI.CUSTOMER_PARTY_ID 
		 JOIN order_header AS OH
		  ON OI.ORDER_ID =OH.ORDER_ID 
		  AND OH.ORDER_DATE = '2020-04-17';
+-----------+------------+-----------+-------------------------+
| PARTY_ID  | FIRST_NAME | LAST_NAME | ORDER_DATE              |
+-----------+------------+-----------+-------------------------+
| CustDemo1 | Joe        | Public    | 2020-04-17 00:00:00.000 |
| CustDemo1 | Joe        | Public    | 2020-04-17 00:00:00.000 |
| CustDemo1 | Joe        | Public    | 2020-04-17 00:00:00.000 |
+-----------+------------+-----------+-------------------------+

***************************************************************************************************************************************************************************************************************************

16- List the OrderHeader details for highest grandTotal for each order date.

Query-SELECT * FROM order_header WHERE GRAND_TOTAL IN (SELECT MAX(GRAND_TOTAL) FROM order_header group by ORDER_ID, ORDER_DATE);
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID       | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
| 1052     | SALES_ORDER   | Test Order 2 | 2020-04-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     16.3200 |
| 1061     | SALES_ORDER   | Test Order 6 | 2019-04-24 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     87.0700 |
| 1064     | SALES_ORDER   | Test Order 7 | 2022-01-09 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     48.8700 |
| 1102     | SALES_ORDER   | Test Order 3 | 2021-04-17 00:00:00.000 | ORDER_COMPLETED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |    129.9200 |
| 1153     | SALES_ORDER   | Test Order 4 | 2020-04-21 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     31.6400 |
| 1255     | SALES_ORDER   | Test Order 5 | 2020-03-17 00:00:00.000 | ORDER_APPROVED  | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     75.9300 |
+----------+---------------+--------------+-------------------------+-----------------+-----------------+-------------------+-----------------------+-------------+


***************************************************************************************************************************************************************************************************************************

17- Find the count of order item ship group for each Person. Output the below details for this query:
partyId
firstName
lastName
count

Query-SELECT P.PARTY_ID, P.FIRST_NAME, P.LAST_NAME, COUNT(*) 
		FROM order_item_ship_group AS OI 
		JOIN person AS P 
		ON OI.CUSTOMER_PARTY_ID = P.PARTY_ID 
		GROUP BY CUSTOMER_PARTY_ID;
+-----------+------------+-----------+----------+
| PARTY_ID  | FIRST_NAME | LAST_NAME | COUNT(*) |
+-----------+------------+-----------+----------+
| CustDemo1 | Joe        | Public    |        3 |
| CustDemo3 | Lily       | Brown     |        2 |
| CustDemo4 | John       | Norvig    |        1 |
| CustDemo5 | Charlie    | William   |        2 |
| CustDemo6 | James      | Evans     |        4 |
+-----------+------------+-----------+----------+


***************************************************************************************************************************************************************************************************************************

18- Output the customerPartyId and highest order grandTotal for each customer.

Query- SELECT O2.CUSTOMER_PARTY_ID, MAX(GRAND_TOTAL) as GRAND_TOTAL

              FROM person AS O1

              JOIN order_item_ship_group AS O2

              ON O1.PARTY_ID = O2.CUSTOMER_PARTY_ID

              JOIN order_header AS O3

              ON O2.ORDER_ID = O3.ORDER_ID GROUP BY CUSTOMER_PARTY_ID;
+-------------------+-------------+
| CUSTOMER_PARTY_ID | GRAND_TOTAL |
+-------------------+-------------+
| CustDemo1         |     77.9500 |
| CustDemo3         |    129.9200 |
| CustDemo4         |     31.6400 |
| CustDemo5         |     75.9300 |
| CustDemo6         |     87.0700 |
+-------------------+-------------+

***************************************************************************************************************************************************************************************************************************

19- List the unique order Ids for the Order Headers with more than one orderItem ShipGroup.

Query-SELECT ORDER_ID, ORDER_TYPE_ID, ORDER_DATE, STATUS_ID FROM order_header WHERE ORDER_ID IN (SELECT oh.ORDER_ID FROM order_header AS oh, order_item_ship_group AS od WHERE oh.ORDER_ID = od.ORDER_ID GROUP BY oh.ORDER_ID HAVING COUNT(*) > 1);
+----------+---------------+-------------------------+-----------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_DATE              | STATUS_ID       |
+----------+---------------+-------------------------+-----------------+
| 1051     | SALES_ORDER   | 2020-04-17 00:00:00.000 | ORDER_APPROVED  |
| 1061     | SALES_ORDER   | 2019-04-24 00:00:00.000 | ORDER_APPROVED  |
| 1064     | SALES_ORDER   | 2022-01-09 00:00:00.000 | ORDER_APPROVED  |
| 1102     | SALES_ORDER   | 2021-04-17 00:00:00.000 | ORDER_COMPLETED |
| 1255     | SALES_ORDER   | 2020-03-17 00:00:00.000 | ORDER_APPROVED  |
+----------+---------------+-------------------------+-----------------+

***************************************************************************************************************************************************************************************************************************

20- List all OrderHeader details whose grandTotal is greater than the average grandTotal for all orders date 2020-04-17.

Query-SELECT * FROM order_header WHERE GRAND_TOTAL > (SELECT avg(GRAND_TOTAL) FROM order_header having ORDER_DATE='2020-04-17');
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
| ORDER_ID | ORDER_TYPE_ID | ORDER_NAME   | ORDER_DATE              | STATUS_ID      | CURRENCY_UOM_ID | PRODUCT_STORE_ID  | SALES_CHANNEL_ENUM_ID | GRAND_TOTAL |
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+
| 1051     | SALES_ORDER   | Test Order 1 | 2020-04-17 00:00:00.000 | ORDER_APPROVED | USD             | OMS_DEFAULT_STORE | WEB_SALES_CHANNEL     |     77.9500 |
+----------+---------------+--------------+-------------------------+----------------+-----------------+-------------------+-----------------------+-------------+

***************************************************************************************************************************************************************************************************************************

21- List the RENTAL_ORDER_ITEM Order Item Details for each order.

Query-SELECT T2.ORDER_ITEM_TYPE_ID, T1.ORDER_ID, T1.SHIP_GROUP_SEQ_ID, T1.CUSTOMER_PARTY_ID, T1.FACILITY_ID, T1.SHIPMENT_METHOD_ENUM_ID FROM order_item_ship_group AS T1, order_item AS T2 WHERE T1.ORDER_ID = T2.ORDER_ID AND ORDER_ITEM_TYPE_ID = 'RENTAL_ORDER_ITEM';
+--------------------+----------+-------------------+-------------------+-------------+-------------------------+
| ORDER_ITEM_TYPE_ID | ORDER_ID | SHIP_GROUP_SEQ_ID | CUSTOMER_PARTY_ID | FACILITY_ID | SHIPMENT_METHOD_ENUM_ID |
+--------------------+----------+-------------------+-------------------+-------------+-------------------------+
| RENTAL_ORDER_ITEM  | 1051     | 01                | CustDemo1         | NULL        | GROUND                  |
| RENTAL_ORDER_ITEM  | 1051     | 02                | CustDemo1         | NULL        | GROUND                  |
| RENTAL_ORDER_ITEM  | 1052     | 01                | CustDemo1         | NULL        | GROUND                  |
| RENTAL_ORDER_ITEM  | 1102     | 01                | CustDemo3         | NULL        | GROUND                  |
| RENTAL_ORDER_ITEM  | 1102     | 02                | CustDemo3         | NULL        | GROUND                  |
| RENTAL_ORDER_ITEM  | 1153     | 01                | CustDemo4         | NULL        | GROUND                  |
| RENTAL_ORDER_ITEM  | 1153     | 01                | CustDemo4         | NULL        | GROUND                  |
| RENTAL_ORDER_ITEM  | 1255     | 01                | CustDemo5         | NULL        | GROUND                  |
| RENTAL_ORDER_ITEM  | 1255     | 02                | CustDemo5         | NULL        | GROUND                  |
+--------------------+----------+-------------------+-------------------+-------------+-------------------------+


***************************************************************************************************************************************************************************************************************************

22- Find the Order details assigned to the facility with the “WebStoreWarehouse” value. Output the below fields for this query:
orderId
shipGroupSeqId
facilityId
customerPartyId
productId
itemDescription
quantity

Query- SELECT DISTINCT T1.ORDER_ID,T1.SHIP_GROUP_SEQ_ID,T1.FACILITY_ID,T1.CUSTOMER_PARTY_ID,T2.PRODUCT_ID,T2.ITEM_DESCRIPTION,T2.QUANTITY FROM order_item_ship_group AS T1 JOIN order_item AS T2 ON T1.ORDER_ID = T2.ORDER_ID AND FACILITY_ID = 'WebStoreWarehouse';
+----------+-------------------+-------------------+-------------------+-------------+-------------------------+----------+
| ORDER_ID | SHIP_GROUP_SEQ_ID | FACILITY_ID       | CUSTOMER_PARTY_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY |
+----------+-------------------+-------------------+-------------------+-------------+-------------------------+----------+
| 1051     | 01                | WebStoreWarehouse | CustDemo1         | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |
| 1051     | 01                | WebStoreWarehouse | CustDemo1         | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |
| 1051     | 01                | WebStoreWarehouse | CustDemo1         | null        | Rental Item             | 3.000000 |
| 1052     | 01                | WebStoreWarehouse | CustDemo1         | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |
| 1052     | 01                | WebStoreWarehouse | CustDemo1         | null        | Rental Item             | 1.000000 |
| 1061     | 01                | WebStoreWarehouse | CustDemo6         | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |
| 1102     | 01                | WebStoreWarehouse | CustDemo3         | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |
| 1102     | 01                | WebStoreWarehouse | CustDemo3         | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |
| 1102     | 01                | WebStoreWarehouse | CustDemo3         | null        | Rental Item             | 3.000000 |
| 1102     | 01                | WebStoreWarehouse | CustDemo3         | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |
| 1153     | 01                | WebStoreWarehouse | CustDemo4         | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |
| 1153     | 01                | WebStoreWarehouse | CustDemo4         | null        | Rental Item             | 1.000000 |
| 1153     | 01                | WebStoreWarehouse | CustDemo4         | DEMO_UNIT_4 | Demo Product Unit Four  | 1.000000 |
| 1255     | 01                | WebStoreWarehouse | CustDemo5         | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |
| 1255     | 01                | WebStoreWarehouse | CustDemo5         | null        | Rental Item             | 3.000000 |
| 1255     | 01                | WebStoreWarehouse | CustDemo5         | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |
+----------+-------------------+-------------------+-------------------+-------------+-------------------------+----------+


***************************************************************************************************************************************************************************************************************************

23- List the below Order Information for the orderId, 1153.
orderId
shipGroupSeqId
customerPartyId
firstName
lastName
orderDate
orderItemSeqId
productId
itemDescription
unitAmount
quantity
grandTotal

Query-SELECT p.FIRST_NAME, p.LAST_NAME, od.ORDER_ID, od.SHIP_GROUP_SEQ_ID, od.CUSTOMER_PARTY_ID, oh.ORDER_DATE, ot.ORDER_ITEM_SEQ_ID, ot.PRODUCT_ID, 				ot.ITEM_DESCRIPTION, ot.UNIT_AMOUNT, ot.QUANTITY, oh.GRAND_TOTAL 
		FROM person AS p INNER JOIN order_item_ship_group
		AS od ON p.PARTY_ID = od.CUSTOMER_PARTY_ID 
		INNER JOIN order_header AS oh ON od.ORDER_ID = oh.ORDER_ID 
		INNER JOIN order_item AS ot ON oh.ORDER_ID = ot.ORDER_ID WHERE od.ORDER_ID = 1153;
+------------+-----------+----------+-------------------+-------------------+-------------------------+-------------------+-------------+-------------------------+-------------+----------+-------------+
| FIRST_NAME | LAST_NAME | ORDER_ID | SHIP_GROUP_SEQ_ID | CUSTOMER_PARTY_ID | ORDER_DATE              | ORDER_ITEM_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | UNIT_AMOUNT | QUANTITY | GRAND_TOTAL |
+------------+-----------+----------+-------------------+-------------------+-------------------------+-------------------+-------------+-------------------------+-------------+----------+-------------+
| John       | Norvig    | 1153     | 01                | CustDemo4         | 2020-04-21 00:00:00.000 | 01                | DEMO_UNIT_3 | Demo Product Unit Three |    14.99000 | 1.000000 |     31.6400 |
| John       | Norvig    | 1153     | 01                | CustDemo4         | 2020-04-21 00:00:00.000 | 02                | null        | Rental Item             |     1.33000 | 1.000000 |     31.6400 |
| John       | Norvig    | 1153     | 01                | CustDemo4         | 2020-04-21 00:00:00.000 | 03                | DEMO_UNIT_4 | Demo Product Unit Four  |    12.99000 | 1.000000 |     31.6400 |
| John       | Norvig    | 1153     | 01                | CustDemo4         | 2020-04-21 00:00:00.000 | 04                | null        | Rental Item             |     2.33000 | 1.000000 |     31.6400 |
+------------+-----------+----------+-------------------+-------------------+-------------------------+-------------------+-------------+-------------------------+-------------+----------+-------------+


***************************************************************************************************************************************************************************************************************************
24- List the below Order details for the customer partyId, CustDemo1.
orderId
orderPartSeqId
orderName
customerPartyId
orderItemSeqId
productId
itemDescription
quantity
unitAmount

Query- SELECT od.ORDER_ID, od.SHIP_GROUP_SEQ_ID, oh.ORDER_NAME, od.CUSTOMER_PARTY_ID, ot.ORDER_ITEM_SEQ_ID, ot.PRODUCT_ID, 
		ot.ITEM_DESCRIPTION, ot.QUANTITY, ot.UNIT_AMOUNT 
		FROM order_item_ship_group AS od 
		JOIN order_header AS oh ON od.ORDER_ID = oh.ORDER_ID 
		JOIN order_item AS ot ON oh.ORDER_ID = ot.ORDER_ID 
		AND CUSTOMER_PARTY_ID ='CustDemo1';
+----------+-------------------+--------------+-------------------+-------------------+-------------+-------------------------+----------+-------------+
| ORDER_ID | SHIP_GROUP_SEQ_ID | ORDER_NAME   | CUSTOMER_PARTY_ID | ORDER_ITEM_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT |
+----------+-------------------+--------------+-------------------+-------------------+-------------+-------------------------+----------+-------------+
| 1051     | 01                | Test Order 1 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 |
| 1051     | 01                | Test Order 1 | CustDemo1         | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
| 1051     | 01                | Test Order 1 | CustDemo1         | 03                | null        | Rental Item             | 3.000000 |     1.33000 |
| 1051     | 02                | Test Order 1 | CustDemo1         | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 |
| 1051     | 02                | Test Order 1 | CustDemo1         | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
| 1051     | 02                | Test Order 1 | CustDemo1         | 03                | null        | Rental Item             | 3.000000 |     1.33000 |
| 1052     | 01                | Test Order 2 | CustDemo1         | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1052     | 01                | Test Order 2 | CustDemo1         | 02                | null        | Rental Item             | 1.000000 |     1.33000 |
+----------+-------------------+--------------+-------------------+-------------------+-------------+-------------------------+----------+-------------+


***************************************************************************************************************************************************************************************************************************

25- List facilityId and total where total = sum of (orderItem.quantity X orderItem.unitAmount).

Query-select sum(OI.QUANTITY * OI.UNIT_AMOUNT) as 'TOTAL', F.FACILITY_ID from order_item_ship_group as OISG
    -> JOIN facility as F ON F.FACILITY_ID=OISG.FACILITY_ID 
    -> JOIN order_header as OH ON OISG.ORDER_ID=OH.ORDER_ID 
    -> JOIN order_item as OI ON OI.ORDER_ID=OH.ORDER_ID group by F.FACILITY_ID;
+-----------------+--------------------+
| TOTAL           | FACILITY_ID        |
+-----------------+--------------------+
| 109.93000000000 | RegionalWarehouse1 |
| 205.85000000000 | RegionalWarehouse2 |
| 363.74000000000 | WebStoreWarehouse  |
+-----------------+--------------------+


