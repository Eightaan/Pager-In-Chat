if not _G.PagerChat then
	_G.PagerChat = {}
	local sync = true  -- Set to false if you don't want your whole team to read the messages

    local total_pagers = 0
    function PagerChat:add_pager()
		total_pagers = total_pagers +1
		if sync and Network:is_server() and not Global.game_settings.single_player then
            managers.chat:send_message(ChatManager.GAME, managers.network.account:username() or "Offline", "Pagers Answered: "..total_pagers..".")
	    else
	        managers.chat:_receive_message(ChatManager.GAME,"Pagers Answered", total_pagers..".", Color('29A4F6'))
	    end
	end
end
