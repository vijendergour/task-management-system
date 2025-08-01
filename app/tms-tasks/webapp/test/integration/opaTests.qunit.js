sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'tmstasks/test/integration/FirstJourney',
		'tmstasks/test/integration/pages/TasksList',
		'tmstasks/test/integration/pages/TasksObjectPage'
    ],
    function(JourneyRunner, opaJourney, TasksList, TasksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('tmstasks') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTasksList: TasksList,
					onTheTasksObjectPage: TasksObjectPage
                }
            },
            opaJourney.run
        );
    }
);