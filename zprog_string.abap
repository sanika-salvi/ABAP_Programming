CLASS zprog_string DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zprog_string IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    DATA:lv_input1 TYPE String VALUE 'Welcome',
        lv_input2 TYPE String VALUE 'Too',
        lv_input3 TYPE String VALUE 'Germany',
        lv_output TYPE String.

     CONCATENATE lv_input1  lv_input2  lv_input3  INTO lv_output  SEPARATED BY '.'.
     out->write( lv_output ).

    ENDMETHOD.
ENDCLASS.