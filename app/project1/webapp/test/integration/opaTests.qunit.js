sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'project1/test/integration/FirstJourney',
		'project1/test/integration/pages/ZC_GCE_BTRYRECYCLList',
		'project1/test/integration/pages/ZC_GCE_BTRYRECYCLObjectPage'
    ],
    function(JourneyRunner, opaJourney, ZC_GCE_BTRYRECYCLList, ZC_GCE_BTRYRECYCLObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('project1') + '/index.html'
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