sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'battery',
            componentId: 'ZC_GCE_BTRYRECYCLList',
            entitySet: 'ZC_GCE_BTRYRECYCL'
        },
        CustomPageDefinitions
    );
});