CLASS zprog_internal_table DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zprog_internal_table IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

    TYPES: BEGIN OF lty_data,
           ono(3) TYPE N,
           pm(3) TYPE C,
           END OF lty_data.

    DATA:lit_data TYPE TABLE OF lty_data.
    DATA:lwa_data TYPE lty_data.

    lwa_data-ono = '01'.
    lwa_data-pm = 'D'.
    APPEND lwa_data TO lit_data.
    CLEAR lwa_data.

    lwa_data-ono = '02'.
    lwa_data-pm = 'C'.
    APPEND lwa_data TO lit_data.
    CLEAR lwa_data.

    LOOP AT lit_data INTO lwa_data.
        out->write(  lwa_data-ono && lwa_data-pm ).
    ENDLOOP.

    LOOP AT lit_data INTO lwa_data.
        IF lwa_data-ono = '01'.
           lwa_data-pm = 'N'.
           MODIFY lit_data FROM lwa_data TRANSPORTING pm.
           out->write(  lwa_data-ono && lwa_data-pm ).
         ENDIF.
     ENDLOOP.

    ENDMETHOD.
ENDCLASS.