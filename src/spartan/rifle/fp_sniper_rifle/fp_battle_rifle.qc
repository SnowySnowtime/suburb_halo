$modelname "snowysnowtime\suburb\halo\rifles\fp_battle_rifle.mdl"

$bodygroup "body"
{
	blank
	studio "fp_arms.smd"
}

$bodygroup "battlerifle"
{
	studio "fp_battle_rifle.smd"
	studio "fp_battle_rifle_og.smd"
}
$include "bones.qci"

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\snowysnowtime\suburb\halo\rifles\battlerifle\"
$cdmaterials "models\snowysnowtime\suburb\halo\arms\"

$cbox 0 0 0 0 0 0

$bbox -19.114 -19.847 -47.532 41.111 68.876 20.054

$attachment "muzzle" "gun" 25.30 0.00 4.9 rotate 0 0 0

$poseparameter "move_x" -1 1 loop 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "look_x" -1 1 loop 0
$poseparameter "look_y" -1 1 loop 0

$animation "walk" "anims/first_person moving.smd" fps 30 rotate -90
$animation "walk_back" "anims/first_person moving_reversed.smd" fps 30 rotate -90
$animation "idle" "anims/first_person idle.smd" fps 30 rotate -90
$animation "idle_0" "anims/first_person idle.smd" fps 30 rotate -90 frame 0 0

$animation "look_r" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "idle_0" 0 frame 8 8
$animation "look_r_pos" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "idle_0" 0 frame 4 4
$animation "look_l" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "idle_0" 0 frame 7 7
$animation "look_l_pos" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "idle_0" 0 frame 5 5
$animation "look_u" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "idle_0" 0 frame 9 9
$animation "look_u_pos" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "idle_0" 0 frame 2 2
$animation "look_d" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "idle_0" 0 frame 10 10
$animation "look_d_pos" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "idle_0" 0 frame 3 3

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
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
	blendwidth 3
	fadein 0.1
	fadeout 0
	rotate -90
	loop
	fps 30
}

$sequence "look_x" {
	"look_l"
	"look_r"
	activity "ACT_VM_IDLE" 1
	blend "look_x" -1 1
	delta
	blendwidth 2
	fadein 0.1
	fadeout 0
	rotate -90
	loop
	fps 30
	hidden
}

$sequence "look_y" {
	"look_d"
	"look_u"
	activity "ACT_VM_IDLE" 1
	blend "look_y" -1 1
	delta
	blendwidth 2
	fadein 0.1
	fadeout 0
	rotate -90
	loop
	fps 30
	hidden
}

$sequence "look_x_pos" {
	"look_r_pos"
	"look_l_pos"
	activity "ACT_VM_IDLE" 1
	blend "move_y" -1 1
	delta
	blendwidth 2
	fadein 0.1
	fadeout 0
	rotate -90
	loop
	fps 30
	hidden
}

$sequence "look_y_pos" {
	"look_d_pos"
	"look_u_pos"
	activity "ACT_VM_IDLE" 1
	blend "move_x" -1 1
	delta
	blendwidth 2
	fadein 0.1
	fadeout 0
	rotate -90
	loop
	fps 30
	hidden
}

$sequence "fire_1 var1" {
	"anims\first_person fire_1 var1.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_CL_PLAYSOUND 0 "halo_eject_rifle" }
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
	fadein 0.05
	fadeout 0.2
	node "1"
	rotate -90
	fps 30
}

$sequence "fire_1 var2" {
	"anims\first_person fire_1 var2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_CL_PLAYSOUND 0 "halo_eject_rifle" }
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
	fadein 0.05
	fadeout 0.2
	node "1"
	rotate -90
	fps 30
}

$sequence "fire_1 var3" {
	"anims\first_person fire_1 var3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_CL_PLAYSOUND 0 "halo_eject_rifle" }
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
	fadein 0.05
	fadeout 0.2
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
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
	fadein 0.2
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "put_away" {
	"anims\first_person put_away.smd"
	activity "ACT_VM_HOLSTER" 1
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
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