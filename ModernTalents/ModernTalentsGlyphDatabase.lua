------------------------------------------------------          
-- GlyphDatabase v3.3.0 - Glyph System       
-- Functional in WotLK 3.3.5a (AzerothCore)
-- Authors: chingateague O_o
------------------------------------------------------ 

GLYPH_DATABASE = {
    HUNTER = {
    MAJOR = {
        {name = "Arcane Shot", spellID = 56824, itemID = 42901, icon = "Interface\\Icons\\ability_impalingbolt"},
        {name = "Aimed Shot", spellID = 56826, itemID = 42902, icon = "Interface\\Icons\\ability_hunter_aimedshot"},
        {name = "Aspect of the Viper", spellID = 56829, itemID = 42903, icon = "Interface\\Icons\\ability_trueshot"},
        {name = "Multi-Shot", spellID = 56830, itemID = 42904, icon = "Interface\\Icons\\ability_upgrademoonglaive"},
        {name = "Freezing Trap", spellID = 56844, itemID = 42905, icon = "Interface\\Icons\\spell_frost_freezingbreath"},
        {name = "Explosive Trap", spellID = 56846, itemID = 42907, icon = "Interface\\Icons\\spell_fire_selfdestruct"},
        {name = "Bestial Wrath", spellID = 56833, itemID = 42908, icon = "Interface\\Icons\\ability_hunters_pet_training"},
        {name = "Steady Shot", spellID = 56850, itemID = 42909, icon = "Interface\\Icons\\ability_hunter_steadyshot"},
        {name = "Rapid Fire", spellID = 56856, itemID = 42911, icon = "Interface\\Icons\\ability_hunter_runningshot"},
        {name = "Serpent Sting", spellID = 56837, itemID = 42912, icon = "Interface\\Icons\\ability_hunter_quickshot"},
        {name = "Chimera Shot", spellID = 63066, itemID = 45731, icon = "Interface\\Icons\\ability_hunter_chimerashot"},
        {name = "Kill Shot", spellID = 63065, itemID = 45733, icon = "Interface\\Icons\\ability_hunter_killshot"}
    },

    MINOR = {
        {name = "Aspect of the Cheetah", spellID = 57870, itemID = 43338, icon = "Interface\\Icons\\ability_mount_jungletiger"},
        {name = "Aspect of the Hawk", spellID = 57868, itemID = 43350, icon = "Interface\\Icons\\ability_hunter_aspectofthehawk"},
        {name = "Aspect of the Monkey", spellID = 57866, itemID = 43351, icon = "Interface\\Icons\\ability_hunter_aspectofthemonkey"},
        {name = "Feign Death", spellID = 57855, itemID = 43335, icon = "Interface\\Icons\\ability_rogue_feint"},
        {name = "Distracting Shot", spellID = 57869, itemID = 43356, icon = "Interface\\Icons\\spell_arcane_blink"},
        {name = "Revive Pet", spellID = 57856, itemID = 43355, icon = "Interface\\Icons\\ability_hunter_beastsoothe"}
    }
},
    MAGE = {
    MAJOR = {
        {name = "Fireball", spellID = 56368, itemID = 42734, icon = "Interface\\Icons\\spell_fire_fireball02"},
        {name = "Fire Blast", spellID = 56369, itemID = 42735, icon = "Interface\\Icons\\spell_fire_fireball"},
        {name = "Frostbolt", spellID = 56370, itemID = 42736, icon = "Interface\\Icons\\spell_frost_frostbolt02"},
        {name = "Mage Armor", spellID = 56371, itemID = 42737, icon = "Interface\\Icons\\spell_magearmor"},
        {name = "Ice Armor", spellID = 56372, itemID = 42738, icon = "Interface\\Icons\\spell_icearmor"},
        {name = "Molten Armor", spellID = 56373, itemID = 42739, icon = "Interface\\Icons\\spell_fire_flametounge"},
        {name = "Evocation", spellID = 56380, itemID = 42743, icon = "Interface\\Icons\\spell_nature_purge"},
        {name = "Frostfire Bolt", spellID = 56381, itemID = 42744, icon = "Interface\\Icons\\spell_fire_fireball02"},
        {name = "Ice Lance", spellID = 56384, itemID = 42746, icon = "Interface\\Icons\\spell_frost_frostbolt"},
        {name = "Ice Block", spellID = 56377, itemID = 42741, icon = "Interface\\Icons\\spell_frost_frost"},
        {name = "Arcane Power", spellID = 63093, itemID = 45736, icon = "Interface\\Icons\\spell_nature_starfall"},
        {name = "Pyroblast", spellID = 63091, itemID = 45737, icon = "Interface\\Icons\\spell_fire_fireball02"}
    },

    MINOR = {
        {name = "Frost Armor", spellID = 56382, itemID = 43339, icon = "Interface\\Icons\\spell_frost_frostarmor02"},
        {name = "Slow Fall", spellID = 56383, itemID = 43364, icon = "Interface\\Icons\\spell_magic_featherfall"},
        {name = "Conjure Mana Gem", spellID = 56379, itemID = 43357, icon = "Interface\\Icons\\inv_drink_15"},
        {name = "Polymorph", spellID = 56375, itemID = 43360, icon = "Interface\\Icons\\spell_nature_polymorph"},
        {name = "Dampen Magic", spellID = 56378, itemID = 43359, icon = "Interface\\Icons\\spell_nature_purge"},
        {name = "Living Flame", spellID = 56376, itemID = 43361, icon = "Interface\\Icons\\spell_fire_fire"}
    }
    },
    WARRIOR = {
    MAJOR = {
        {name = "Bloodrage", spellID = 58375, itemID = 43413, icon = "Interface\\Icons\\ability_racial_bloodrage"},
        {name = "Heroic Strike", spellID = 58357, itemID = 43414, icon = "Interface\\Icons\\ability_rogue_ambush"},
        {name = "Shield Slam", spellID = 58388, itemID = 43425, icon = "Interface\\Icons\\ability_warrior_shieldbash"},
        {name = "Devastate", spellID = 58364, itemID = 43420, icon = "Interface\\Icons\\inv_sword_11"},
        {name = "Last Stand", spellID = 58382, itemID = 43422, icon = "Interface\\Icons\\inv_sword_11"},
        {name = "Execute", spellID = 58367, itemID = 43423, icon = "Interface\\Icons\\inv_sword_48"},
        {name = "Charge", spellID = 58368, itemID = 43416, icon = "Interface\\Icons\\ability_warrior_charge"},
        {name = "Victory Rush", spellID = 58386, itemID = 43432, icon = "Interface\\Icons\\ability_warrior_victoryrush"},
        {name = "Shield Block", spellID = 58387, itemID = 43424, icon = "Interface\\Icons\\ability_defend"},
        {name = "Sunder Armor", spellID = 58376, itemID = 43418, icon = "Interface\\Icons\\inv_sword_11"},
        {name = "Mortal Strike", spellID = 58370, itemID = 43421, icon = "Interface\\Icons\\ability_warrior_savageblow"},
        {name = "Cleave", spellID = 68164, itemID = 45790, icon = "Interface\\Icons\\ability_warrior_cleave"}
    },

    MINOR = {
        {name = "Berserker Rage", spellID = 58099, itemID = 43395, icon = "Interface\\Icons\\ability_warrior_innerrage"},
        {name = "Battle Shout", spellID = 58104, itemID = 43396, icon = "Interface\\Icons\\ability_warrior_battleshout"},
        {name = "Charge", spellID = 58097, itemID = 43397, icon = "Interface\\Icons\\ability_warrior_charge"},
        {name = "Commanding Shout", spellID = 58098, itemID = 43398, icon = "Interface\\Icons\\ability_warrior_commandingshout"},
        {name = "Victory Rush", spellID = 58100, itemID = 43399, icon = "Interface\\Icons\\ability_warrior_victoryrush"},
        {name = "Intervene", spellID = 68163, itemID = 45792, icon = "Interface\\Icons\\ability_warrior_charge"}
    }
    },
    DEATHKNIGHT = {
    MAJOR = {
        {name = "Plague Strike", spellID = 58629, itemID = 43533, icon = "Interface\\Icons\\spell_deathknight_icetouch"},
        {name = "Icy Touch", spellID = 58623, itemID = 43536, icon = "Interface\\Icons\\spell_deathknight_icetouch"},
        {name = "Death Strike", spellID = 58618, itemID = 43549, icon = "Interface\\Icons\\spell_deathknight_deathstrike"},
        {name = "Heart Strike", spellID = 58616, itemID = 43547, icon = "Interface\\Icons\\spell_deathknight_heartstop"},
        {name = "Death Coil", spellID = 58625, itemID = 43541, icon = "Interface\\Icons\\spell_shadow_deathcoil"},
        {name = "Blood Plague", spellID = 58620, itemID = 43551, icon = "Interface\\Icons\\spell_deathknight_bloodplague"},
        {name = "Plague Strike", spellID = 58626, itemID = 43542, icon = "Interface\\Icons\\spell_deathknight_plaguestrike"},
        {name = "Frost Fever", spellID = 58631, itemID = 43545, icon = "Interface\\Icons\\spell_deathknight_frostfever"},
        {name = "Obliterate", spellID = 58635, itemID = 43550, icon = "Interface\\Icons\\spell_deathknight_classicon"},
        {name = "Rune Strike", spellID = 58627, itemID = 43546, icon = "Interface\\Icons\\spell_deathknight_runeweapon"},
        {name = "Army of the Dead", spellID = 63331, itemID = 45806, icon = "Interface\\Icons\\spell_deathknight_armyofthedead"},
        {name = "Frost Strike", spellID = 63333, itemID = 45805, icon = "Interface\\Icons\\spell_deathknight_icetouch"}
    },

    MINOR = {
        {name = "Blood Presence", spellID = 58676, itemID = 43535, icon = "Interface\\Icons\\spell_deathknight_bloodpresence"},
        {name = "Death and Decay", spellID = 58677, itemID = 43534, icon = "Interface\\Icons\\spell_shadow_deathanddecay"},
        {name = "Horn of Winter", spellID = 58678, itemID = 43552, icon = "Interface\\Icons\\inv_misc_horn_02"},
        {name = "Raise Dead", spellID = 58680, itemID = 43539, icon = "Interface\\Icons\\spell_deathknight_raiseghoul"},
        {name = "Pestilence", spellID = 58681, itemID = 43673, icon = "Interface\\Icons\\spell_deathknight_bloodboil"},
        {name = "Rune Strike", spellID = 58682, itemID = 43672, icon = "Interface\\Icons\\spell_deathknight_runeweapon"}
    }
    },
    PALADIN = {
    MAJOR = {
        {name = "Holy Light", spellID = 54936, itemID = 41106, icon = "Interface\\Icons\\spell_holy_holybolt"},
        {name = "Holy Shock", spellID = 54923, itemID = 41100, icon = "Interface\\Icons\\spell_holy_searinglight"},
        {name = "Seal of Wisdom", spellID = 54922, itemID = 41094, icon = "Interface\\Icons\\ability_paladin_blessedhands"},
        {name = "Seal of Vengeance", spellID = 54925, itemID = 41092, icon = "Interface\\Icons\\spell_holy_sealofvengeance"},
        {name = "Seal of Blood", spellID = 54924, itemID = 41091, icon = "Interface\\Icons\\spell_holy_sealofblood"},
        {name = "Divine Light", spellID = 54940, itemID = 41110, icon = "Interface\\Icons\\spell_holy_surgeoflight"},
        {name = "Holy Shield", spellID = 54939, itemID = 41109, icon = "Interface\\Icons\\spell_holy_blessingofprotection"},
        {name = "Avenger's Shield", spellID = 54931, itemID = 41103, icon = "Interface\\Icons\\spell_holy_avengersshield"},
        {name = "Consecration", spellID = 54928, itemID = 41099, icon = "Interface\\Icons\\spell_holy_innerfire"},
        {name = "Exorcism", spellID = 54930, itemID = 41102, icon = "Interface\\Icons\\spell_holy_excorcism_02"},
        {name = "Judgement", spellID = 54927, itemID = 41098, icon = "Interface\\Icons\\spell_holy_righteousfury"},
        {name = "Hammer of Wrath", spellID = 63220, itemID = 45743, icon = "Interface\\Icons\\spell_holy_excorcism"}
    },

    MINOR = {
        {name = "Blessing of Wisdom", spellID = 58233, itemID = 43366, icon = "Interface\\Icons\\spell_holy_greaterblessingofwisdom"},
        {name = "Blessing of Might", spellID = 58234, itemID = 43365, icon = "Interface\\Icons\\spell_holy_greaterblessingofkings"},
        {name = "Judgement of Light", spellID = 58235, itemID = 43367, icon = "Interface\\Icons\\spell_holy_sealofwrath"},
        {name = "Lay on Hands", spellID = 58236, itemID = 43368, icon = "Interface\\Icons\\spell_holy_layonhands"},
        {name = "Seal of Justice", spellID = 58237, itemID = 43369, icon = "Interface\\Icons\\spell_holy_sealofmight"},
        {name = "Seal of Righteousness", spellID = 58238, itemID = 43370, icon = "Interface\\Icons\\spell_holy_sealofrighteousness"}
    }
    },
    PRIEST = {
    MAJOR = {
        {name = "Prayer of Healing", spellID = 55673, itemID = 42408, icon = "Interface\\Icons\\spell_holy_prayerofhealing02"},
        {name = "Power Word: Shield", spellID = 55672, itemID = 42400, icon = "Interface\\Icons\\spell_holy_powerwordshield"},
        {name = "Renew", spellID = 55674, itemID = 42401, icon = "Interface\\Icons\\spell_holy_renew"},
        {name = "Circle of Healing", spellID = 55675, itemID = 42402, icon = "Interface\\Icons\\spell_holy_circleofrenewal"},
        {name = "Prayer of Mending", spellID = 55676, itemID = 42403, icon = "Interface\\Icons\\spell_holy_prayerofmendingtga"},
        {name = "Guardian Spirit", spellID = 55677, itemID = 42404, icon = "Interface\\Icons\\spell_holy_guardianspirit"},
        {name = "Holy Fire", spellID = 55678, itemID = 42405, icon = "Interface\\Icons\\spell_holy_searinglight"},
        {name = "Shadow Word: Death", spellID = 55679, itemID = 42406, icon = "Interface\\Icons\\spell_shadow_demonicfortitude"},
        {name = "Dispel Magic", spellID = 55680, itemID = 42407, icon = "Interface\\Icons\\spell_holy_dispelmagic"},
        {name = "Devouring Plague", spellID = 63229, itemID = 45753, icon = "Interface\\Icons\\spell_shadow_blackplague"},
        {name = "Divine Spirit", spellID = 55681, itemID = 42409, icon = "Interface\\Icons\\spell_holy_divinespirit"},
        {name = "Mass Dispel", spellID = 63231, itemID = 45755, icon = "Interface\\Icons\\spell_arcane_massdispel"}
    },

    MINOR = {
        {name = "Levitate", spellID = 58357, itemID = 43342, icon = "Interface\\Icons\\spell_holy_layonhands"},
        {name = "Power Word: Fortitude", spellID = 58359, itemID = 43343, icon = "Interface\\Icons\\spell_holy_wordfortitude"},
        {name = "Dispel Magic", spellID = 58356, itemID = 43344, icon = "Interface\\Icons\\spell_holy_dispelmagic"},
        {name = "Shadowform", spellID = 58355, itemID = 43371, icon = "Interface\\Icons\\spell_shadow_shadowform"},
        {name = "Prayer of Mending", spellID = 58360, itemID = 43372, icon = "Interface\\Icons\\spell_holy_prayerofmendingtga"},
        {name = "Shadow Ascension", spellID = 58361, itemID = 43373, icon = "Interface\\Icons\\spell_shadow_shadowform"}
    }
    },
    SHAMAN = {
    MAJOR = {
        {name = "Healing Wave", spellID = 55437, itemID = 41538, icon = "Interface\\Icons\\spell_nature_healingwavelesser"},
        {name = "Chain Heal", spellID = 55439, itemID = 41533, icon = "Interface\\Icons\\spell_nature_healingwavegreater"},
        {name = "Earth Shield", spellID = 55442, itemID = 41552, icon = "Interface\\Icons\\spell_nature_skinofearth"},
        {name = "Lightning Shield", spellID = 55441, itemID = 41527, icon = "Interface\\Icons\\spell_nature_lightningshield"},
        {name = "Earth Shock", spellID = 55443, itemID = 41526, icon = "Interface\\Icons\\spell_nature_earthshock"},
        {name = "Windfury Weapon", spellID = 55444, itemID = 41531, icon = "Interface\\Icons\\spell_shaman_meleedualwield"},
        {name = "Lightning Bolt", spellID = 55445, itemID = 41532, icon = "Interface\\Icons\\spell_nature_lightning"},
        {name = "Wrath of Air Totem", spellID = 63280, itemID = 45775, icon = "Interface\\Icons\\spell_nature_slowingtotem"},
        {name = "Feral Spirit", spellID = 63279, itemID = 45771, icon = "Interface\\Icons\\spell_shaman_spiritwolves"},
        {name = "Flame Shock", spellID = 55446, itemID = 41547, icon = "Interface\\Icons\\spell_fire_flameshock"},
        {name = "Frost Shock", spellID = 55447, itemID = 41548, icon = "Interface\\Icons\\spell_frost_frostshock"},
        {name = "Thunderstorm", spellID = 63279, itemID = 45777, icon = "Interface\\Icons\\spell_nature_thunderstorm"}
    },

    MINOR = {
        {name = "Reincarnation", spellID = 58329, itemID = 43381, icon = "Interface\\Icons\\spell_nature_reincarnation"},
        {name = "Water Shield", spellID = 58330, itemID = 43385, icon = "Interface\\Icons\\ability_shaman_watershield"},
        {name = "Water Walking", spellID = 58331, itemID = 43386, icon = "Interface\\Icons\\ability_shaman_waterwalk"},
        {name = "Wrath of Air Totem", spellID = 58332, itemID = 43388, icon = "Interface\\Icons\\spell_nature_slowingtotem"},
        {name = "Water Totem", spellID = 58333, itemID = 43390, icon = "Interface\\Icons\\spell_frost_summonwaterelemental"},
        {name = "Fire Totem", spellID = 58334, itemID = 43389, icon = "Interface\\Icons\\spell_fire_sealoffire"}
    }
    },
    DRUID = {
    MAJOR = {
        {name = "Regrowth", spellID = 54743, itemID = 40913, icon = "Interface\\Icons\\spell_nature_resistnature"},
        {name = "Rebirth", spellID = 54866, itemID = 40909, icon = "Interface\\Icons\\inv_glyph_majordruid"},
        {name = "Lifebloom", spellID = 54760, itemID = 40914, icon = "Interface\\Icons\\inv_misc_herb_felblossom"},
        {name = "Healing Touch", spellID = 54824, itemID = 40912, icon = "Interface\\Icons\\spell_nature_healingtouch"},
        {name = "Moonfire", spellID = 54741, itemID = 40919, icon = "Interface\\Icons\\spell_nature_starfall"},
        {name = "Starfire", spellID = 54756, itemID = 40920, icon = "Interface\\Icons\\spell_arcane_starfire"},
        {name = "Insect Swarm", spellID = 54744, itemID = 40922, icon = "Interface\\Icons\\spell_nature_insectswarm"},
        {name = "Mangle", spellID = 54818, itemID = 40903, icon = "Interface\\Icons\\ability_druid_mangle"},
        {name = "Lacerate", spellID = 54810, itemID = 40901, icon = "Interface\\Icons\\ability_druid_lacerate"},
        {name = "Berserk", spellID = 54825, itemID = 40923, icon = "Interface\\Icons\\ability_racial_bearform"},
        {name = "Thorns", spellID = 62137, itemID = 45623, icon = "Interface\\Icons\\spell_nature_thorns"},
        {name = "Sunfire", spellID = 63057, itemID = 45601, icon = "Interface\\Icons\\spell_nature_wrathv2"}
    },

    MINOR = {
        {name = "Thorns", spellID = 58297, itemID = 43336, icon = "Interface\\Icons\\spell_nature_thorns"},
        {name = "Mark of the Wild", spellID = 58289, itemID = 43335, icon = "Interface\\Icons\\spell_nature_regeneration"},
        {name = "Rebirth", spellID = 58296, itemID = 43332, icon = "Interface\\Icons\\spell_nature_reincarnation"},
        {name = "Bear Form", spellID = 58286, itemID = 43316, icon = "Interface\\Icons\\ability_racial_bearform"},
        {name = "Cat Form", spellID = 58288, itemID = 43334, icon = "Interface\\Icons\\ability_druid_catform"},
        {name = "Moonkin Form", spellID = 58287, itemID = 43331, icon = "Interface\\Icons\\spell_nature_forceofnature"}
    }
    },
    ROGUE = {
    MAJOR = {
        {name = "Hemorrhage", spellID = 56800, itemID = 42964, icon = "Interface\\Icons\\spell_shadow_lifedrain"},
        {name = "Backstab", spellID = 56801, itemID = 42965, icon = "Interface\\Icons\\ability_backstab"},
        {name = "Eviscerate", spellID = 56802, itemID = 42966, icon = "Interface\\Icons\\ability_rogue_eviscerate"},
        {name = "Garrote", spellID = 56803, itemID = 42967, icon = "Interface\\Icons\\ability_rogue_garrote"},
        {name = "Sinister Strike", spellID = 56804, itemID = 42968, icon = "Interface\\Icons\\spell_shadow_ritualofsacrifice"},
        {name = "Feint", spellID = 56805, itemID = 42969, icon = "Interface\\Icons\\ability_rogue_feint"},
        {name = "Slice and Dice", spellID = 56806, itemID = 42970, icon = "Interface\\Icons\\ability_rogue_slicedice"},
        {name = "Mutilate", spellID = 56809, itemID = 42973, icon = "Interface\\Icons\\ability_rogue_disembowel"},
        {name = "Vendetta", spellID = 56810, itemID = 42974, icon = "Interface\\Icons\\ability_rogue_kidneyshot"},
        {name = "Kidney Shot", spellID = 56812, itemID = 42976, icon = "Interface\\Icons\\ability_rogue_kidneyshot"},
        {name = "Ambush", spellID = 56813, itemID = 42977, icon = "Interface\\Icons\\ability_stealth"},
        {name = "Stealth", spellID = 63268, itemID = 45769, icon = "Interface\\Icons\\ability_stealth"}
    },

    MINOR = {
        {name = "Blur", spellID = 58039, itemID = 43379, icon = "Interface\\Icons\\ability_stealth"},
        {name = "Distract", spellID = 58033, itemID = 43376, icon = "Interface\\Icons\\ability_rogue_distract"},
        {name = "Fan of Knives", spellID = 58040, itemID = 43377, icon = "Interface\\Icons\\ability_rogue_fanofknives"},
        {name = "Sprint", spellID = 58038, itemID = 43378, icon = "Interface\\Icons\\ability_rogue_sprint"},
        {name = "Shadowstep", spellID = 58034, itemID = 43375, icon = "Interface\\Icons\\ability_rogue_shadowstep"},
        {name = "Poison Recipe", spellID = 68164, itemID = 45793, icon = "Interface\\Icons\\ability_creature_poison_06"}
    }
    },
    WARLOCK = {
    MAJOR = {
        {name = "Shadow Bolt", spellID = 56218, itemID = 42454, icon = "Interface\\Icons\\spell_shadow_shadowbolt"},
        {name = "Unstable Affliction", spellID = 56224, itemID = 42456, icon = "Interface\\Icons\\spell_shadow_unstableaffliction_3"},
        {name = "Corruption", spellID = 56216, itemID = 42453, icon = "Interface\\Icons\\spell_shadow_abominationexplosion"},
        {name = "Drain Soul", spellID = 56217, itemID = 42455, icon = "Interface\\Icons\\spell_shadow_haunting"},
        {name = "Immolate", spellID = 56228, itemID = 42459, icon = "Interface\\Icons\\spell_fire_immolation"},
        {name = "Conflagrate", spellID = 56235, itemID = 42464, icon = "Interface\\Icons\\spell_fire_fireball"},
        {name = "Rain of Fire", spellID = 56229, itemID = 42460, icon = "Interface\\Icons\\spell_shadow_rainoffire"},
        {name = "Soulstone", spellID = 56232, itemID = 42463, icon = "Interface\\Icons\\spell_shadow_summonvoidwalker"},
        {name = "Chaos Bolt", spellID = 56238, itemID = 42466, icon = "Interface\\Icons\\ability_warlock_chaosbolt"},
        {name = "Incinerate", spellID = 56247, itemID = 42467, icon = "Interface\\Icons\\spell_fire_burnout"},
        {name = "Demonic Pact", spellID = 56242, itemID = 45779, icon = "Interface\\Icons\\spell_shadow_demonicpact"},
        {name = "Shadow Trance", spellID = 56233, itemID = 42465, icon = "Interface\\Icons\\spell_shadow_twilight"}
    },

    MINOR = {
        {name = "Drain Life", spellID = 58079, itemID = 43389, icon = "Interface\\Icons\\spell_shadow_lifedrain02"},
        {name = "Unending Breath", spellID = 58080, itemID = 43390, icon = "Interface\\Icons\\spell_shadow_demonbreath"},
        {name = "Soul Link", spellID = 58081, itemID = 43391, icon = "Interface\\Icons\\spell_shadow_deathpact"},
        {name = "Enslave Demon", spellID = 58082, itemID = 43392, icon = "Interface\\Icons\\spell_shadow_enslavedemon"},
        {name = "Eye of Kilrogg", spellID = 58083, itemID = 43393, icon = "Interface\\Icons\\spell_shadow_evileye"},
        {name = "Ritual of Souls", spellID = 58084, itemID = 43394, icon = "Interface\\Icons\\spell_shadow_felarmour"}
    }
    }
}