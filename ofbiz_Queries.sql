1- List all columns of OrderItem table.

Query- SELECT * FROM ofbiztraining.order_item;
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+
| ORDER_ID | ORDER_ITEM_SEQ_ID | ORDER_ITEM_TYPE_ID | SHIP_GROUP_SEQ_ID | PRODUCT_ID  | ITEM_DESCRIPTION        | QUANTITY | UNIT_AMOUNT |
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+
| 1051     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 1.000000 |    16.99000 |
| 1051     | 02                | PRODUCT_ORDER_ITEM | 02                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
| 1051     | 03                | RENTAL_ORDER_ITEM  | 02                | null        | Rental Item             | 3.000000 |     1.33000 |
| 1052     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1052     | 02                | RENTAL_ORDER_ITEM  | 01                | null        | Rental Item             | 1.000000 |     1.33000 |
| 1061     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 2.000000 |    15.99000 |
| 1102     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_1 | Demo Product Unit One   | 3.000000 |    16.99000 |
| 1102     | 02                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_2 | Demo Product Unit Two   | 3.000000 |    18.99000 |
| 1102     | 03                | RENTAL_ORDER_ITEM  | 01                | null        | Rental Item             | 3.000000 |     2.33000 |
| 1102     | 04                | PRODUCT_ORDER_ITEM | 02                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1153     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_3 | Demo Product Unit Three | 1.000000 |    14.99000 |
| 1153     | 02                | RENTAL_ORDER_ITEM  | 01                | null        | Rental Item             | 1.000000 |     1.33000 |
| 1153     | 03                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 1.000000 |    12.99000 |
| 1153     | 04                | RENTAL_ORDER_ITEM  | 01                | null        | Rental Item             | 1.000000 |     2.33000 |
| 1255     | 01                | PRODUCT_ORDER_ITEM | 01                | DEMO_UNIT_4 | Demo Product Unit Four  | 3.000000 |    12.99000 |
| 1255     | 02                | RENTAL_ORDER_ITEM  | 01                | null        | Rental Item             | 3.000000 |     1.33000 |
| 1255     | 03                | PRODUCT_ORDER_ITEM | 02                | DEMO_UNIT_5 | Demo Product Unit Five  | 3.000000 |    10.99000 |
+----------+-------------------+--------------------+-------------------+-------------+-------------------------+----------+-------------+

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

Query-

***************************************************************************************************************************************************************************************************************************

4- Output the count of OrderItem Ship Group for each shipmentMethodTypeId.

Query-

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

Query-

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

Query-

***************************************************************************************************************************************************************************************************************************

10- List the Person details whose employment status is either EMPS_SELF or EMPS_FULLTIME without using the OR operator.

Query-

***************************************************************************************************************************************************************************************************************************

11- List all columns of Facility table.

Query- SELECT * FROM ofbiztraining.facility;
+--------------------+---------------------+
| FACILITY_ID        | FACILITY_NAME       |
+--------------------+---------------------+
| RegionalWarehouse1 | Regional Warehouse1 |
| RegionalWarehouse2 | Regional Warehouse2 |
| WebStoreWarehouse  | Web Store Warehouse |
+--------------------+---------------------+

***************************************************************************************************************************************************************************************************************************

12- Output the sum of the grandTotal from OrderHeader table for each order date.

Query-

***************************************************************************************************************************************************************************************************************************

13- List the OrderHeader records where grand total is greater than highest grand total of the order date on 2020-04-17.

Query-

***************************************************************************************************************************************************************************************************************************

14- Output the sum of the grandTotal from OrderHeader table for each order date where total sum is greater than 60.

Query-

***************************************************************************************************************************************************************************************************************************

15- Output the Person"s party Id, first name, last name and orderId for all customers who have order date 2020-04-17.

Query-

***************************************************************************************************************************************************************************************************************************

16- List the OrderHeader details for highest grandTotal for each order date.

Query-

***************************************************************************************************************************************************************************************************************************

17- Find the count of order item ship group for each Person. Output the below details for this query:
partyId
firstName
lastName
count

Query-

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

Query-

***************************************************************************************************************************************************************************************************************************

20- List all OrderHeader details whose grandTotal is greater than the average grandTotal for all orders date 2020-04-17.

Query-

***************************************************************************************************************************************************************************************************************************

21- List the RENTAL_ORDER_ITEM Order Item Details for each order.

Query-

***************************************************************************************************************************************************************************************************************************

22- Find the Order details assigned to the facility with the “WebStoreWarehouse” value. Output the below fields for this query:
orderId
shipGroupSeqId
facilityId
customerPartyId
productId
itemDescription
quantity

Query-


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

Query-

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

Query-

***************************************************************************************************************************************************************************************************************************

25- List facilityId and total where total = sum of (orderItem.quantity X orderItem.unitAmount).

Query-

