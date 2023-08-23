$modelname "snowysnowtime\suburb\halo\pistols\fp_needler.mdl"

$bodygroup "body"
{
	blank
	studio "fp_arms.smd"
}

$bodygroup "needler"
{
	studio "fp_needler.smd"
}
$include "bones.qci"

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\snowysnowtime\suburb\halo\pistols\needler\"
$cdmaterials "models\snowysnowtime\suburb\halo\arms\"

$cbox 0 0 0 0 0 0

$bbox -19.114 -19.847 -47.532 41.111 68.876 20.054

$attachment "muzzle" "gun" 25.30 0.00 4.9 rotate 0 0 0

$poseparameter "move_x" -1 1 loop 0
$poseparameter "move_y" -1 1 loop 0
$poseparameter "look_x" -1 1 loop 0
$poseparameter "look_y" -1 1 loop 0

$animation "idle" "anims/first_person idle.smd" fps 30 rotate -90 frame 0 1
$animation "idle_0" "anims/first_person idle.smd" fps 30 rotate -90 frame 0 0
$animation "idling" "anims/first_person idle.smd" fps 30 rotate -90
$animation "walk_0" "anims/first_person moving.smd" fps 30 rotate -90 frame 0 0
$animation "walk_rest" "anims/first_person moving.smd" fps 60 subtract "walk_0" 0 rotate -90 frame 0 0
$animation "walk" "anims/first_person moving.smd" fps 60 subtract "walk_0" 0 rotate -90
$animation "walk_back" "anims/first_person moving_reversed.smd" fps 60 subtract "walk_0" 0 rotate -90
$animation "look_rest" "anims/first_person overlays.smd" fps 30 rotate -90 frame 0 0
$animation "pitch_rest" "anims/first_person pitch_and_turn.smd" fps 30 rotate -90 frame 0 0

$animation "look_0" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 0 0
$animation "look_r" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 8 8
$animation "look_r_pos" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 5 5
$animation "look_l" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 9 9
$animation "look_l_pos" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 4 4
$animation "look_u" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 6 6
$animation "look_d" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 7 7

$animation "look_u_pos" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 3 3
$animation "look_d_pos" "anims/first_person overlays.smd" fps 30 rotate -90 subtract "look_rest" 0 frame 2 2

$animation "look_pitch_2" "anims/first_person pitch_and_turn.smd" fps 30 rotate -90 subtract "pitch_rest" 0 frame 7 7
$animation "look_pitch_0" "anims/first_person pitch_and_turn.smd" fps 30 rotate -90 subtract "pitch_rest" 0 frame 0 0
$animation "look_pitch_1" "anims/first_person pitch_and_turn.smd" fps 30 rotate -90 subtract "pitch_rest" 0 frame 5 5

//
//
// Blamite Needle Parameters
$poseparameter "ammo" 20 0 loop 0

$weightlist "ammo" {
	 "needle_01" 1
	 "needle_02" 1
	 "needle_03" 1
	 "needle_04" 1
	 "needle_05" 1
	 "needle_06" 1
	 "needle_07" 1
	 "needle_08" 1
	 "needle_09" 1
	 "needle_10" 1
	 "needle_11" 1
	 "needle_12" 1
	 "needle_13" 1
	 "needle_14" 1
}
//							More Ammo Stuff
$animation "ammunition0" "anims/first_person ammunition.smd" frames 0 0 weightlist "ammo" subtract idle_0 0 // Empty
$animation "ammunition1" "anims/first_person ammunition.smd" frames 1 1 weightlist "ammo"  subtract idle_0 0 // 1 in Clip
$animation "ammunition2" "anims/first_person ammunition.smd" frames 2 2 weightlist "ammo"  subtract idle_0 0
$animation "ammunition3" "anims/first_person ammunition.smd" frames 3 3 weightlist "ammo"  subtract idle_0 0
$animation "ammunition4" "anims/first_person ammunition.smd" frames 4 4 weightlist "ammo"  subtract idle_0 0
$animation "ammunition5" "anims/first_person ammunition.smd" frames 5 5 weightlist "ammo"  subtract idle_0 0
$animation "ammunition6" "anims/first_person ammunition.smd" frames 6 6 weightlist "ammo"  subtract idle_0 0
$animation "ammunition7" "anims/first_person ammunition.smd" frames 7 7 weightlist "ammo"  subtract idle_0 0
$animation "ammunition8" "anims/first_person ammunition.smd" frames 8 8 weightlist "ammo"  subtract idle_0 0
$animation "ammunition9" "anims/first_person ammunition.smd" frames 9 9 weightlist "ammo"  subtract idle_0 0
$animation "ammunition10" "anims/first_person ammunition.smd" frames 10 10 weightlist "ammo"  subtract idle_0 0
$animation "ammunition11" "anims/first_person ammunition.smd" frames 11 11 weightlist "ammo"  subtract idle_0 0
$animation "ammunition12" "anims/first_person ammunition.smd" frames 12 12 weightlist "ammo"  subtract idle_0 0
$animation "ammunition13" "anims/first_person ammunition.smd" frames 13 13 weightlist "ammo"  subtract idle_0 0
$animation "ammunition14" "anims/first_person ammunition.smd" frames 14 14 weightlist "ammo"  subtract idle_0 0
$animation "ammunition15" "anims/first_person ammunition.smd" frames 15 15 weightlist "ammo"  subtract idle_0 0
$animation "ammunition16" "anims/first_person ammunition.smd" frames 16 16 weightlist "ammo"  subtract idle_0 0
$animation "ammunition17" "anims/first_person ammunition.smd" frames 17 17 weightlist "ammo"  subtract idle_0 0
$animation "ammunition18" "anims/first_person ammunition.smd" frames 18 18 weightlist "ammo"  subtract idle_0 0
$animation "ammunition19" "anims/first_person ammunition.smd" frames 19 19 weightlist "ammo"  subtract idle_0 0 // Full

//							Ammo Stuff End
//
//

$sequence "idle_1" {
	"idling"
	activity "ACT_VM_IACT_VM_PULLBACK_LOW" 1
	fadein 0.1
	fadeout 0
	rotate -90
	addlayer walking
	addlayer look_x
	addlayer look_y
	addlayer look_x_pos
	addlayer look_y_pos
	addlayer look_pitch_s
	loop
	fps 30
}

$sequence "walking" {
	"walk_back"
	"walk_rest"
	"walk"
	activity "ACT_VM_IDLE" 1
	blend "move_x" -1 1
	blendwidth 3
	delta
	fadein 0.1
	fadeout 0
	rotate -90
	loop
	fps 30
	hidden
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

$sequence "look_pitch_s" {
	"look_pitch_2"
	"look_pitch_0"
	"look_pitch_1"
	activity "ACT_VM_IDLE" 1
	blend "look_x" -1 1
	delta
	blendwidth 3
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
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
	addlayer look_pitch_s
	fadein 0.05
	fadeout 0.2
	node "1"
	rotate -90
	fps 30
}

$sequence "fire_1 var2" {
	"anims\first_person fire_1 var2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
	addlayer look_pitch_s
	fadein 0.05
	fadeout 0.2
	node "1"
	rotate -90
	fps 30
}

$sequence "fire_1 var3" {
	"anims\first_person fire_1 var3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	addlayer look_x
	addlayer look_x_pos
	addlayer look_y
	addlayer look_y_pos
	addlayer look_pitch_s
	fadein 0.05
	fadeout 0.2
	node "1"
	rotate -90
	fps 30
}

$sequence "reload" {
	"anims\first_person reload_full.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.01
	fadeout 0.2
	rotate -90
	fps 30
}

$sequence "reload_empty" {
	"anims\first_person reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.01
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
	addlayer look_pitch_s
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
	addlayer look_pitch_s
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

$sequence "ammo" {
	"ammunition0"
	"ammunition1"
	"ammunition2"
	"ammunition3"
	"ammunition4"
	"ammunition5"
	"ammunition6"
	"ammunition7"
	"ammunition8"
	"ammunition9"
	"ammunition10"
	"ammunition11"
	"ammunition12"
	"ammunition13"
	"ammunition14"
	"ammunition15"
	"ammunition16"
	"ammunition17"
	"ammunition18"
	"ammunition19"
	autoplay
	activity "ACT_VM_PULLPIN" 1
	blend "ammo" 20 0
	blendwidth 20
	delta
	snap
	hidden
}