/datum/job/whore
	title = "Bathouse Attendant"
	tutorial = "Whether for coin or pleasure . \
	You've found yourself working at the bathouse \
	serving anyone who pays enough coin to your master/mistress to requestiion your services."
	department_flag = SERFS
	job_flags = (JOB_ANNOUNCE_ARRIVAL | JOB_SHOW_IN_CREDITS | JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	display_order = JDO_TAILOR
	faction = FACTION_TOWN
	total_positions = 2
	spawn_positions = 3
	bypass_lastclass = TRUE

	allowed_races = RACES_PLAYER_ALL

	outfit = /datum/outfit/job/whore
	cmode_music = 'sound/music/cmode/towner/CombatTowner2.ogg'

/datum/outfit/job/whore/pre_equip(mob/living/carbon/human/H)
	..()

	shoes = /obj/item/clothing/shoes/nobleboot
	belt = /obj/item/storage/belt/leather

	H.adjust_skillrank(/datum/skill/misc/athletics, pick(3,4, TRUE)
	H.adjust_skillrank(/datum/skill/misc/riding, pick(2,4), TRUE) //:3
	H.adjust_skillrank(/datum/skill/misc/music, 4 , TRUE)
	H.adjust_skillrank(/datum/skill/misc/reading, 3 , TRUE)
	ADD_TRAIT(H,  TRAIT_GENERIC)
	if(H.gender == MALE)
		pants = /obj/item/clothing/pants/tights/colored/purple
		shirt = /obj/item/clothing/shirt/undershirt/lowcut
	else
		shirt = /obj/item/clothing/shirt/dress/silkydress
		pants = /obj/item/clothing/pants/tights/colored/purple
	H.change_stat(STATKEY_INT, 3)
	H.change_stat(STATKEY_SPD, -1)
	H.change_stat(STATKEY_PER, -2)
	H.change_stat(STATKEY_STR, -1)
