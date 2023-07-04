using ZUI_C_GCE_BTRYRECYCL from './external/ZUI_C_GCE_BTRYRECYCL.cds';

service ZUI_C_GCE_BTRYRECYCLSampleService {
    @readonly
    entity ZC_GCE_BTRYRECYCL as projection on ZUI_C_GCE_BTRYRECYCL.ZC_GCE_BTRYRECYCL
    {        key DeliveryNumber, 
                 TypeCode, 
                 Supplier, 
                 Carrier, 
                 Source,
                 Destination, 
                 ShipmentCost, 
                 Region,
                 Warehouse, 
                 WarehouseName, 
                 DateOfDelivery, 
                 TOBMovedTo2ndLife, 
                 TOBRecycle, 
                 PercentageOfFe, 
                 PercentageOfAL, 
                 PercentageOfCu, 
                 PercentageOfMn, 
                 PercentageOfCo, 
                 PercentageOfLi, 
                 PercentageOfNi, 
                 TotalFeWeight, 
                 TotalAlWeight, 
                 TotalCuWeight, 
                 TotalMnWeight, 
                 TotalCoWeight, 
                 TotalLiWeight, 
                 TotalNiWeight, 
                 Year_a, 
                 WeightUnit, 
                 CurrencyCode, 
                 PurchaseOrderNumber, 
                 OrderNumber, 
                 Material, 
                 MaterialNumber, 
                 MovementType, 
                 StockQuantity, 
                 SupplierName, 
                 CarrierName, 
                 RegionDescription
                 }    
;
}