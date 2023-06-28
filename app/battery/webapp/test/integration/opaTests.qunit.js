sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'battery/test/integration/FirstJourney',
		'battery/test/integration/pages/ZC_GCE_BTRYRECYCLList',
		'battery/test/integration/pages/ZC_GCE_BTRYRECYCLObjectPage'
    ],
    function(JourneyRunner, opaJourney, ZC_GCE_BTRYRECYCLList, ZC_GCE_BTRYRECYCLObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('battery') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheZC_GCE_BTRYRECYCLList: ZC_GCE_BTRYRECYCLList,
					onTheZC_GCE_BTRYRECYCLObjectPage: ZC_GCE_BTRYRECYCLObjectPage
                }
            },
            opaJourney.run
        );
    }
);