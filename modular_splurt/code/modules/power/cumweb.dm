/obj/structure/chair/loveweb
	name = "Loveweb altar"
	icon = 'modular_splurt/icons/obj/power.dmi'
	icon_state = "altar"
	desc = "the loveweb altar"
	density = 0
	anchored = 1
	var/powerlevel = 0
	var/storeLib = 1
	var/storeMort = 1
	var/powerOutput = 0
	var/status = FALSE

	var/mob/living/carbon/human/Victim = null

/obj/structure/chair/loveweb/buckle_mob(mob/living/carbon/human/M as mob, mob/user as mob)
	M.visible_message("<B>[M.name]</B> is locked on the [src]!")

	M.buckled = src
	M.loc = src.loc
	M.dir = src.dir

	src.add_fingerprint(user)

	Victim = M

	M.update_icons()
	M.update_body()
