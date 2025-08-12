using {tms} from '../db/schema';
service TMSService {
    @odata.draft.enabled
    entity Projects   as projection on tms.Projects;
    // @Capabilities : { DeleteRestrictions : {
    //     $Type : 'Capabilities.DeleteRestrictionsType',
    //     Deletable:false
    // }, }
    @odata.draft.enabled
    entity Tasks      as projection on tms.Tasks
        actions {
            action test();
        };
    action getByStatus(status : String) returns many Tasks;
    @odata.draft.enabled
    entity Users      as projection on tms.Users;   
    entity StatusVH   as
        projection on tms.StatusVH {
            key status : String
        }

    entity PriorityVH as
        projection on tms.PriorityVH {
            key priority : Integer
        }
}
// @cds.redirection.target
    // view openTask as select from tms.openTask;
    // @cds.redirection.target
    // entity UsersVH as projection on tms.Projects;
