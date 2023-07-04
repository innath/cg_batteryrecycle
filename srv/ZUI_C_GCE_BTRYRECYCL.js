const cds = require('@sap/cds');
// const { ConstructedQuery } = require('@sap/cds/apis/ql');

module.exports = async (srv) => 
{        
    // Using CDS API      
    const ZUI_C_GCE_BTRYRECYCL = await cds.connect.to("ZUI_C_GCE_BTRYRECYCL"); 
      srv.on('READ', 'ZC_GCE_BTRYRECYCL', req => ZUI_C_GCE_BTRYRECYCL.run(req.query)); 
}