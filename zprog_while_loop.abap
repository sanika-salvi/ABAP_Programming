CLASS zprog_while_loop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprog_while_loop IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA:lv_input(2) TYPE N VALUE 1.

    WHILE lv_input LT 15.
    out->write( 'The Output is:  ' && lv_input ).
    lv_input = lv_input + 1.
    ENDWHILE.

    ENDMETHOD.
ENDCLASS.