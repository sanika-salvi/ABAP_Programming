@EndUserText.label : 'order header table'
@AbapCatalog.enhancement.category : #EXTENSIBLE_CHARACTER_NUMERIC
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #ALLOWED
define table zorder_header {

  key client   : abap.clnt not null;
  key ono      : zorder_no not null;
  order_date   : zdates;
  payment_mode : zpay_mode;
  @Semantics.amount.currencyCode : 'zorder_header.currency'
  total_amt    : zcurr_ency;
  currency     : zdecur;

}