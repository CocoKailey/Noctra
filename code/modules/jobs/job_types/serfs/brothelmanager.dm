/datum/job/brothelmanager
	title = "Bathouse Procurer"
	f_title = "Bathouse Madame"
	tutorial = "You are in charge of the local whorehouse . \
	Your job is to find clients for your whores, and ensure they stay safe and well \
	However, you seek coin, so you must ensure they work when you want them to."
	department_flag = SERFS
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order = JDO_BATHOUSEMANAGER
	faction = FACTION_TOWN
	total_positions = 1
	spawn_positions = 1
	bypass_lastclass = TRUE

	allowed_races = RACES_PLAYER_ALL

	outfit = /datum/outfit/job/brothelmanager
	cmode_music = 'sound/music/cmode/towner/CombatTowner2.ogg'

/datum/outfit/job/brothelmanager/pre_equip(mob/living/carbon/human/H)
	..()

	shoes = /obj/item/clothing/shoes/nobleboot
	belt = /obj/item/storage/belt/leather

	H.adjust_skillrank(/datum/skill/misc/athletics, pick(2,3), TRUE)
	H.adjust_skillrank(/datum/skill/misc/riding, pick(1,2), TRUE) //:3
	H.adjust_skillrank(/datum/skill/misc/music, 2 , TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 2 , TRUE)
	H.adjust_skillrank(/datum/skill/labor/mathematics, 1 , TRUE)
	ADD_TRAIT(H, TRAIT_SEEPRICES, TRAIT_GENERIC)
	if(H.gender == MALE)
		pants = /obj/item/clothing/pants/tights/colored/purple
		shirt = /obj/item/clothing/shirt/undershirt/colored/purple
		armor = /obj/item/clothing/shirt/ornate/tunic
	else
		shirt = /obj/item/clothing/shirt/dress/gown/wintergown
		pants = /obj/item/clothing/pants/tights/colored/purple
	H.change_stat(STATKEY_INT, 2)
	H.change_stat(STATKEY_SPD, 2)
	H.change_stat(STATKEY_PER, -1)
	H.change_stat(STATKEY_STR, -2)
