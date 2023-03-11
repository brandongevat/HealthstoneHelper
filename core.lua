local frame = CreateFrame("Frame", "HealthstoneFrame", UIParent);

-- Don't Care Anymore
frame:RegisterEvent("BAG_NEW_ITEMS_UPDATED");
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "BAG_NEW_ITEMS_UPDATED" then
        C_Timer.After(.5, function()
            local itemID = C_Container.GetContainerItemID;
            local id;
            for bag = 0, NUM_BAG_SLOTS do
                for slot = 1, C_Container.GetContainerNumSlots(bag) do
                    if itemID(bag, slot) == 36892 or itemID(bag, slot) == 36893 or itemID(bag, slot) == 36894 then
                        id = itemID(bag, slot);
                        local macroIndex = GetMacroIndexByName("Healthstone");
                        SetMacroItem(macroIndex, "item:"..id)
                    end
                end
            end
        end);
    end
end);
