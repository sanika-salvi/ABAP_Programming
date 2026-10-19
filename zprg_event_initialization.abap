CLASS zprg_event_initialization DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprg_event_initialization IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA:s_ono TYPE RANGE OF  zorder_no.

    s_ono = VALUE #( ( sign = 'I'  option = 'BT' low = '0000000001' high = '0000000003' ) ).

    out->write( '----------INITIALIZATION STAGE COMPLETED----------' ).
    out->write( |Default Range { s_ono[ 1 ]-low } to { s_ono[ 1 ]-high } | ).

    ENDMETHOD.
ENDCLASS.