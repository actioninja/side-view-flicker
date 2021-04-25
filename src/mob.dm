/mob
    icon = 'icons/mobs.dmi'
    icon_state = "player"
    density = 1

/proc/new_ma(in_layer)
	var/mutable_appearance/ma = new()
	ma.icon = 'icons/mobs.dmi'
	ma.icon_state = "overlay_[in_layer]"
	ma.layer = in_layer
	return ma

/mob/New()
	overlays += new_ma(1)
	overlays += new_ma(2)
	overlays += new_ma(3)
	overlays += new_ma(4)
	overlays += new_ma(5)
	underlays += icon('icons/mobs.dmi', "underlay")
	..()


/mob/lad
	density = 0
	New()
		..()
		TestWalk()

/mob/lad/proc/TestWalk() spawn
	while(1)
		step(src, pick(1,2,4,8))
		sleep(10)