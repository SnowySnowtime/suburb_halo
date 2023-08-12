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