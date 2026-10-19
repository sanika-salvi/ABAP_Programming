CLASS zprg_event_line_selection DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
  METHODS drill_down_details IMPORTING iv_selected_order TYPE zorder_no
                                       io_out TYPE REF TO if_oo_adt_classrun_out.
ENDCLASS.

CLASS zprg_event_line_selection IMPLEMENTATION.
METHOD if_oo_adt_classrun~main.

    DATA lv_sy_lisel TYPE zorder_no .
    lv_sy_lisel = '0000000002'.   "Selected Order Id
    drill_down_details( iv_selected_order = lv_sy_lisel   io_out = out ).

ENDMETHOD.

METHOD drill_down_details.

*fetch sub-items
    SELECT item_num ,item_des ,item_cost
    FROM ZORDER_ITEMS
    WHERE ONO = @iv_selected_order
    INTO TABLE @DATA(lt_items).

    io_out->write( | --> SECONDARY DRILL DOWN DETAILS FOR ORDER: { iv_selected_order }| ).
    LOOP AT lt_items INTO DATA(ls_item).
        io_out->write( |  Item: { ls_item-item_num }  | &&
                       |  Desc: { ls_item-item_des  } | &&
                       |  Cost: { ls_item-item_cost } |  ).
    ENDLOOP.
ENDMETHOD.

ENDCLASS.