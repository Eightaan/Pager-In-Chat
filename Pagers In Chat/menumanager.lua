if not _G.PagerChat then
	_G.PagerChat = {}
    local total_pagers = 0
    function PagerChat:add_pager()
		total_pagers = total_pagers +1
	    managers.chat:_receive_message(ChatManager.GAME,"Pagers Answered", total_pagers .. ".", Color('29A4F6'))
	end
end