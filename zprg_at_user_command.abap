CLASS zprg_at_user_command DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zprg_at_user_command IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

    DATA(lv_sy_ucomm) = 'PRINT'.

    "Evaluating at user command event
    CASE lv_sy_ucomm.
        WHEN 'SAVE'.
            out->write( 'Command Accepted:Committing Current data to the database..' ).
        WHEN 'PRINT'.
            out->write( 'Command Accepted:Sending document to the queue..' ).
        WHEN OTHERS.
            out->write( 'Unknowning Funtional..' ).
    ENDCASE.

ENDMETHOD.
ENDCLASS.