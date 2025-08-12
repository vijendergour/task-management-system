using TMSService as service from '../../srv/tms-service';
annotate service.Users with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>name}',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>email}',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>role}',
                Value : role,
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
            Label : '{i18n>name}',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>email}',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>role}',
            Value : role,
        },
    ],
);

annotate service.Users with {
    to_task @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Tasks',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : to_task_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'title',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'status',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'priority',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'dueDate',
            },
        ],
    }
};

