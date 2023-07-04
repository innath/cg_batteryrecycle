using ZUI_C_GCE_BTRYRECYCLSampleService as service from '../../srv/ZUI_C_GCE_BTRYRECYCL';

annotate service.ZC_GCE_BTRYRECYCL with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'DeliveryNumber',
                Value : DeliveryNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TypeCode',
                Value : TypeCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Supplier',
                Value : Supplier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Carrier',
                Value : Carrier,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Source',
                Value : Source,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Destination',
                Value : Destination,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ShipmentCost',
                Value : ShipmentCost,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Region',
                Value : Region,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Warehouse',
                Value : Warehouse,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DateOfDelivery',
                Value : DateOfDelivery,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TOBMovedTo2ndLife',
                Value : TOBMovedTo2ndLife,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TOBRecycle',
                Value : TOBRecycle,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PercentageOfLi',
                Value : PercentageOfLi,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PercentageOfAL',
                Value : PercentageOfAL,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PercentageOfNi',
                Value : PercentageOfNi,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PercentageOfCo',
                Value : PercentageOfCo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalLiWeight',
                Value : TotalLiWeight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalALWeight',
                Value : TotalAlWeight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalNiWeight',
                Value : TotalNiWeight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalCoWeight',
                Value : TotalCoWeight,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Year_a',
                Value : Year_a,
            },
            {
                $Type : 'UI.DataField',
                Label : 'WeightUnit',
                Value : WeightUnit,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CurrencyCode',
                Value : CurrencyCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PurchaseOrderNumber',
                Value : PurchaseOrderNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrderNumber',
                Value : OrderNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Material',
                Value : Material,
            },
            {
                $Type : 'UI.DataField',
                Label : 'MovementType',
                Value : MovementType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StockQuantity',
                Value : StockQuantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SupplierName',
                Value : SupplierName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CarrierName',
                Value : CarrierName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RegionDescription',
                Value : RegionDescription,
            },
        ],
    },
    
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.Chart',
        },   
    ],
    UI.Chart : {
    Title : 'MainChart',
    ChartType : #Column,
    Dimensions : [
        Destination
    ],
    Measures : [
        TotalAlWeight
    ],
    // DynamicMeasures : [
    //     '@Analytics.AggregatedProperty',
    // ],
    MeasureAttributes : [
        {
            $Type : 'UI.ChartMeasureAttributeType',
            Measure : TotalAlWeight,
            Role : #Axis1,
        }
        // ,
        // {
        //     $Type : 'UI.ChartMeasureAttributeType',
        //     DynamicMeasure : '@Analytics.AggregatedProperty',
        //     Role : #Axis1, 
        // }
    ],
    DimensionAttributes : [
        {
            $Type : 'UI.ChartDimensionAttributeType',
            Dimension : Destination,
            Role : #Category,
        },
    ],

    },
  UI.PresentationVariant: {
    // $Type : 'UI.PresentationVariantType',
    // SortOrder : [
    //     {
    //         $Type : 'Common.SortOrderType',
    //         Descending : true
    //     },
    // ],
    Visualizations : [
        '@UI.Chart',
    ],
  }
//   ,
//     Analytics.AggregatedProperty :{
//     Name : 'Sum',
//     AggregationMethod : 'sum',
//     AggregatableProperty : 'TotalAlWeight',
//     ![@Common.Label]     : 'Test'
//   }
);
