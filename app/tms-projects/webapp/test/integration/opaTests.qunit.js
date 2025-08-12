sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'projectinfo/test/integration/FirstJourney',
		'projectinfo/test/integration/pages/ProjectsList',
		'projectinfo/test/integration/pages/ProjectsObjectPage',
		'projectinfo/test/integration/pages/TasksObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProjectsList, ProjectsObjectPage, TasksObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('projectinfo') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProjectsList: ProjectsList,
					onTheProjectsObjectPage: ProjectsObjectPage,
					onTheTasksObjectPage: TasksObjectPage
                }
            },
            opaJourney.run
        );
    }
);