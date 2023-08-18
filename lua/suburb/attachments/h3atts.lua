--[[
	Conversions
--]]

local att = {}
att.Name = "Socom"
att.SortOrder = 1
att.ShortName = "Socom"
att.Slot = "m7s"

att.Hook_Sound_Blast = UC.func.sound_blast
att.Hook_Sound_TailEXT = UC.func.sound_tailext
att.Hook_Sound_TailINT = UC.func.sound_tailint

Suburb_GenAtt(att, "m7_socom")

local att = {}
att.Name = "Brute"
att.SortOrder = 1
att.ShortName = "Brute"
att.Slot = "h3pr"

Suburb_GenAtt(att, "bruteplasma")

--[[
	Grenades
--]]

local att = {}
att.Name = "Frag Grenade"
att.SortOrder = 4
att.ShortName = "Frag"
att.Slot = "h3grenade"

Suburb_GenAtt(att, "h3fragnade")

local att = {}
att.Name = "Plasma Grenade"
att.SortOrder = 3
att.ShortName = "Plasma"
att.Slot = "h3grenade"

Suburb_GenAtt(att, "h3plasnade")

local att = {}
att.Name = "Spike Grenade"
att.SortOrder = 2
att.ShortName = "Spike"
att.Slot = "h3grenade"

Suburb_GenAtt(att, "h3spikenade")

local att = {}
att.Name = "Firebomb Grenade"
att.SortOrder = 1
att.ShortName = "Firebomb"
att.Slot = "h3grenade"

Suburb_GenAtt(att, "h3firenade")

--[[
	Equipment
--]]

local att = {}
att.Name = "Auto Turret"
att.SortOrder = 9
att.ShortName = "Turret"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_autoturret")

local att = {}
att.Name = "Bubble Shield"
att.SortOrder = 8
att.ShortName = "Bubble"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_bubble")

local att = {}
att.Name = "Deployable Cover"
att.SortOrder = 7
att.ShortName = "Cover"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_cover")

local att = {}
att.Name = "Flare"
att.SortOrder = 6
att.ShortName = "Flare"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_flare")

local att = {}
att.Name = "Gravity Lift"
att.SortOrder = 5
att.ShortName = "GravLift"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_gravlift")

local att = {}
att.Name = "Power Drain"
att.SortOrder = 4
att.ShortName = "PwrDrain"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_pwrdrain")

local att = {}
att.Name = "Radar Jammer"
att.SortOrder = 3
att.ShortName = "Jammer"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_jammer")

local att = {}
att.Name = "Regenerator"
att.SortOrder = 2
att.ShortName = "Regen"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_regen")

local att = {}
att.Name = "Trip Mine"
att.SortOrder = 1
att.ShortName = "Tripmine"
att.Slot = "h3equipment"

Suburb_GenAtt(att, "h3equip_tripmine")