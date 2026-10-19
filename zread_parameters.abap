CLASS zread_parameters DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zread_parameters IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
TYPES:BEGIN OF lty_data,
      ono TYPE ZORDER_NO,
      order_date TYPE  ZDATES,
      total_amt TYPE zcurr_ency,
      currency TYPE ZDECUR,
      END OF lty_data.

DATA:lit_data TYPE TABLE OF lty_data.
DATA:lwa_data TYPE lty_data.
DATA:p_ono TYPE ZORDER_NO VALUE '0000000005'.

*cl_demo_input=>add_field( EXPORTING text = 'p_ono (ENTER NO:)'  CHANGING field = p_ono ).
*cl_demo_input=>request( ).

SELECT ono, order_date, total_amt, currency
FROM ZORDER_HEADER
WHERE ono = @p_ono
INTO TABLE @lit_data.

READ TABLE lit_data INTO lwa_data  INDEX 1.
    IF sy-subrc = 0.
     out->write( | { lwa_data-ono }   { lwa_data-order_date }   { lwa_data-total_amt } {  lwa_data-currency }| ).
    ENDIF.



ENDMETHOD.
ENDCLASS.