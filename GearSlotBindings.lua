local slots = {
	{ button = "GearSlotBindingsHead", id = INVSLOT_HEAD },
	{ button = "GearSlotBindingsNeck", id = INVSLOT_NECK },
	{ button = "GearSlotBindingsShoulder", id = INVSLOT_SHOULDER },
	{ button = "GearSlotBindingsBack", id = INVSLOT_BACK },
	{ button = "GearSlotBindingsChest", id = INVSLOT_CHEST },
	{ button = "GearSlotBindingsShirt", id = INVSLOT_BODY },
	{ button = "GearSlotBindingsTabard", id = INVSLOT_TABARD },
	{ button = "GearSlotBindingsWrist", id = INVSLOT_WRIST },
	{ button = "GearSlotBindingsHands", id = INVSLOT_HAND },
	{ button = "GearSlotBindingsWaist", id = INVSLOT_WAIST },
	{ button = "GearSlotBindingsLegs", id = INVSLOT_LEGS },
	{ button = "GearSlotBindingsFeet", id = INVSLOT_FEET },
	{ button = "GearSlotBindingsFinger0", id = INVSLOT_FINGER1 },
	{ button = "GearSlotBindingsFinger1", id = INVSLOT_FINGER2 },
	{ button = "GearSlotBindingsTrinket0", id = INVSLOT_TRINKET1 },
	{ button = "GearSlotBindingsTrinket1", id = INVSLOT_TRINKET2 },
	{ button = "GearSlotBindingsMainHand", id = INVSLOT_MAINHAND },
	{ button = "GearSlotBindingsOffHand", id = INVSLOT_OFFHAND },
	{ button = "GearSlotBindingsRanged", id = INVSLOT_RANGED },
}

for _, slot in ipairs(slots) do
	local button = CreateFrame("Button", slot.button, UIParent, "SecureActionButtonTemplate")
	button:SetAttribute("type", "macro")
	button:SetAttribute("macrotext", SLASH_USE1.." "..slot.id)
	button:RegisterForClicks("LeftButtonUp", "LeftButtonDown")
	button:Hide()
end
