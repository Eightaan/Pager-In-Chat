--Host
local GroupAIStateBase_on_successful_alarm_pager_bluff = GroupAIStateBase.on_successful_alarm_pager_bluff
function GroupAIStateBase:on_successful_alarm_pager_bluff()
    GroupAIStateBase_on_successful_alarm_pager_bluff(self)
	local pagers_used = self._nr_successful_alarm_pager_bluffs
	local max_pagers_data = managers.player:has_category_upgrade("player", "corpse_alarm_pager_bluff") and tweak_data.player.alarm_pager.bluff_success_chance_w_skill or tweak_data.player.alarm_pager.bluff_success_chance
	local max_num_pagers = #max_pagers_data

	for i, chance in ipairs(max_pagers_data) do
		if chance == 0 then
			max_num_pagers = i - 1
			break
		end
	end
    managers.chat:_receive_message(ChatManager.GAME,"Pagers Answered", pagers_used.."/"..max_num_pagers, Color('29A4F6'))
end

--Client
local GroupAIStateBase_sync_alarm_pager_bluff = GroupAIStateBase.sync_alarm_pager_bluff
function GroupAIStateBase:sync_alarm_pager_bluff()
    GroupAIStateBase_sync_alarm_pager_bluff(self)
	local pagers_used = self._nr_successful_alarm_pager_bluffs
	local max_pagers_data = managers.player:has_category_upgrade("player", "corpse_alarm_pager_bluff") and tweak_data.player.alarm_pager.bluff_success_chance_w_skill or tweak_data.player.alarm_pager.bluff_success_chance
	local max_num_pagers = #max_pagers_data

	for i, chance in ipairs(max_pagers_data) do
		if chance == 0 then
			max_num_pagers = i - 1
			break
		end
	end
    managers.chat:_receive_message(ChatManager.GAME,"Pagers Answered", pagers_used.."/"..max_num_pagers, Color('29A4F6'))
end