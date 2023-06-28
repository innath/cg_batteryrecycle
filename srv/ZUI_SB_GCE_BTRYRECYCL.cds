using ZUI_SB_GCE_BTRYRECYCL from './external/ZUI_SB_GCE_BTRYRECYCL.cds';

service ZUI_SB_GCE_BTRYRECYCLSampleService
{
    @readonly
    // @Aggregation.ApplySupported.PropertyRestrictions: true
    // @cds.redirection.target: true
    // @cds.persistence.exists: true
    entity ZC_GCE_BTRYRECYCL as projection on ZUI_SB_GCE_BTRYRECYCL.ZC_GCE_BTRYRECYCL
     {
        // @Analytics.Dimension
        VBELN as deliverynumber,
        // @Analytics.Dimension
        LIFNR as Supplier,
        // @Analytics.Dimension
        TSPID as Carrier,
        // @Analytics.Dimension
        SOURCE,
        // @Analytics.Dimension
        DEST as Destination,
        // @Analytics.Dimension
        SHPCOST as ShipmentCost,
        // @Analytics.Dimension
        REGION,
        // @Analytics.Dimension
        WERKS as WareHouse,
        // @Analytics.Dimension
        LFDAT as DeliveryDate,
        // @Analytics.Dimension
        TOBLIFE as MovetoSecondLife,
        // @Analytics.Dimension
        TOBREC as MovetoRecycle,
        // @Analytics.Measure
        LI_PERCEN as LithiumPercent,
        // @Analytics.Measure
        AL_PERCEN as AlumuniumPercent,
        // @Analytics.Measure
        NI_PERCEN as NickelPercent,
        // @Analytics.Measure
        CO_PERCEN as CobaltPercent,
        // @Analytics.Measure
        // @Aggregation.default : #SUM
        LI_TOTW as LithiumWeight,
        // @Analytics.Measure 
        // @Aggregation.default : #SUM
        AL_TOTW as AlumuniumWeight,
        // @Analytics.Measure
        // @Aggregation.default : #SUM
        NI_TOTW as NickelWeight,
        // @Analytics.Measure
        // @Aggregation.default : #SUM
        CO_TOTW as CobaltWeight,
        // @Analytics.Measure
        YEAR_A as Year,
        UOM_TOBLIFE,
        UOM_TOBREC,
        UOM_WEIGHT,
        WAERS as CurrencyCode
    };
}
