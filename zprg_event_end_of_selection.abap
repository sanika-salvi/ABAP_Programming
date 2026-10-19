CLASS zprg_event_end_of_selection DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprg_event_end_of_selection IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

    DATA(lv_total_orders) = 5.
    DATA(lv_total_revenue) = 10500.

    out->write( '---END OF SELECTION REPORT---' ).
    out->write( '-----------------------------' ).
    out->write( |Total Active Orders Processed : { lv_total_orders } | ).
    out->write( |Total Revenue: { lv_total_revenue } INR| ).
    out->write( '-----------------------------' ).


ENDMETHOD.
ENDCLASS.