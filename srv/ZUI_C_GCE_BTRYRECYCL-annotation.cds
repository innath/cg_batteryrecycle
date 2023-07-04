using { ZUI_C_GCE_BTRYRECYCLSampleService } from './ZUI_C_GCE_BTRYRECYCL';

// 1. Aggregation and analytical annotations
annotate ZUI_C_GCE_BTRYRECYCLSampleService.ZC_GCE_BTRYRECYCL with @(
  Aggregation.ApplySupported: {   
    Transformations: [
      'aggregate',
      'topcount',
      'bottomcount',
      'identity',
      'concat',
      'groupby',
      'filter',
      'expand',
      'search'      
    ],
    // GroupableProperties : [
    //             TypeCode, 
    //              Supplier, 
    //              Carrier, 
    //              Source,
    //              Destination, 
    //              ShipmentCost, 
    //              Region,
    //              Warehouse, 
    //              WarehouseName, 
    //              DateOfDelivery,
    //              PurchaseOrderNumber, 
    //              OrderNumber, 
    //              Material, 
    //              MaterialNumber, 
    //              MovementType, 
    //              StockQuantity, 
    //              SupplierName, 
    //              CarrierName, 
    //              RegionDescription 
    // ],

    AggregatableProperties: [{
      $Type : 'Aggregation.AggregatablePropertyType',
      Property: TotalAlWeight,
      SupportedAggregationMethods : [
          'sum',
      ],
    }]
  }
//   ,
//   Analytics.AggregatedProperty :{
//     Name : 'Percentage',
//     AggregationMethod : 'average',
//     AggregatableProperty : 'PercentageOfAL',
//     ![@Common.Label]     : 'Test'
//   }
);

// 2. Main chart
annotate ZUI_C_GCE_BTRYRECYCLSampleService.ZC_GCE_BTRYRECYCL with @(
  // UI.Chart: {
  //   $Type : 'UI.ChartDefinitionType',
  //   ChartType : #Column,
  //   DynamicMeasures : [
       
  //   ],
  //   Dimensions: [Destination],
  //   Measures: [Percentage],
  //   DimensionAttributes: [{
  //     $Type : 'UI.ChartDimensionAttributeType',
  //     Dimension: Destination,
  //     Role: #Category
  //   }
  //   // ,{
  //   //   $Type : 'UI.ChartDimensionAttributeType',
  //   //   Dimension: Region,
  //   //   Role: #Category2
  //   // }
  //   ],
  //   MeasureAttributes: [
  //   //     {
  //   //   $Type: 'UI.ChartMeasureAttributeType',
  //   //   DynamicMeasure : ![@Analytics.AggregatedProperty],
  //   //   Role: #Axis1
  //   //     },
  //   {
  //     $Type: 'UI.ChartMeasureAttributeType',
  //     Measure : Percentage,
  //     Role: #Axis1
  //   }]
  // },
  // UI.PresentationVariant: {
  //   // $Type : 'UI.PresentationVariantType',
  //   SortOrder : [
  //       {
  //           $Type : 'Common.SortOrderType',
  //           Descending : true
  //       },
  //   ],
  //   Visualizations : [
  //       '@UI.Chart',
  //   ],
  // }
);

//4. Selection Fields and Line Item
annotate ZUI_C_GCE_BTRYRECYCLSampleService.ZC_GCE_BTRYRECYCL with@(
    UI: {
         SelectionFields  : [
            Source,
            Region,
            Carrier,
            Destination,
            DateOfDelivery,
            Supplier,
            ShipmentCost,
            Material,
            Year_a
        ],
        LineItem: [
            {  $Type : 'UI.DataField', Value : DeliveryNumber, },
            {  $Type : 'UI.DataField', Value : Carrier, },
            {  $Type : 'UI.DataField', Value : Destination, },
            {  $Type : 'UI.DataField', Value : Region, },
            {  $Type : 'UI.DataField', Value : Source, },
            {  $Type : 'UI.DataField', Value : ShipmentCost, },
            {  $Type : 'UI.DataField', Value : Supplier, },
            {  $Type : 'UI.DataField', Value : Year_a, },
            {  $Type : 'UI.DataField', Value : TOBRecycle, },
            {  $Type : 'UI.DataField', Value : TOBMovedTo2ndLife, },
            {  $Type : 'UI.DataField', Value : TotalAlWeight, },
            {  $Type : 'UI.DataField', Value : PercentageOfAL, },
            {  $Type : 'UI.DataField', Value : PercentageOfCo, },
            {  $Type : 'UI.DataField', Value : TotalCoWeight, },
            {  $Type : 'UI.DataField', Value : PercentageOfNi, },
            {  $Type : 'UI.DataField', Value : TotalNiWeight, },
            {  $Type : 'UI.DataField', Value : CurrencyCode, },
            {  $Type : 'UI.DataField', Value : DateOfDelivery, }
        ],
    }
);