CLASS zprg_event_top_of_page DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprg_event_top_of_page IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.
TYPES:BEGIN OF lty_data,
      ono TYPE ZORDER_NO,
      order_date TYPE  ZDATES,
      total_amt TYPE zcurr_ency,
      currency TYPE ZDECUR,
      END OF lty_data.

DATA:lit_data TYPE TABLE OF lty_data.
DATA:lwa_data TYPE lty_data.
DATA:p_ono TYPE ZORDER_NO VALUE '0000000003'.


SELECT  SINGLE ono, order_date, total_amt, currency
FROM ZORDER_HEADER
WHERE ono = @p_ono
INTO @lwa_data.

*TOP-OF-PAGE
    out->write( '===========================' ).
    out->write( '    Report Of Order        ' ).
    out->write( | DATE: { cl_abap_context_info=>get_system_date(  ) }| &&
                | USER: { cl_abap_context_info=>get_user_alias(  ) } | ).
    out->write( '===========================' ).

    IF sy-subrc = 0 .
        out->write( | { lwa_data-ono }   { lwa_data-order_date }   { lwa_data-total_amt } {  lwa_data-currency }| ).
    ENDIF.


ENDMETHOD.

ENDCLASS.
