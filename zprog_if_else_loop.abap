CLASS zprog_if_else_loop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprog_if_else_loop IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA:lv_input(2) TYPE N VALUE 5.

     IF lv_input = 1.
        out->write( 'The Output is: ' && lv_input ).
     ELSEIF lv_input = 2.
        out->write( 'The Output is: ' && lv_input ).
     ELSE .
        out->write( 'Wrong Output').
     ENDIF.
    ENDMETHOD.
ENDCLASS.