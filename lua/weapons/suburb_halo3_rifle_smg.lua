
SWEP.Base					= "suburb"
SWEP.Spawnable				= true

--
-- Description
--
SWEP.PrintName				= "SMG"
SWEP.Category				= "Cosmic Decay" -- sounds funny (ffrom stan_jacobs), likely wont keep but good for organizing
SWEP.Description			= [[M7 SMG]]
SWEP.Slot					= 2

--
-- Appearance
--
SWEP.ViewModel				= "models/snowysnowtime/suburb/halo/rifles/fp_smg.mdl"
SWEP.WorldModel				= "models/snowysnowtime/suburb/h3/rifles/c_hum_br55hb.mdl"
SWEP.VMWMClone				= { Pos = Vector(), Ang = Angle(), Size = Vector() }
SWEP.ViewModelFOV			= 54 -- Make an attachment later to allow users to swap between 54/74 ViewModelFOV

SWEP.DefaultBodygroups = "0 0 0 0 0"
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
local halo = ")snowysnowtime/h3/smg/"
SWEP.Sound_Blast			= {
	{ s = "assaultrifle.uc.fire" },
}
SWEP.Sound_TailEXT				= {
	{ s = halo.."ar_tail_ext1.wav" },
	{ s = halo.."ar_tail_ext2.wav" },
	{ s = halo.."ar_tail_ext3.wav" },
}
SWEP.Sound_TailINT				= {
	{ s = halo.."ar_tail_int1.wav" },
	{ s = halo.."ar_tail_int2.wav" },
	{ s = halo.."ar_tail_int3.wav" },
}

SWEP.Sound_Blast_Supp			= {
	{ s = "smgsocom.uc.fire" },
}
SWEP.Sound_TailEXT_Supp				= {
	{ s = halo.."smg_silenced_tail_ext1.wav" },
	{ s = halo.."smg_silenced_tail_ext2.wav" },
	{ s = halo.."smg_silenced_tail_ext3.wav" },
}
SWEP.Sound_TailINT_Supp				= {
	{ s = halo.."smg_silenced_tail_int1.wav" },
	{ s = halo.."smg_silenced_tail_int2.wav" },
	{ s = halo.."smg_silenced_tail_int3.wav" },
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
SWEP.Primary.ClipSize		= 60
SWEP.ChamberSize			= 0
SWEP.Delay					= 1 / 15 -- 1(second) / Halo Delay (RPS)

SWEP.Firemodes				= {
	{
		Mode = math.huge,
	},
	{
		Mode = math.huge,
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
	bone = "gun",
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
			{ t = 0.0,			s = {halo.."smg_ready1.wav",halo.."smg_ready2.wav",halo.."smg_ready3.wav"} },
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
		Source = "fire_1 var1",
		ShellEjectTime = 0,
	},
	["fire_empty"] = {
		Source = "fire_1 var1",
		ShellEjectTime = 0,
	},
	["grenade_throw_frag"]	= {
		Source = "throw_grenade",
		Events = {
			{ t = 0,			s = "halo.uc.grenade_throw_generic" },
		},
		ShellEjectTime = 0,
	},
	["equipment_throw_bubble"]	= {
		Source = "throw_equipment",
		ShellEjectTime = 0,
	},
	["melee"]	= {
		Source = "melee_strike_1",
		ShellEjectTime = 0,
	},
	["reload"]	= {
		Source = "reload",
		Events = {
			{ t = 0.1,			s = {halo.."reload0-1.wav",halo.."reload0-2.wav",halo.."reload0-3.wav"} },
			{ t = 0.9,			s = {halo.."reload1-1.wav",halo.."reload1-2.wav",halo.."reload1-3.wav"} },
			{ t = 1.5,			s = {halo.."reload2-1.wav",halo.."reload2-2.wav",halo.."reload2-3.wav"} },
		},
		ReloadingTime = 2.0,
		LoadIn = 1.5,
	},
	["reload_empty"] = {
		Source = "reload",
		Events = {
			{ t = 0.1,			s = {halo.."reload0-1.wav",halo.."reload0-2.wav",halo.."reload0-3.wav"} },
			{ t = 0.9,			s = {halo.."reload1-1.wav",halo.."reload1-2.wav",halo.."reload1-3.wav"} },
			{ t = 1.5,			s = {halo.."reload2-1.wav",halo.."reload2-2.wav",halo.."reload2-3.wav"} },
		},
		ReloadingTime = 2.0,
		LoadIn = 1.5,
	},
}

SWEP.Attachments = {
	{
		Name = "Conversion",
		SortOrder = 1.0,
		Icon = Material("entities/att/acwatt_ud_m16_rs_kac.png", "mips smooth"),
		Slot = "m7s",
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
		Bodygroups = { [3] = 1 }
	},
}

-- Only here temporarily because fucking around and finding out.
function SWEP:SwitchFiremode(prev)
	-- lol?
	local nextfm = self:GetFiremode() + 1
	if nextfm > #self:GetStat("Firemodes") then
		nextfm = 1
	end
	if self:GetFiremode() != nextfm then
		self:SetFiremode(nextfm)
		if self.Animations["grenade_throw_frag"] then
			self:SendAnimChoose( "grenade_throw_frag", "grenade_throw_frag", multi )
		end
		timer.Simple(0, function() self:RegenStats() end) -- HACK: Some weird shit happens with AutoBurst...
		if (game.SinglePlayer() and SERVER or !game.SinglePlayer() and true) then
		end
	end
end