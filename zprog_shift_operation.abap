CLASS zprog_shift_operation DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zprog_shift_operation IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.



    DATA:lv_input1(10) TYPE C VALUE '0123456789',
         lv_input2(10) TYPE C VALUE '0123456789',
         lv_input3(10) TYPE C VALUE '0123456789'.

    SHIFT lv_input1 BY 2 PLACES. "By default it is left
    out->write( 'left: ' && lv_input1 ).

    SHIFT lv_input2 BY 4 PLACES RIGHT.
    CONDENSE lv_input2.
    out->write( 'Right: ' && lv_input2 ).

    SHIFT lv_input3 BY 3 PLACES CIRCULAR.
    out->write( 'Circular: ' && lv_input3 ).



    ENDMETHOD.
ENDCLASS.