CLASS zpopulate_order_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zpopulate_order_data IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

DATA lt_header TYPE TABLE OF ZORDER_HEADER.
lt_header = Value #(
( client = sy-mandt  ono = '0000000001' order_date = '20260110'  payment_mode = 'C'  total_amt = '5000.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000002' order_date = '20260210'  payment_mode = 'D'  total_amt = '1000.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000003' order_date = '20260310'  payment_mode = 'D'  total_amt = '2000.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000004' order_date = '20260410'  payment_mode = 'N'  total_amt = '3000.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000005' order_date = '20260510'  payment_mode = 'N'  total_amt = '4000.00'  currency = 'INR' )
).
INSERT ZORDER_HEADER FROM TABLE @lt_header.


DATA lt_items TYPE TABLE OF ZORDER_ITEMS.
lt_items = Value #(
( client = sy-mandt  ono = '0000000001'  item_num = '10' item_des = 'Tea'    item_cost = '100.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000001'  item_num = '20' item_des = 'Coffee' item_cost = '200.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000001'  item_num = '30' item_des = 'Milk'   item_cost = '200.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000002'  item_num = '10' item_des = 'Nuts'   item_cost = '600.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000002'  item_num = '20' item_des = 'Sugar'  item_cost = '400.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000003'  item_num = '10' item_des = 'Tea'    item_cost = '1000.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000003'  item_num = '20' item_des = 'Coffee' item_cost = '800.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000003'  item_num = '30' item_des = 'Milk'   item_cost = '200.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000004'  item_num = '10' item_des = 'Nuts'   item_cost = '2500.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000004'  item_num = '20' item_des = 'Sugar'  item_cost = '500.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000005'  item_num = '10' item_des = 'Tea'    item_cost = '2500.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000005'  item_num = '20' item_des = 'Coffee' item_cost = '800.00'  currency = 'INR' )
( client = sy-mandt  ono = '0000000005'  item_num = '30' item_des = 'Milk'   item_cost = '700.00'  currency = 'INR' )
).
INSERT ZORDER_ITEMS FROM TABLE @lt_items.

out->write( 'Both Tables Are SucessFully Populated' ).


ENDMETHOD.
ENDCLASS.