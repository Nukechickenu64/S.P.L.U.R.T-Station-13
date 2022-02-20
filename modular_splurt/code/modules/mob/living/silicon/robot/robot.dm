// Slaver medical borg
/mob/living/silicon/robot/modules/syndicate/slaver/medical
	faction = list(ROLE_SLAVER)
	req_access = list(ACCESS_SLAVER)
	icon_state = "synd_medical"
	set_module = /obj/item/robot_module/syndicate_medical/slaver
	playstyle_string = "<span class='big bold'>You are a Slaver medical cyborg!</span><br>\
						<b>You are armed with powerful medical tools to aid you in your mission: help the slavers kidnap crew. \
						Your hypospray will produce Restorative Nanites, a wonder-drug that will heal most types of bodily damages, including clone and brain damage. It also produces morphine for offense. \
						Your defibrillator paddles can revive slavers through their hardsuits, or can be used on harm intent to shock enemies! \
						Your energy saw functions as a circular saw, but can be activated to deal more damage.</b>"

/mob/living/silicon/robot/modules/syndicate/slaver/medical/Initialize()
	. = ..()

	laws = new /datum/ai_laws/slaver_override
	laws.associate(src)

/mob/living/silicon/robot/modules/slaver
	faction = list(ROLE_SLAVER)
	req_access = list(ACCESS_SLAVER)
	emagged = TRUE
	lawupdate = FALSE

// Slaver generic borg
/mob/living/silicon/robot/modules/slaver/Initialize()
	. = ..()

	SetEmagged(1)
	lawupdate = FALSE
	set_connected_ai(null)
	laws = new /datum/ai_laws/slaver_override
	laws.associate(src)
	update_icons()
