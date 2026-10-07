CLASS zprog_sum_of_numbers DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zprog_sum_of_numbers IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA lv_input1 TYPE i VALUE 50.
    DATA lv_input2 TYPE i VALUE 10.
    DATA lv_OUTPUT TYPE i.

    lv_OUTPUT =  lv_input1 + lv_input2.

    out->write( lv_OUTPUT ).

    ENDMETHOD.
ENDCLASS.