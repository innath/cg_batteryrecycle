using ZUI_SB_GCE_FINISHPRD from './external/ZUI_SB_GCE_FINISHPRD.cds';

service FINISHPRDSampleService {
    @readonly
    entity ZC_GCE_FINISHPRD as projection on ZUI_SB_GCE_FINISHPRD.ZC_GCE_FINISHPRD
    {        key ID, Material, Plant, ProductionOrder, MaterialDescription, MaterialType, Industry, finishdDt, Netweight, RecycleWeight, Percentage, TotalQty, Unit, calendarweek     }    
;
}