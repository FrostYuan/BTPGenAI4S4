sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'frostyuanstudentg30/productfaqapp/test/integration/FirstJourney',
		'frostyuanstudentg30/productfaqapp/test/integration/pages/ProductFAQList',
		'frostyuanstudentg30/productfaqapp/test/integration/pages/ProductFAQObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductFAQList, ProductFAQObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('frostyuanstudentg30/productfaqapp') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductFAQList: ProductFAQList,
					onTheProductFAQObjectPage: ProductFAQObjectPage
                }
            },
            opaJourney.run
        );
    }
);