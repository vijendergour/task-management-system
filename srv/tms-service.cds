using { tms } from '../db/schema';

service TMSService  {   
    entity Projects as projection on tms.Projects;
     @odata.draft.enabled
    entity Tasks as projection on tms.Tasks;
    entity Users as projection on tms.Users;
    @cds.redirection.target
    view openTask as select from tms.openTask;

}