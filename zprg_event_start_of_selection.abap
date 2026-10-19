CLASS zprg_event_start_of_selection DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprg_event_start_of_selection IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

    DATA:s_on TYPE RANGE OF zorder_no,
         lit_data TYPE TABLE OF ZORDER_HEADER.


    s_on = VALUE #( ( sign = 'I'  option = 'BT' low = '0000000001'  high = '0000000002' ) ).
    " Evaluating Start-of-selection Event
    SELECT *
    FROM ZORDER_HEADER
    WHERE ono IN @s_on
    INTO TABLE @lit_data.

    out->write( |Database Extracted Succesfully.Found { lines( lit_data ) }  records.| ) .

ENDMETHOD.
ENDCLASS.