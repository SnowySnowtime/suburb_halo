
SWEP.Base					= "suburb"
SWEP.Spawnable				= true

--
-- Description
--
SWEP.PrintName				= "Battle Rifle"
SWEP.Category				= "Cosmic Decay" -- sounds funny (ffrom stan_jacobs), likely wont keep but good for organizing
SWEP.Description			= [[BR55Heavy-Barrel Service Rifle]]
SWEP.Slot					= 2

--
-- Appearance
--
SWEP.ViewModel				= "models/snowysnowtime/suburb/halo/rifles/fp_battle_rifle.mdl"
SWEP.WorldModel				= "models/snowysnowtime/suburb/h3/rifles/c_hum_br55hb.mdl"
SWEP.VMWMClone				= { Pos = Vector(), Ang = Angle(), Size = Vector() }
SWEP.ViewModelFOV			= 54 -- Make an attachment later to allow users to swap between 54/74 ViewModelFOV

SWEP.DefaultBodygroups = "0 0"
SWEP.DefaultSkin = 0

SWEP.ActivePose = {
	Pos = Vector( 0, 0, -0.5 ),
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
local halo = ")snowysnowtime/h3/battlerifle/fire_burst_h3/"
local p1 = ")snowysnowtime/h3/battlerifle/eject_br/"
local tail = ")/snowysnowtime/h3/assaultrifle/"
SWEP.Sound_Blast			= {
	{ s = "battlerifle.uc.fire" },
}
SWEP.Sound_Mech				= {
	{ s = p1.."ejectshell.wav" },
	{ s = p1.."ejectshell2.wav" },
	{ s = p1.."ejectshell3.wav" },
	{ s = p1.."ejectshell4.wav" },
}
SWEP.Sound_TailEXT				= {
	{ s = tail.."ar_tail_ext1.wav" },
	{ s = tail.."ar_tail_ext2.wav" },
	{ s = tail.."ar_tail_ext3.wav" },
}
SWEP.Sound_TailINT				= {
	{ s = tail.."ar_tail_int1.wav" },
	{ s = tail.."ar_tail_int2.wav" },
	{ s = tail.."ar_tail_int3.wav" },
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
SWEP.Primary.ClipSize		= 36
SWEP.ChamberSize			= 0
SWEP.Delay					= 1 / 15 -- 1(second) / Halo Delay (RPS)

SWEP.Firemodes				= {
	{
		Mode = 3,
		PostBurstDelay = 0.28,
		RunawayBurst = true,
		AutoBurst = true
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
			{ t = 0.0,			s = {"snowysnowtime/h3/battlerifle/br_draw1.wav","snowysnowtime/h3/battlerifle/br_draw2.wav"} },
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
		Source = {"fire_1 var1", "fire_1 var2", "fire_1 var3"},
		ShellEjectTime = 0,
	},
	["fire_empty"] = {
		Source = {"fire_1 var1", "fire_1 var2", "fire_1 var3"},
		ShellEjectTime = 0,
	},
	["reload"]	= {
		Source = "reload",
		Events = {
			{ t = 0.125,			s = {"snowysnowtime/h3/battlerifle/br_reload1-1.wav","snowysnowtime/h3/battlerifle/br_reload2-1.wav","snowysnowtime/h3/battlerifle/br_reload3-1.wav"} },
			{ t = 0.85,			s = {"snowysnowtime/h3/battlerifle/br_reload1-2.wav","snowysnowtime/h3/battlerifle/br_reload2-2.wav","snowysnowtime/h3/battlerifle/br_reload3-2.wav"} },
			{ t = 1.4,			s = {"snowysnowtime/h3/battlerifle/br_reload1-3.wav","snowysnowtime/h3/battlerifle/br_reload2-3.wav","snowysnowtime/h3/battlerifle/br_reload3-3.wav"} },
		},
		ReloadingTime = 2.0,
		LoadIn = 1.5,
	},
	["reload_empty"] = {
		Source = "reload",
		Events = {
			{ t = 0.125,			s = {"snowysnowtime/h3/battlerifle/br_reload1-1.wav","snowysnowtime/h3/battlerifle/br_reload2-1.wav","snowysnowtime/h3/battlerifle/br_reload3-1.wav"} },
			{ t = 0.85,			s = {"snowysnowtime/h3/battlerifle/br_reload1-2.wav","snowysnowtime/h3/battlerifle/br_reload2-2.wav","snowysnowtime/h3/battlerifle/br_reload3-2.wav"} },
			{ t = 1.4,			s = {"snowysnowtime/h3/battlerifle/br_reload1-3.wav","snowysnowtime/h3/battlerifle/br_reload2-3.wav","snowysnowtime/h3/battlerifle/br_reload3-3.wav"} },
		},
		ReloadingTime = 2.0,
		LoadIn = 1.5,
	},
}

SWEP.Attachments = {
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
}