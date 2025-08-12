using TMSService as service from '../../srv/tms-service';
annotate service.Projects with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>p_name}',
                Value : p_name,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>description}',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>startDate}',
                Value : startDate,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>endDate}',
                Value : endDate,
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
            Label : '{i18n>p_name}',
            Value : p_name,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>description}',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>startDate}',
            Value : startDate,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>endDate}',
            Value : endDate,
        },
    ],
);

