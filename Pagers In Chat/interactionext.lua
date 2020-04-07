local IntimitateInteractionExt_original = IntimitateInteractionExt.interact
function IntimitateInteractionExt:interact(player)
	if not self:can_interact(player) then IntimitateInteractionExt_original(self, player) return end

	if self.tweak_data == "corpse_alarm_pager" then
		PagerChat:add_pager()
	end
	IntimitateInteractionExt_original(self, player)
end