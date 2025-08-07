using TMSService as service from '../../srv/tms-service';
annotate service.Tasks with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>title}',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>status}',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>priority}',
                Value : priority,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>dueDate}',
                Value : dueDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>name}',
                Value : to_user_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>p_name}',
                Value : to_project_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>title}',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>status}',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Priority',
            Value : priority,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>dueDate}',
            Value : dueDate,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>name}',
            Value : to_user_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>p_name}',
            Value : to_project_ID,
        },
    ],
);

annotate service.Tasks with {
    to_project @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Projects',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : to_project_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'p_name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'description',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'startDate',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'endDate',
            },
        ],
    }
};

annotate service.Tasks with {
    to_user @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Users',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : to_user_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'role',
            },
        ],
    }
};

annotate service.Tasks with {
    status @(Common.ValueList : {
        Label:'{i18n>status}',
        CollectionPath : 'StatusVH',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : status,
                ValueListProperty : 'status',
                
            }
            
        ],
    })
};
annotate service.Tasks with {
    priority @(Common.ValueList : {  
        Label:'{i18n>priority}',      
        CollectionPath : 'PriorityVH',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : priority,
                ValueListProperty : 'priority',
                
            }
            
        ],
    })
};

