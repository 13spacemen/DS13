/obj/aura/radiant_aura
	name = "radiant aura"
	icon = 'icons/effects/effects.dmi'
	icon_state = "fire_goon"
	layer = ABOVE_WINDOW_LAYER
	light_power = 0.6
	light_range = 6
	light_color = "#e09d37"

/obj/aura/radiant_aura/added_to(var/mob/living/L)
	..()
	to_chat(L,"<span class='notice'>A bubble of light appears around you, exuding protection and warmth.</span>")

/obj/aura/radiant_aura/removed()
	to_chat(user, "<span class='warning'>Your protective aura dissipates, leaving you feeling cold and unsafe.</span>")
	..()

/obj/aura/radiant_aura/bullet_act(var/obj/item/projectile/P, var/def_zone)
	if(P.check_armour == "laser")
		user.visible_message("<span class='warning'>\The [P] refracts, bending into \the [user]'s aura.</span>")
		return AURA_FALSE
	return 0