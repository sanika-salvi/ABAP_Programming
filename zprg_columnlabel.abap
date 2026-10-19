CLASS zprg_columnlabel DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprg_columnlabel IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
TYPES:BEGIN OF lty_data,
      ono TYPE ZORDER_NO,
      order_date TYPE  ZDATES,
      total_amt TYPE zcurr_ency,
      currency TYPE ZDECUR,
      item_cost TYPE zcurr_ency,
      item_num TYPE ZITEMNO,
      END OF lty_data.

DATA:lit_data TYPE TABLE OF lty_data.
DATA:lwa_data TYPE lty_data.
DATA:s_ono TYPE RANGE OF ZORDER_NO  .

s_ono =  VALUE #( ( sign = 'I'  option = 'BT' low = '0000000001' high = '0000000003' ) ) .

SELECT a~ono , a~order_date, a~total_amt,  a~currency , b~item_cost,  b~item_num
FROM ZORDER_HEADER AS a INNER JOIN ZORDER_ITEMS AS b
ON a~ono = b~ono
WHERE a~ono IN @s_ono
INTO TABLE @lit_data.

SORT lit_data  BY  ono.

out->write( |{ 'Order No' width = 15  }  { 'Order Date'  width = 15 }  { 'Total Amount'  width = 15 }  { 'Currency'  width = 10 } { 'Item Cost'  width = 15 } { 'Item No'  width = 10 } | ).

LOOP AT lit_data INTO lwa_data.
    out->write( | { lwa_data-ono width = 15 }   { lwa_data-order_date width = 15 }   { lwa_data-total_amt width = 15 } {  lwa_data-currency width = 10 }  {  lwa_data-item_cost width = 15 } {  lwa_data-item_num width = 10 }| ).
    out->write( '------------------' ).
ENDLOOP.

ENDMETHOD.
ENDCLASS.