
RegisterServerEvent("plouffe_jobset:setjob")
AddEventHandler("plouffe_jobset:setjob", function(lulw,job,grade)
    local _source = source
    local id = tonumber(idd)
    local _grade = tonumber(grade)
    local kekw = tonumber(lulw)
    local _job = job

    TriggerEvent('redemrp:getPlayerFromId', kekw, function(user,data)
        _id = user.getIdentifier()
        charID = user.getSessionVar("charid")
    end)

    MySQL.Async.fetchAll('UPDATE characters SET job = @_job, jobgrade = @_grade WHERE identifier = @_id AND characterid = @characterID', {
        ['@_grade'] = _grade,
        ['@_job'] = _job,
        ['@_id'] = _id,
        ['@characterID'] = charID
    }, function (rowsChanged)
        if rowsChanged then
            print('Job changed succes to '.. _job.. ' ,grade set to ' .._grade)
        else
            print('There was an error in the job change request.')
        end
    end)
end)

