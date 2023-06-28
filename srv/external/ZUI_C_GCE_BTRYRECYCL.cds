/* checksum : 85f9f9ccb9994d71f71b3db458296d81 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZUI_C_GCE_BTRYRECYCL {

};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'View for Greencore Battery Recycling'
entity ZUI_C_GCE_BTRYRECYCL.ZC_GCE_BTRYRECYCL {
  key DeliveryNumber : String(10) not null;
  TypeCode : String(2);
  Supplier : String(10);
  Carrier : String(10);
  Source : String(20);
  Destination : String(20);
  @sap.unit : 'CurrencyCode'
  ShipmentCost : Decimal(13, 2);
  Region : String(3);
  Warehouse : String(4);
  @sap.display.format : 'Date'
  DateOfDelivery : Date;
  @sap.unit : 'WeightUnit'
  TOBMovedTo2ndLife : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  TOBRecycle : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  PercentageOfLi : Decimal(31, 14);
  @sap.unit : 'WeightUnit'
  PercentageOfAL : Decimal(31, 14);
  @sap.unit : 'WeightUnit'
  PercentageOfNi : Decimal(31, 14);
  @sap.unit : 'WeightUnit'
  PercentageOfCo : Decimal(31, 14);
  @sap.unit : 'WeightUnit'
  TotalLiWeight : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  TotalALWeight : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  TotalNiWeight : Decimal(13, 3);
  @sap.unit : 'WeightUnit'
  TotalCoWeight : Decimal(13, 3);
  @sap.display.format : 'Date'
  Year_a : Date;
  @sap.semantics : 'unit-of-measure'
  WeightUnit : String(3);
  @sap.semantics : 'currency-code'
  CurrencyCode : String(5);
  PurchaseOrderNumber : String(10);
  OrderNumber : String(12);
  Material : String(40);
  MovementType : String(3);
  @sap.unit : 'WeightUnit'
  StockQuantity : Decimal(31, 14);
  SupplierName : String(40);
  CarrierName : String(40);
  RegionDescription : String(20);
};

