CLASS zprog_do_loop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zprog_do_loop IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA:lv_input TYPE i VALUE 10.

    DO 10 TIMES.
    out->write( 'The Output is:' && lv_input ).
    lv_input = lv_input + 1.
    ENDDO.

    ENDMETHOD.
ENDCLASS.