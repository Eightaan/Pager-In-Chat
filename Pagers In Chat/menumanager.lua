if not _G.PagerChat then
	_G.PagerChat = {}
	local sync = true  -- Set to false if you don't want your whole team to read the messages

    local Net = _G.LuaNetworking
    local total_pagers = 0
    function PagerChat:add_pager()
		total_pagers = total_pagers +1
		if sync and Net:IsHost() and not Global.game_settings.single_player then
            managers.chat:send_message(ChatManager.GAME, managers.network.account:username() or "Offline", "Pagers Answered: "..total_pagers..".")
	    elseif Net:IsClient() then
	        managers.chat:_receive_message(ChatManager.GAME,"Pagers Answered (Since Joining)", total_pagers..".", Color('29A4F6'))
		else
		    managers.chat:_receive_message(ChatManager.GAME,"Pagers Answered", total_pagers..".", Color('29A4F6'))
	    end
	end
end
