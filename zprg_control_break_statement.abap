CLASS zprg_control_break_statement DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zprg_control_break_statement IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

TYPES: BEGIN OF lty_data,
       payment_mode TYPE  zpay_mode,
       total_amt  Type zcurr_ency,
       END OF lty_data.

DATA:it_data TYPE TABLE of lty_data,
     wa_data TYPE lty_data.
DATA:s_pm TYPE RANGE OF zpay_mode  .

s_pm =  VALUE #( ( sign = 'I'  option = 'EQ' low = 'C' )
                 ( sign = 'I'  option = 'EQ' low = 'D' )
                 ( sign = 'I'  option = 'EQ' low = 'N' ) ) .

SELECT payment_mode , total_amt
FROM zorder_header
WHERE payment_mode IN @s_pm
INTO TABLE @it_data.

SORT it_data  BY payment_mode.

    LOOP AT it_data INTO wa_data.
        AT FIRST.
            out->write( '   --- Records Of Order ---  '  ).  "TITLE TEXT
        ENDAT.
        AT NEW payment_mode.
            out->write( |{ wa_data-payment_mode } | ).  "fOR GROUP BASED ON PAYMENT MODE
        ENDAT.
        AT  END OF payment_mode.
            SUM.
            out->write( |{ wa_data-total_amt  } | ).
        ENDAT.
        AT LAST.
            out->write( '   ---       ---  '  ).
        ENDAT.
    ENDLOOP.
ENDMETHOD.
ENDCLASS.