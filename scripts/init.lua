local variant = Tracker.ActiveVariantUID

Tracker:AddItems("items/items.json")
Tracker:AddItems("items/settings.json")

Tracker:AddMaps("maps/map.json")

Tracker:AddLayouts("layouts/layout.json")
Tracker:AddLayouts("layouts/broadcast.json")
Tracker:AddLayouts("layouts/capture.json")

ScriptHost:LoadScript("scripts/logic.lua")
ScriptHost:LoadScript("scripts/capturebadge.lua")

Tracker:AddLocations("locations/landingsite.json")
Tracker:AddLocations("locations/nexus.json")
Tracker:AddLocations("locations/aqueducts.json")
Tracker:AddLocations("locations/incubator.json")
Tracker:AddLocations("locations/heatercore.json")
Tracker:AddLocations("locations/ventilation.json")