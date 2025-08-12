sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'tmsuser',
            componentId: 'UsersObjectPage',
            contextPath: '/Users'
        },
        CustomPageDefinitions
    );
});