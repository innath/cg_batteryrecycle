const cds = require('@sap/cds');

module.exports = cds.service.impl(async function() {

  const bupa = await cds.connect.to('ZUI_SB_GCE_BTRYRECYCL');

  this.on('READ', 'ZC_GCE_BTRYRECYCL', async req => {
      return bupa.run(req.query);
  });
});