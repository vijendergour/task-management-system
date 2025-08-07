using {tms} from '../db/schema';


service TMSService {
    entity Projects   as projection on tms.Projects;

    @odata.draft.enabled
    // @Capabilities : { DeleteRestrictions : {
    //     $Type : 'Capabilities.DeleteRestrictionsType',
    //     Deletable:false
    // }, }
    entity Tasks      as projection on tms.Tasks
        actions {
            action test()
        };
        // action getByStatus(status:String) returns many Tasks;
        action getByStatus();
    entity Users      as projection on tms.Users;
    // @cds.redirection.target
    // view openTask as select from tms.openTask;
    // @cds.redirection.target
    // entity UsersVH as projection on tms.Projects;

    entity StatusVH   as
        projection on tms.StatusVH {
            key status : String
        }

    entity PriorityVH as
        projection on tms.PriorityVH {
            key priority : Integer
        }
}
