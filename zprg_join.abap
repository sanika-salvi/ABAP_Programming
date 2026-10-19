CLASS zprg_join DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprg_join IMPLEMENTATION.
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

LOOP AT lit_data INTO lwa_data.
    out->write( | { lwa_data-ono }   { lwa_data-order_date }   { lwa_data-total_amt } {  lwa_data-currency }  {  lwa_data-item_cost } {  lwa_data-item_num }| ).
    out->write( '------------------' ).
ENDLOOP.

ENDMETHOD.
ENDCLASS.