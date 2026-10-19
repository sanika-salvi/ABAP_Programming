@EndUserText.label : 'Item table'
@AbapCatalog.enhancement.category : #EXTENSIBLE_CHARACTER_NUMERIC
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zorder_items {

  key client   : abap.clnt not null;
  @AbapCatalog.foreignKey.screenCheck : false
  key ono      : zorder_no not null
    with foreign key zorder_header
      where client = zorder_items.client
        and ono = zorder_items.ono;
  key item_num : abap.numc(2) not null;
  item_des     : abap.char(40);
  @Semantics.amount.currencyCode : 'zorder_header.currency'
  item_cost    : zcurr_ency;
  currency     : zdecur;

}