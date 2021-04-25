CaptureBadgeSections = {
    "@N-H1/If blue, this item is observable, but not obtainable. Mark it with the dotted box."
}

CaptureBadgeCache = {}

function tracker_on_accessibility_updated()
    for i,section in pairs(CaptureBadgeSections) do
        local target = Tracker:FindObjectForCode(section)
        -- Has the captured item for this section changed since last update
        if target == nil then
            print("Failed to resolve " .. section .. " please check for typos.")
        elseif target.CapturedItem ~= CaptureBadgeCache[target] then
            -- Does the location that owns this section already have a badge, if so remove it
            if CaptureBadgeCache[target.Owner] then
                target.Owner:RemoveBadge(CaptureBadgeCache[target.Owner])
                CaptureBadgeCache[target.Owner] = nil
                CaptureBadgeCache[target] = nil
            end
            -- Check if a captured item exists, add as badge to the sections owner if it does
            if target.CapturedItem then
                CaptureBadgeCache[target.Owner] = target.Owner:AddBadge(target.CapturedItem.PotentialIcon)
                CaptureBadgeCache[target] = target.CapturedItem
            end
        end
    end
end