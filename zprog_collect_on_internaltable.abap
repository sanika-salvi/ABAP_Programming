CLASS zprog_collect_on_internaltable DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zprog_collect_on_internaltable IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    TYPES:BEGIN OF ity_data,
          c_name(3) TYPE C,
          dept(10) TYPE C,
          Amount(10) TYPE P DECIMALS 2,
          END OF ity_data.

    DATA :it_data TYPE TABLE OF ity_data.
    DATA :wa_data TYPE ity_data.
    DATA :it1_data TYPE TABLE OF ity_data.

    wa_data-c_name = 'SAP'.
    wa_data-dept = 'Admin'.
    wa_data-Amount = '10000'.
    APPEND wa_data TO it_data.
    CLEAR wa_data.

    wa_data-c_name = 'SAP'.
    wa_data-dept = 'HR'.
    wa_data-Amount = '20000'.
    APPEND wa_data TO it_data.
    CLEAR wa_data.

    wa_data-c_name = 'SAP'.
    wa_data-dept = 'Admin'.
    wa_data-Amount = '50000'.
    APPEND wa_data TO it_data.
    CLEAR wa_data.

    wa_data-c_name = 'SAP'.
    wa_data-dept = 'Training'.
    wa_data-Amount = '10000'.
    APPEND wa_data TO it_data.
    CLEAR wa_data.

    wa_data-c_name = 'SAP'.
    wa_data-dept = 'HR'.
    wa_data-Amount = '20000'.
    APPEND wa_data TO it_data.
    CLEAR wa_data.

    LOOP AT it_data INTO wa_data.
        COLLECT wa_data INTO it1_data.
    ENDLOOP.

    LOOP AT it1_data INTO wa_data.
        out->write(  |{ wa_data-c_name }  { wa_data-dept } { wa_data-Amount }| ).
    ENDLOOP.


    ENDMETHOD.
ENDCLASS.