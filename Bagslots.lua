local MSQ = LibStub and LibStub("Masque", true)
if not MSQ then
	return
end

-- Backpack
local MainBagGroup = MSQ:Group("Bag Slots", "Backpack")
do
	local btn = MainMenuBarBackpackButton
	if btn and not btn.MasqueButtonData then
		btn.MasqueButtonData = {
			Button = btn,
			Icon = btn.icon or _G["MainMenuBarBackpackButtonIconTexture"],
		}
		MainBagGroup:AddButton(btn, btn.MasqueButtonData, "Backpack")
	end
end

-- Bag Slots
local ExtraBagsGroup = MSQ:Group("Bag Slots", "Extra Bags")
local BagSlots = {
	CharacterBag0Slot,
	CharacterBag1Slot,
	CharacterBag2Slot,
	CharacterBag3Slot,
}
for _, btn in ipairs(BagSlots) do
	if btn and not btn.MasqueButtonData then
		btn.MasqueButtonData = {
			Button = btn,
			Icon = btn.icon or _G[btn:GetName() .. "IconTexture"],
		}
		ExtraBagsGroup:AddButton(btn, btn.MasqueButtonData, "BagSlot")
	end
end

-- Reagant Bag
local ReagentGroup = MSQ:Group("Bag Slots", "Reagent Bag")
do
	local btn = CharacterReagentBag0Slot
	if btn and not btn.MasqueButtonData then
		btn.MasqueButtonData = {
			Button = btn,
			Icon = btn.icon or _G["CharacterReagentBag0SlotIconTexture"],
		}
		ReagentGroup:AddButton(btn, btn.MasqueButtonData, "ReagentBag")
	end
end
