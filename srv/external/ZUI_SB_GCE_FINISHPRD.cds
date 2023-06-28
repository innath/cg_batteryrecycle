/* checksum : 790bf9b3c5ea3ee98fed04c52b82c639 */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.message.scope.supported : 'true'
@sap.supported.formats : 'atom json xlsx'
service ZUI_SB_GCE_FINISHPRD {};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'B View Industry & Order type mapping'
@sap.value.list : 'true'
entity ZUI_SB_GCE_FINISHPRD.ZB_GCE_PRDODR_IDN {
  @sap.display.format : 'UpperCase'
  @sap.label : 'Order Type'
  key ProductionOrderType : String(4) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry Sector'
  Industry : String(20);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'Recycle per Finish Prd'
entity ZUI_SB_GCE_FINISHPRD.ZC_GCE_FINISHPRD {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Material'
  @sap.quickinfo : 'Material Number'
  Material : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.quickinfo : 'Planning Plant for an Order'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Production Order'
  @sap.quickinfo : 'Order Number'
  ProductionOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Material Description'
  MaterialDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Model'
  @sap.quickinfo : 'Characteristic Value'
  MaterialType : String(70);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Industry'
  @sap.quickinfo : 'Industry Sector'
  @sap.value.list : 'standard'
  Industry : String(20);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'Date'
  @sap.label : 'Horizon'
  @sap.quickinfo : 'Basic finish date'
  finishdDt : Date;
  @sap.aggregation.role : 'measure'
  @sap.label : 'Finished Material Weight'
  @sap.filterable : 'false'
  Netweight : Decimal(10, 3);
  @sap.aggregation.role : 'measure'
  @sap.label : 'Recycled Component Weight'
  @sap.filterable : 'false'
  RecycleWeight : Decimal(13, 3);
  @sap.aggregation.role : 'measure'
  @sap.label : 'Recycled % Adoption'
  @sap.filterable : 'false'
  Percentage : Decimal(19, 3);
  @sap.aggregation.role : 'measure'
  @sap.unit : 'Unit'
  @sap.label : 'Total Quantity'
  @sap.filterable : 'false'
  TotalQty : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Base Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  Unit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'NonNegative'
  @sap.label : 'CalenderWeek'
  @sap.quickinfo : 'Calendar Week'
  @sap.value.list : 'standard'
  calendarweek : String(2);
  @cds.ambiguous : 'missing on condition?'
  to_RecycleComponent : Association to many ZUI_SB_GCE_FINISHPRD.ZC_GCE_RECYCLED_COM {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Test KPI Tag'
entity ZUI_SB_GCE_FINISHPRD.ZC_GCE_KPI1_CARD {
  key TotalComwt : Decimal(13, 3) not null;
  TotalNtwe : Decimal(10, 3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'WASTE REDUCTION MEASUREMENT'
entity ZUI_SB_GCE_FINISHPRD.ZC_GCE_MEASUREMENT {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Production Order'
  @sap.quickinfo : 'Order Number'
  OrderNo : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.quickinfo : 'Planning Plant for an Order'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Product'
  @sap.quickinfo : 'Material Number for Order'
  Product : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Prod Description'
  @sap.quickinfo : 'Material Description'
  MaterialDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Prod.Order Type'
  @sap.quickinfo : 'Order Type'
  OrderType : String(4);
  @sap.aggregation.role : 'measure'
  @sap.label : 'Quantity'
  @sap.quickinfo : 'Quantity of Goods Received for the Order Item'
  @sap.filterable : 'false'
  Quantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'UoM'
  @sap.quickinfo : 'Unit of measure for in-house production'
  @sap.semantics : 'unit-of-measure'
  Unit : String(3);
  @sap.aggregation.role : 'measure'
  @sap.label : 'Waste Quantity'
  @sap.quickinfo : 'Quantity in unit of entry'
  @sap.filterable : 'false'
  WasteQuantity : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Unit of WasteQuantity'
  @sap.quickinfo : 'Unit of entry'
  @sap.semantics : 'unit-of-measure'
  UnitWasteQuantity : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.semantics : 'aggregate'
@sap.label : 'Recycle per Finish Prd'
entity ZUI_SB_GCE_FINISHPRD.ZC_GCE_RECYCLED_COM {
  @sap.sortable : 'false'
  @sap.filterable : 'false'
  key ID : LargeString not null;
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'MainMaterial'
  @sap.quickinfo : 'Material Number'
  Material : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.quickinfo : 'Planning Plant for an Order'
  Plant : String(4);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'ProductionOrder'
  @sap.quickinfo : 'Order Number'
  ProductionOrder : String(12);
  @sap.aggregation.role : 'dimension'
  @sap.display.format : 'UpperCase'
  @sap.label : 'Component'
  @sap.quickinfo : 'Material Number'
  Component : String(18);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Component Description'
  @sap.quickinfo : 'Material Description'
  ComponentDescription : String(40);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'Recycled'
  Recycled : String(10);
  @sap.aggregation.role : 'measure'
  @sap.label : 'RecComWeight'
  @sap.filterable : 'false'
  RecComWeight : Decimal(10, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'RecUnit'
  @sap.quickinfo : 'Weight Unit'
  @sap.semantics : 'unit-of-measure'
  RecUnit : String(3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'RecycledComWe'
  RecycledComWe : Decimal(13, 3);
  @sap.aggregation.role : 'dimension'
  @sap.label : 'RecPercentage'
  RecPercentage : Decimal(19, 3);
  @cds.ambiguous : 'missing on condition?'
  to_RecycleSubComponent : Association to many ZUI_SB_GCE_FINISHPRD.ZC_GCE_REC_COM_MAT {  };
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Recycle Sub-Component per finished Prd'
entity ZUI_SB_GCE_FINISHPRD.ZC_GCE_REC_COM_MAT {
  @sap.display.format : 'UpperCase'
  @sap.label : 'MainMaterial'
  @sap.quickinfo : 'Material Number'
  key MainMaterial : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'CompMaterial'
  @sap.quickinfo : 'Material Number'
  key CompMaterial : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'SubMaterial'
  @sap.quickinfo : 'BOM component'
  key SubMaterial : String(18) not null;
  @sap.display.format : 'UpperCase'
  @sap.label : 'ProductionOrder'
  @sap.quickinfo : 'Order Number'
  ProductionOrder : String(12);
  @sap.display.format : 'UpperCase'
  @sap.label : 'Plant'
  @sap.quickinfo : 'Planning Plant for an Order'
  Plant : String(4);
  @sap.label : 'MatDescription'
  @sap.quickinfo : 'Material Description'
  MatDescription : String(40);
  @sap.label : 'CompDesc'
  @sap.quickinfo : 'Material Description'
  CompDesc : String(40);
  @sap.label : 'SubMatDesc'
  @sap.quickinfo : 'Material Description'
  SubMatDesc : String(40);
  @sap.unit : 'UoM'
  @sap.label : 'NumberOfUnit'
  @sap.quickinfo : 'Component Quantity'
  NumberOfUnit : Decimal(13, 3);
  @sap.unit : 'CompMatUom'
  @sap.label : 'CompMatweg'
  CompMatweg : Decimal(13, 3);
  @sap.unit : 'CompMatUom'
  @sap.label : 'TotalComNtwe'
  TotalComNtwe : Decimal(10, 3);
  @sap.label : 'UoM'
  @sap.quickinfo : 'Component Unit of Measure'
  @sap.semantics : 'unit-of-measure'
  UoM : String(3);
  @sap.label : 'CompMatUom'
  @sap.quickinfo : 'Weight Unit'
  @sap.semantics : 'unit-of-measure'
  CompMatUom : String(3);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.content.version : '1'
@sap.label : 'Calendar week Value Help'
@sap.value.list : 'true'
entity ZUI_SB_GCE_FINISHPRD.Z_calendarweekVH {
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Week'
  key calendarWeek : String(2) not null;
  @sap.display.format : 'NonNegative'
  @sap.label : 'Calendar Quarter'
  calendarquarter : String(1);
};

