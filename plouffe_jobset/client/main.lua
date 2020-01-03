RegisterCommand("jobset", function(source, args, raw)
    local id = args[1]
    local job = args[2]
    local grade = args[3]
    if args[1] == nil or args[2] == nil or args[3] == nil then
        print('Wrong used of the command it needs to be /jobset [playerid] [job] [jobgrade]')
    else
        TriggerServerEvent("plouffe_jobset:setjob", id, job, grade)
    end
end)