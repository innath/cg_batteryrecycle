/* checksum : ba3a2ac27f15ea2654c0cf35bde62b2f */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZUI_SB_GCE_BTRYRECYCL {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'View for Greencore Battery Recycling'
entity ZUI_SB_GCE_BTRYRECYCL.ZC_GCE_BTRYRECYCL {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Sales document'
  @sap.quickinfo : 'Sales and Distribution Document Number'
  key VBELN : String(10) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Vendor'
  @sap.quickinfo : 'Account Number of Vendor or Creditor'
  LIFNR : String(10);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Selection rule'
  @sap.quickinfo : 'Selection Rules for Employee Data'
  TSPID : String(4);
  @sap.label : 'Location'
  SOURCE : String(20);
  @sap.label : 'Location'
  DEST : String(20);
  @sap.unit : 'WAERS'
  @sap.label : 'Unpl. del.costs'
  @sap.quickinfo : 'Unplanned delivery costs'
  SHPCOST : Decimal(14, 3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Region'
  @sap.quickinfo : 'Region (State, Province, County)'
  REGION : String(3);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  WERKS : String(4);
  @sap.display.format : 'Date'
  @sap.label : 'Deliv. date(From/to)'
  @sap.quickinfo : 'Delivery date'
  LFDAT : Date;
  @sap.unit : 'UOM_TOBLIFE'
  @sap.label : 'Gross weight'
  TOBLIFE : Decimal(15, 3);
  @sap.unit : 'UOM_TOBREC'
  @sap.label : 'Gross weight'
  TOBREC : Decimal(15, 3);
  @sap.unit : 'UOM_WEIGHT'
  @sap.label : 'Stock Quantity'
  LI_PERCEN : Decimal(31, 14);
  @sap.unit : 'UOM_WEIGHT'
  @sap.label : 'Stock Quantity'
  AL_PERCEN : Decimal(31, 14);
  @sap.unit : 'UOM_WEIGHT'
  @sap.label : 'Stock Quantity'
  NI_PERCEN : Decimal(31, 14);
  @sap.unit : 'UOM_WEIGHT'
  @sap.label : 'Stock Quantity'
  CO_PERCEN : Decimal(31, 14);
  @sap.unit : 'UOM_WEIGHT'
  @sap.label : 'Stock Quantity'
  LI_TOTW : Decimal(31, 14);
  @sap.unit : 'UOM_WEIGHT'
  @sap.label : 'Stock Quantity'
  AL_TOTW : Decimal(31, 14);
  @sap.unit : 'UOM_WEIGHT'
  @sap.label : 'Stock Quantity'
  NI_TOTW : Decimal(31, 14);
  @sap.unit : 'UOM_WEIGHT'
  @sap.label : 'Stock Quantity'
  CO_TOTW : Decimal(31, 14);
  @sap.display.format : 'Date'
  @sap.label : 'Date'
  @sap.quickinfo : 'Field of type DATS'
  YEAR_A : Date;
  @sap.label : 'Weight unit'
  @sap.quickinfo : 'Weight Unit'
  @sap.semantics : 'unit-of-measure'
  UOM_TOBLIFE : String(3);
  @sap.label : 'Weight unit'
  @sap.quickinfo : 'Weight Unit'
  @sap.semantics : 'unit-of-measure'
  UOM_TOBREC : String(3);
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  UOM_WEIGHT : String(3);
  @sap.label : 'Currency'
  @sap.quickinfo : 'Currency Key'
  @sap.semantics : 'currency-code'
  WAERS : String(5);
};

