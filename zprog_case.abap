CLASS zprog_case DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
CLASS zprog_case DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .  
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zprog_case IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA:lv_input(2) TYPE N VALUE 5.

    CASE lv_input.
    WHEN 1.
        out->write( ' The Output is 1 :' && lv_input ).
    WHEN 2.
        out->write( ' The Output is 2 :' && lv_input ).
    WHEN OTHERS.
        OUT->write( 'WRONG INPUT' ).
    ENDCASE.


    ENDMETHOD.
ENDCLASS.