const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const ZUI_SB_GCE_FINISHPRD = await cds.connect.to("ZUI_SB_GCE_FINISHPRD"); 
      srv.on('READ', 'ZC_GCE_FINISHPRD', req => ZUI_SB_GCE_FINISHPRD.run(req.query)); 
}