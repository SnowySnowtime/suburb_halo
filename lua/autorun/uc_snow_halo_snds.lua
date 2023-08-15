local halo 	= ")snowysnowtime/h3/"
local ab 	= "assaultbomb/"
local ar 	= "assaultrifle/"
local beam 	= "beamrifle/"
local br 	= "battlerifle/fire_burst_h3/"
local bs 	= "bruteshot/"
local car 	= "covenantcarbine/"
local es 	= "energysword/"
local flk 	= "flakcannon/"
local flmp 	= "flag/"
local gh 	= "gravityhammer/"
local m6c 	= "automag/"
local mlr 	= "mauler/"
local ndlr 	= "needler/"
local ob 	= "oddball/"
local pist 	= "magnum/"
local pp 	= "plasmapistol/"
local pr 	= "plasmarifle/"
local rl 	= "rocketlauncher/"
local sb 	= "sentinelbeam/"
local sg 	= "shotgun/"
local sl 	= "spartanlaser/"
local smg 	= "smg/"
local sp 	= "spiker/"
local sr 	= "sniperrifle/"

local shrd 	= "shared/"

sound.Add(
{
    name = "assaultrifle.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 115,
	pitch = {98,102},
    sound = {halo..ar.."19103_b.wav",
	halo..ar.."19203_b.wav",
	halo..ar.."19204_b.wav",
	}
})

sound.Add(
{
    name = "battlerifle.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 115,
	pitch = {98,102},
    sound = {halo..br.."battle_rifle_fire1.wav",
	halo..br.."battle_rifle_fire2.wav",
	halo..br.."battle_rifle_fire3.wav",
	halo..br.."battle_rifle_fire4.wav",
	halo..br.."battle_rifle_fire5.wav",
	halo..br.."battle_rifle_fire6.wav",
	halo..br.."battle_rifle_fire7.wav",
	halo..br.."battle_rifle_fire8.wav",
	}
})

sound.Add(
{
    name = "beamrifle.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 115,
	pitch = {98,102},
    sound = {halo..beam.."cov_snip_shot9.wav",
	halo..beam.."cov_snip_shot10.wav",
	}
})

sound.Add(
{
    name = "covenantcarbine.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 115,
	pitch = {98,102},
    sound = {halo..car.."carbine_atlas1.wav",
	halo..car.."carbine_atlas2.wav",
	halo..car.."carbine_atlas3.wav",
	}
})

sound.Add(
{
    name = "shotgun.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 115,
	pitch = {98,102},
    sound = {halo..sg.."shotgun1.wav",
	halo..sg.."shotgun2.wav",
	halo..sg.."shotgun3.wav",
	}
})

sound.Add(
{
    name = "shotgun.uc.reload",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 90,
	pitch = {98,102},
    sound = {halo..sg.."shotgun_reload_loop1.wav",
	halo..sg.."shotgun_reload_loop2.wav",
	halo..sg.."shotgun_reload_loop3.wav",
	halo..sg.."shotgun_reload_loop4.wav",
	halo..sg.."shotgun_reload_loop5.wav",
	halo..sg.."shotgun_reload_loop6.wav",
	halo..sg.."shotgun_reload_loop7.wav",
	halo..sg.."shotgun_reload_loop8.wav",
	}
})

sound.Add(
{
    name = "smgsocom.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 115,
	pitch = {98,102},
    sound = {halo..smg.."smg_recon1.wav",
	halo..smg.."smg_recon2.wav",
	halo..smg.."smg_recon3.wav",
	}
})

sound.Add(
{
    name = "sniperrifle.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 115,
	pitch = {98,102},
    sound = {halo..sr.."sniper_fire_h3_1.wav",
	halo..sr.."sniper_fire_h3_2.wav",
	halo..sr.."sniper_fire_h3_3.wav",
	halo..sr.."sniper_fire_h3_4.wav",
	}
})

--[[
funny
--]]

sound.Add(
{
    name = "halo.uc.grenade_throw_generic",
    channel = CHAN_STATIC,
    volume = 1.0,
    soundlevel = 115,
	pitch = {98,102},
    sound = {halo..shrd.."claymore_thrown.wav",
	halo..shrd.."frag_thrown.wav",
	halo..shrd.."plas_thrown.wav",
	halo..shrd.."firebomb_thrown.wav",
	}
})