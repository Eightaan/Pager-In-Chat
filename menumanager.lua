if not _G.PagerChat then
	_G.PagerChat = {}
    local total_pagers = 0
    function PagerChat:add_pager()
	    local max_pagers_data = managers.player:has_category_upgrade("player", "corpse_alarm_pager_bluff") and tweak_data.player.alarm_pager.bluff_success_chance_w_skill or tweak_data.player.alarm_pager.bluff_success_chance
	    local max_num_pagers = #max_pagers_data
		for i, chance in ipairs(max_pagers_data) do
			if chance == 0 then
				max_num_pagers = i - 1

				break
			end
		end
		total_pagers = total_pagers +1
	    managers.chat:_receive_message(ChatManager.GAME,"Pagers Answered", total_pagers .."/"..max_num_pagers, Color('29A4F6'))
	end
	
	function PagerChat:sync_pagers(count)
        total_pagers = count or 0
    end
end
