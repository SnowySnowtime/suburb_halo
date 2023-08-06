$modelname "weapons/rifle/fp_battle_rifle_animations_spartan.mdl"

$bodygroup "body"
{
	studio "fp_arms.smd"
}
$bodygroup "br"
{
	studio "fp_battle_rifle.smd"
}
$include "bones.qci"

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "weapons\rifle\battle_rifle\"

$cbox 0 0 0 0 0 0

$bbox -19.114 -19.847 -47.532 41.111 68.876 20.054

$poseparameter "move_x" -1 1 loop 0

$animation "walk" "anims/first_person moving.smd" fps 30 rotate -90
$animation "walk_back" "anims/first_person moving_reversed.smd" fps 30 rotate -90
$animation "idle" "anims/first_person idle.smd" fps 30 rotate -90

$sequence "idle_raw" {
	"anims\first_person idle.smd"
	activity "ACT_VM_IACT_VM_PULLBACK_LOW" 1
	fadein 0.1
	fadeout 0
	rotate -90
	fps 30
}

$sequence "idle_1" {
	"walk_back"
	"idle"
	"walk"
	activity "ACT_VM_IDLE" 1
	blend "move_x" -1 1
	blendwidth 3
	fadein 0.1
	fadeout 0
	rotate -90
	fps 30
}

$sequence "fire_1 var1" {
	"anims\first_person fire_1 var1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_CL_PLAYSOUND 0 "halo_eject_rifle" }
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "fire_1 var2" {
	"anims\first_person fire_1 var2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_CL_PLAYSOUND 0 "halo_eject_rifle" }
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "fire_1 var3" {
	"anims\first_person fire_1 var3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_CL_PLAYSOUND 0 "halo_eject_rifle" }
	fadein 0
	fadeout 0
	node "1"
	rotate -90
	fps 30
}

$sequence "reload" {
	"anims\first_person reload_full.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "reload_empty" {
	"anims\first_person reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "ready" {
	"anims\first_person ready.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "put_away" {
	"anims\first_person put_away.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "melee_strike_1" {
	"anims\first_person melee_strike_1.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.1
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "melee_strike_2" {
	"anims\first_person melee_strike_2.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.1
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "posing var1" {
	"anims\first_person posing var1.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "posing var2" {
	"anims\first_person posing var2.smd"
	activity "ACT_VM_FIDGET" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "throw_grenade" {
	"anims\first_person throw_grenade.smd"
	activity "ACT_VM_THROW" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "throw_equipment" {
	"anims\first_person throw_equipment.smd"
	activity "ACT_VM_PULLPIN" 1
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}