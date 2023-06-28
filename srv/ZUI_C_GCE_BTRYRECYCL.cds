using ZUI_C_GCE_BTRYRECYCL from './external/ZUI_C_GCE_BTRYRECYCL.cds';

service ZUI_C_GCE_BTRYRECYCLSampleService {
    @readonly
//     @Aggregation.ApplySupported.PropertyRestrictions: true
//     @cds.redirection.target: true
//     @cds.persistence.exists: true
    entity ZC_GCE_BTRYRECYCL as projection on ZUI_C_GCE_BTRYRECYCL.ZC_GCE_BTRYRECYCL
    {       
          //   @Analytics.Dimension 
            key DeliveryNumber, 
                 TypeCode, 
          //   @Analytics.Dimension
                 Supplier, 
          //   @Analytics.Dimension
                 Carrier,
          //   @Analytics.Dimension 
                 Source, 
          //   @Analytics.Dimension
                 Destination, 
                 ShipmentCost, 
          //   @Analytics.Dimension
                 Region, 
          //   @Analytics.Dimension
                 Warehouse, 
          //   @Analytics.Measure
                 DateOfDelivery, 
                 TOBMovedTo2ndLife, 
                 TOBRecycle,
          //   @Analytics.Measure 
                 PercentageOfLi, 
          //   @Analytics.Measure
                 PercentageOfAL, 
          //   @Analytics.Measure
                 PercentageOfNi,
          //   @Analytics.Measure 
                 PercentageOfCo, 
          //   @Analytics.Measure
          //   @Aggregation.default : #SUM
                 TotalLiWeight,
          //   @Analytics.Measure
          //   @Aggregation.default : #SUM 
                 TotalALWeight, 
          //   @Analytics.Measure
          //   @Aggregation.default : #SUM
                 TotalNiWeight, 
          //   @Analytics.Measure
          //   @Aggregation.default : #SUM
                 TotalCoWeight, 
          //   @Analytics.Measure
                 Year_a, 
                 WeightUnit, 
                 CurrencyCode, 
                 PurchaseOrderNumber, 
                 OrderNumber, 
          //     @Analytics.Dimension   
                 Material, 
                 MovementType, 
                 StockQuantity, 
                 SupplierName, 
                 CarrierName, 
                 RegionDescription     
                 }    
;
}