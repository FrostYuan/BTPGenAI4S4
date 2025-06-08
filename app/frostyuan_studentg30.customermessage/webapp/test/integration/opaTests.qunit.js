sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'frostyuanstudentg30/customermessage/test/integration/FirstJourney',
		'frostyuanstudentg30/customermessage/test/integration/pages/CustomerMessageList',
		'frostyuanstudentg30/customermessage/test/integration/pages/CustomerMessageObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerMessageList, CustomerMessageObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('frostyuanstudentg30/customermessage') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerMessageList: CustomerMessageList,
					onTheCustomerMessageObjectPage: CustomerMessageObjectPage
                }
            },
            opaJourney.run
        );
    }
);