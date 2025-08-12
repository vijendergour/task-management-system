namespace tms;

using {managed} from '@sap/cds/common';

entity Projects : managed {
    key ID          : UUID;
        p_name      : String(100);
        description : String;
        startDate   : Date;
        endDate     : Date;
        // to_task     : Composition of many Tasks
        //                   on to_task.to_project = $self;
        to_task     : Association to  many Tasks
                          on to_task.to_project = $self;
}

//Tasks schema deatials
entity Tasks : managed {
    key ID         : UUID;
        title      : String(100) @title: '{i18n>title}';
        status     : String enum {
            Open;
            InProgress;
            Completed;
        };
        // priority: Integer @assert.range:[1,5] @title : '{i18n>priority}';
        priority   : Integer     @title: '{i18n>priority}';
        dueDate    : Date        @title: '{i18n>dueDate}';
        to_project : Association to one Projects;
        to_user    : Association to one Users;

}

// User schema details
entity Users : managed {
    key ID             : UUID;
        name           : String(100);
        email          : String;
        role           : String;
        to_task        : Association to one Tasks;
        to_LoginDetail : Association to one LoginDetails;
}

//helping schema for status of task
entity StatusVH {
    key status : String
}

//helping Value schema for priority of task
entity PriorityVH {
    key priority : Integer
}

//LoginDetails schema
entity LoginDetails : managed {
    key ID        : UUID;
        username  : String(50);
        password  : String(255);
        lastLogin : Timestamp;
        to_user   : Association to one Users;
}
// view openTask as
//     select from Tasks{
//       ID @UI.HiddenFilter, //#to hide in ui use this @UI.HiddenFilter
//       title ,
//       status,
//       priority,
//       project,
//       assignedTo
//     }
//     where status = 'Open'
