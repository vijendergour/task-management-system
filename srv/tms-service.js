const cds = require("@sap/cds");

module.exports = cds.service.impl(async function () {
    const { Tasks } = this.entities;

    //Before creating a task: check the valid date date must equal or greater to current date
    this.before('CREATE', 'Tasks', async function (req) {
        const { dueDate } = req.data;

        if (dueDate) {
            const today = new Date();
            today.setHours(0, 0, 0, 0);
            const taskDate = new Date(dueDate);
            taskDate.setHours(0, 0, 0, 0);
            if (taskDate < today) {
                req.error(400, 'Due date cannot be in the past');
            }
        }
        console.log('=====================', dueDate)
    });
    //Before creating a task: check priority is valid
    this.before('CREATE', 'Tasks', (reqest) => {
        // console.log('reqest=',reqest);            
        // console.log('response=',reqest.res);
        const { priority } = reqest.data
        if (priority < 1 || priority > 5) {
            reqest.error(400, 'Priority must be between 1 and 5');
        }
    });

    //Protect task deletion
    this.before('DELETE', 'Tasks', async function (req) {
        const { ID } = req.data;
        const task = await SELECT.one.from(Tasks).where({ ID });
        if (task.status === 'Completed') {
            return req.error(400, 'Cannot delete completed tasks');
        }

    })

    // //Filter task by status
    // this.on('getByStatus', async function (reqest) {
    //     const { status } = reqest.data
    //     if (!status) return reqest.error(400, 'Status is required');
    //     return await SELECT.from(Tasks).where({ status });
    // })

})