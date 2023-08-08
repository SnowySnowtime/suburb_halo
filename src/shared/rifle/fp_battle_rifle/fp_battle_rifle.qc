$modelname "snowysnowtime\suburb\halo\rifles\battle_rifle.mdl"

$bodygroup "body"
{
	studio "fp_battle_rifle.smd"
}
$include "bones.qci"
$include "bonemerge.qci"

$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\snowysnowtime\suburb\halo\rifles\battlerifle\"

$cbox 0 0 0 0 0 0

$bbox -19.114 -19.847 -47.532 41.111 68.876 20.054

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.1
	fadeout 0.1
	rotate -90
	fps 30
}
$include "_phy.qci"