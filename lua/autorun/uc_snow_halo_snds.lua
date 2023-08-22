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
local mlr 	= "excavator/"
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

--[[
rifles
--]]

sound.Add(
{
    name = "assaultrifle.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
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
    level = 140,
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
    level = 140,
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
    level = 140,
	pitch = {98,102},
    sound = {halo..car.."carbine_atlas1.wav",
	halo..car.."carbine_atlas2.wav",
	halo..car.."carbine_atlas3.wav",
	}
})

sound.Add(
{
    name = "plasmarifle.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = {98,102},
    sound = halo..pr.."plas_rifle_fire.wav",
})

sound.Add(
{
    name = "shotgun.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
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
    level = 70,
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
    level = 140,
	pitch = {98,102},
    sound = {halo..sr.."sniper_fire_h3_1.wav",
	halo..sr.."sniper_fire_h3_2.wav",
	halo..sr.."sniper_fire_h3_3.wav",
	halo..sr.."sniper_fire_h3_4.wav",
	}
})

sound.Add(
{
    name = "spiker.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = {98,102},
    sound = {halo..sp.."spiker_fire1.wav",
	halo..sp.."spiker_fire2.wav",
	halo..sp.."spiker_fire3.wav",
	halo..sp.."spiker_fire4.wav",
	halo..sp.."spiker_fire5.wav",
	halo..sp.."spiker_fire6.wav",
	}
})

--[[
pistols
--]]

sound.Add(
{
    name = "excavator.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
	level = 140,
	pitch = {98,102},
    sound = {halo..mlr.."excavator1.wav",
	halo..mlr.."excavator2.wav",
	halo..mlr.."excavator3.wav",
	}
})

sound.Add(
{
    name = "magnum.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
	level = 140,
	pitch = {98,102},
    sound = {halo..pist.."magnum_stereo1.wav",
	halo..pist.."magnum_stereo2.wav",
	halo..pist.."magnum_stereo3.wav",
	halo..pist.."magnum_stereo4.wav",
	}
})

sound.Add(
{
    name = "magnumsocom.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 70,
	pitch = {98,102},
    sound = {halo..pist.."magnum_silenced12.wav",
	halo..pist.."magnum_silenced11.wav",
	halo..pist.."magnum_silenced10.wav",
	halo..pist.."magnum_silenced9.wav",
	}
})

sound.Add(
{
    name = "needler.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
	level = 140,
	pitch = {98,102},
    sound = {halo..ndlr.."needlefire11.wav",
	halo..ndlr.."needlefire12.wav",
	halo..ndlr.."needlefire13.wav",
	}
})

sound.Add(
{
    name = "plasmapistol.uc.fire",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 140,
	pitch = {98,102},
    sound = {halo..pp.."plasmarifle1_ster.wav",
	halo..pp.."plasmarifle2_ster.wav",
	halo..pp.."plasmarifle3_ster.wav",
	halo..pp.."plasmarifle4_ster.wav",
	halo..pp.."plasmarifle5_ster.wav",
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
    level = 70,
	pitch = {98,102},
    sound = {halo..shrd.."claymore_thrown.wav",
	halo..shrd.."frag_thrown.wav",
	halo..shrd.."plas_thrown.wav",
	halo..shrd.."firebomb_thrown.wav",
	}
})