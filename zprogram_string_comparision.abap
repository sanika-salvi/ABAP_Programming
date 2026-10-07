CLASS zprogram_string_comparision DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zprogram_string_comparision IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA:lv_string1 TYPE String  VALUE 'System Application Product' ,
         lv_string2 TYPE string  VALUE 'System App'.

    IF lv_string1 CS lv_string2.
        out->write( sy-fdpos ).
    ELSE.
        out->write( sy-fdpos ).
    ENDIF.


    ENDMETHOD.
ENDCLASS.