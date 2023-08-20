
SWEP.Base					= "suburb"
SWEP.Spawnable				= true

--
-- Description
--
SWEP.PrintName				= "Magnum"
SWEP.Category				= "Cosmic Decay" -- sounds funny (ffrom stan_jacobs), likely wont keep but good for organizing
SWEP.Description			= [[M6G PDWS]]
SWEP.Slot					= 1

--
-- Appearance
--
SWEP.ViewModel				= "models/snowysnowtime/suburb/halo/pistols/fp_magnum.mdl"
SWEP.WorldModel				= "models/snowysnowtime/suburb/h3/rifles/c_hum_br55hb.mdl"
SWEP.VMWMClone				= { Pos = Vector(), Ang = Angle(), Size = Vector() }
SWEP.ViewModelFOV			= 54 -- Make an attachment later to allow users to swap between 54/74 ViewModelFOV

SWEP.DefaultBodygroups = "0 0"
SWEP.DefaultSkin = 0

SWEP.ActivePose = {
	Pos = Vector( 0, -4, -0.5 ),
	Ang = Angle( 0, 0, 0 )
}
SWEP.CrouchPose = {
	Pos = Vector( 0, 0, 0.25	 ),
	Ang = Angle( 0, 0, 0 ),
	MidPos = Vector( 0, 0, 0.125 ),
	MidAng = Angle( 0, 0, 0 ),
}
SWEP.IronsightPose = {
	Pos = Vector( -2.81, -6, 1.32 ),
	Ang = Angle( 0, 0, 0 ),
	MidPos = Vector( -1.15, 2, -0.4 ),
	MidAng = Angle( -0.5, 0, -6 ),
	ViewModelFOV = 65,
	Magnification = 1.3,
}

SWEP.HoldTypeHip			= "ar2"
SWEP.HoldTypeSight			= "rpg"
SWEP.HoldTypeSprint			= "passive"

local p0 = ")arccw_uc/common/"
local halo = ")snowysnowtime/h3/magnum/"
local halo2 = ")snowysnowtime/h3/battlerifle/eject_br/"
SWEP.Sound_Blast			= {
	{ s = "magnum.uc.fire" },
}
SWEP.Sound_Mech				= {
	{ s = halo.."ejectshell.wav" },
	{ s = halo.."ejectshell2.wav" },
	{ s = halo.."ejectshell3.wav" },
	{ s = halo.."ejectshell4.wav" },
	{ s = halo2.."ejectshell.wav" },
	{ s = halo2.."ejectshell2.wav" },
	{ s = halo2.."ejectshell3.wav" },
	{ s = halo2.."ejectshell4.wav" },
}

SWEP.Sound_Blast_Supp			= {
	{ s = "magnumsocom.uc.fire" },
}
SWEP.Sound_TailEXT_Supp				= {
	{ s = halo.."silened_magnum_tail_ext1.wav" },
	{ s = halo.."silened_magnum_tail_ext2.wav" },
	{ s = halo.."silened_magnum_tail_ext3.wav" },
}
SWEP.Sound_TailINT_Supp				= {
	{ s = halo.."silened_magnum_tail_int1.wav" },
	{ s = halo.."silened_magnum_tail_int2.wav" },
	{ s = halo.."silened_magnum_tail_int3.wav" },
}

SWEP.MuzzleEffect						= "muzzleflash_1"
SWEP.QCA_Muzzle							= 1

SWEP.ShellModel							= "models/weapons/arccw/uc_shells/556x45.mdl"
SWEP.ShellScale							= 0.5
SWEP.QCA_Case							= 2

SWEP.QCA_Camera							= 3
SWEP.CameraCorrection					= Angle( 0, 0, -90 )

--
-- Functionality
--
SWEP.Primary.Ammo			= "smg1"
SWEP.Primary.ClipSize		= 8
SWEP.ChamberSize			= 0
SWEP.Delay					= 0.4
-- >> For whatever fucking reason, semi-automatic weapons in halo do not use the RPS value, but fire recovery time. Just use the raw value from the H3EK/H3ODSTEK
-- >> Why does all of the semi-automatic weapons in halo work this way??
-- >> Magnum Delay = 0.4 w/ 8 rounds, Automag(MCC) Delay = 0.28 w/ 12 rounds, Automag(ODST) Delay = 0.075 w/ 12 rounds (jesus christ)

SWEP.Firemodes				= {
	{
		Mode = 1,
	},
}
SWEP.SwayCorrection = 0.45

SWEP.Accuracy				= 0.1

SWEP.Dispersion				= 0.1
SWEP.Dispersion_Air			= 0
SWEP.Dispersion_Move		= 0
SWEP.Dispersion_Crouch		= 0
SWEP.Dispersion_Sights		= 0

SWEP.SightTime				= 0.4
SWEP.SprintTime				= 0.4

--
-- Recoil
--
SWEP.RecoilUp				= 1
SWEP.RecoilSide				= 0.0
SWEP.RecoilPunch			= 0.2
SWEP.RecoilSwing			= 0.5
SWEP.RecoilDrift			= .8
SWEP.RecoilDecay			= 11

SWEP.UniversalAnimationInfo = {
	bone = "m16_parent",
	pos = Vector( 0, 0, 0 ),
	ang = Angle( 0, 0, 0 ),
}

--
-- Damage
--
SWEP.DamageNear				= ArcCW.UC.StdDmg["556"].max
SWEP.RangeNear				= 50
SWEP.DamageFar				= ArcCW.UC.StdDmg["556"].min
SWEP.RangeFar				= 300
SWEP.Force					= 5
SWEP.Penetration			= ArcCW.UC.StdDmg["556"].pen

--
-- Animation
--
SWEP.Animations				= {
	["idle"]	= {
		Source = "idle_1",
	},
	["idle_empty"]	= {
		Source = "idle_empty",
	},
	["draw"]	= {
		Source = "ready",
		Events = {
			{ t = 0.3,			s = {halo.."magnum_ready_1.wav",halo.."magnum_ready_2.wav"} },
		},
		ReloadingTime = 0.3,
		StopSightTime = 0.1,
	},
	["draw_empty"]	= {
		Source = "ready",
		ReloadingTime = 0.3,
		StopSightTime = 0.1,
	},
	["holster"]	= {
		Source = "put_away",
		Time = 0.25,
		HolsterTime = 0.25,
	},
	["holster_empty"]	= {
		Source = "put_away",
		Time = 0.25,
		HolsterTime = 0.25,
	},
	["fire"]	= {
		Source = {"fire_1 var1", "fire_1 var2", "fire_1 var3", "fire_1 var4"},
		ShellEjectTime = 0,
	},
	["fire_automag"]	= {
		Source = {"fire_2 var1", "fire_2 var2", "fire_2 var3"},
		ShellEjectTime = 0,
	},
	["fire_empty"] = {
		Source = {"fire_1 var1", "fire_1 var2", "fire_1 var3", "fire_1 var4"},
		ShellEjectTime = 0,
	},
	["reload"]	= {
		Source = "reload",
		Events = {
			{ t = 0.0,			s = {halo.."reload3-0.wav",halo.."reload3-1.wav",halo.."reload3-2.wav"} },
			{ t = 0.4,			s = {halo.."reload0-0.wav",halo.."reload0-1.wav",halo.."reload0-2.wav"} },
			{ t = 0.7,			s = {halo.."reload1-0.wav",halo.."reload1-1.wav",halo.."reload1-2.wav"} },
			{ t = 0.9,			s = {halo.."reload2-0.wav",halo.."reload2-1.wav",halo.."reload2-2.wav"} },
			{ t = 1.4,			s = {halo.."reload4-0.wav",halo.."reload4-1.wav",halo.."reload4-2.wav"} },
		},
		ReloadingTime = 2.0,
		StopSightTime = 1.2,
		LoadIn = 1,
	},
	["reload_empty"] = {
		Source = "reload",
		Events = {
			{ t = 0.0,			s = {halo.."reload3-0.wav",halo.."reload3-1.wav",halo.."reload3-2.wav"} },
			{ t = 0.4,			s = {halo.."reload0-0.wav",halo.."reload0-1.wav",halo.."reload0-2.wav"} },
			{ t = 0.7,			s = {halo.."reload1-0.wav",halo.."reload1-1.wav",halo.."reload1-2.wav"} },
			{ t = 0.9,			s = {halo.."reload2-0.wav",halo.."reload2-1.wav",halo.."reload2-2.wav"} },
			{ t = 1.4,			s = {halo.."reload4-0.wav",halo.."reload4-1.wav",halo.."reload4-2.wav"} },
		},
		ReloadingTime = 2.0,
		StopSightTime = 1.2,
		LoadIn = 1,
	},
}

SWEP.Attachments = {
	{
		Name = "Conversion",
		SortOrder = 1.0,
		Icon = Material("entities/att/acwatt_ud_m16_rs_kac.png", "mips smooth"),
		Slot = "m6s",
		ActivateElements = {"socom"},

		Bone = "gun",
		Pos = Vector(-1.652, 0, 0.5),
		Ang = Angle(90, -90, 0)
	},
	{
		Name = "Grenade Type",
		SortOrder = 2.0,
		Icon = Material("entities/att/acwatt_ud_m16_rs_kac.png", "mips smooth"),
		Slot = "h3grenade",

		Bone = "gun",
		Pos = Vector(-1.652, 0, 0.5),
		Ang = Angle(90, -90, 0)
	},
	{
		Name = "Equipment Type",
		SortOrder = 3.0,
		Icon = Material("entities/att/acwatt_ud_m16_rs_kac.png", "mips smooth"),
		Slot = "h3equipment",

		Bone = "gun",
		Pos = Vector(-1.652, 0, 0.5),
		Ang = Angle(90, -90, 0)
	},
}

SWEP.Elements = {
	["socom"] = {
		Bodygroups = { [1] = 1 }
	},
}

function SWEP:TranslateAnimation( data )
	local ae = self.ActivatedElements
	if data.anim == "fire" then
		if ae["socom"] then
			data.anim = "fire_automag"
		end
	end
end