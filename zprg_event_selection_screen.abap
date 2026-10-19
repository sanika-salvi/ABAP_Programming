CLASS zprg_event_selection_screen DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprg_event_selection_screen IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

    DATA:s_pm TYPE RANGE OF zpay_mode.
    s_pm = VALUE #( ( sign = 'I'  option = 'EQ' low = 'X' ) ). "X is invalid data.

    LOOP AT s_pm INTO DATA(lwa_pm).
        IF lwa_pm-low IS NOT INITIAL AND
        lwa_pm-low <> 'C' AND lwa_pm-low <> 'D' AND lwa_pm-low <> 'N' .

        out->write( |Error: Payment Mode "{ lwa_pm-low }" is Invalid .Enter Correct Payment mode.| ) .
        RETURN.
        ENDIF.
    ENDLOOP.

    out->write( 'Validation passed Succesfully' ) .

ENDMETHOD.
ENDCLASS.