local _f_load = GroupAIStateBase.load
function GroupAIStateBase:load(...)
    _f_load(self, ...)
    PagerChat:sync_pagers(self._nr_successful_alarm_pager_bluffs)
end

local _f_on_successful_alarm_pager_bluff = GroupAIStateBase.on_successful_alarm_pager_bluff
function GroupAIStateBase:on_successful_alarm_pager_bluff()
    _f_on_successful_alarm_pager_bluff(self)
    PagerChat:add_pager()
end

local _f_sync_alarm_pager_bluff = GroupAIStateBase.sync_alarm_pager_bluff
function GroupAIStateBase:sync_alarm_pager_bluff()
    _f_sync_alarm_pager_bluff(self)
    PagerChat:add_pager()
end