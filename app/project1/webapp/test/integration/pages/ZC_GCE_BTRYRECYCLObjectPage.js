sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'project1',
            componentId: 'ZC_GCE_BTRYRECYCLObjectPage',
            entitySet: 'ZC_GCE_BTRYRECYCL'
        },
        CustomPageDefinitions
    );
});