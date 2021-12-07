function init(queue)
   ast_verbose("**** INIT QUEUE " .. queue.name)
end

function cleanup()
  -- close resources...
   ast_verbose("**** QUEUE CLEANUP")
end

function enter_queue(entry, vars)
  -- entry is a table with some parameters of the queue_ent structure.
  -- "context","digits","prio","channel","uniqueid","queuename"

  -- vars is a table with all channel variables of the enqueued entry
   ast_verbose("**** SOMEBODY ENTER QUEUE")
   for k, v in pairs(vars) do
       ast_verbose("**** " .. k .. "=" .. v)
    end
end


function is_our_turn(entry)
  -- entry is a table with some parameters of the queue_ent structure.
  -- "context","digits","prio","channel","uniqueid","queuename","pending","pos","start","expire","variables"
  -- entry.variables is a table with all channel variables of the enqueued entry

  ast_verbose("**** IS OUR TURN? " .. entry.channel)
  return -1
end

function calc_metric(member, entry, vars)
  -- member is a table with some values from the queues "member" structure.
  -- "interface","membername","queuepos","penalty","paused","calls","dynamic","status"

  -- entry is a table with some parameters of the queue_ent structure.
  -- "context","digits","prio","channel","uniqueid","queuename","pending","pos","start","expire","variables"
  -- entry.variables is a table with all channel variables of the enqueued entry

  -- vars is a table with all channel variables of the enqueued entry

  -- zero means: consider this agent but use standard asterisk strategy for calling
  ast_verbose("**** CALC METRIC " .. member.interface)
  return 42
end
