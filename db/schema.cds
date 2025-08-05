namespace tms;

using { managed } from '@sap/cds/common';

entity Projects:managed {
    key ID: UUID;
    name: String(100);
    description:String;
    startDate: Date;
    endDate: Date;
    tasks: Composition of many Tasks on tasks.project=$self;
}
// User schema details
entity Users:managed{
    key ID:UUID;
    name: String(100);
    email:String;
    role:String;    
}


//Tasks schema deatials
entity Tasks:managed{
    key ID: UUID;
    title: String(100) @title : '{i18n>title}';
    
    status: String enum {Open; InProgress; Completed;} ;
    priority: Integer @assert.range:[1,5] @title : '{i18n>priority}';
    dueDate:Date @title : '{i18n>dueDate}';
    project: Association to Projects;
    assignedTo:Association to Users;
}

view openTask as 
    select from Tasks{
      ID @UI.HiddenFilter, //#to hide in ui use this @UI.HiddenFilter
      title ,
      status,
      priority,
      project,
      assignedTo
    }
    where status = 'Open'

