------------------------------------------------------
-- ModernTalentsAssets.lua
-- Sistema de texturas de fondo por clase y especialización
-- Autores: Clancy - Noa
------------------------------------------------------

ModernTalentsAssets = {}

-- Configuración de texturas por clase usando sprite sheet
ModernTalentsAssets.ClassData = {
    ["WARRIOR"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0, 0.25, 0, 0.25}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundwarrior1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundwarrior1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundwarrior2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["PALADIN"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0, 0.25, 0.5, 0.75}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundpaladin1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundpaladin1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundpaladin2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["HUNTER"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0, 0.25, 0.25, 0.5}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundhunter1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundhunter1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundhunter2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["ROGUE"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0.49609375, 0.7421875, 0, 0.25}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundrogue1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundrogue1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundrogue2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["PRIEST"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0.49609375, 0.7421875, 0.25, 0.5}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundpriest1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundpriest1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundpriest2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["DEATHKNIGHT"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0.25, 0.49609375, 0.5, 0.75}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgrounddeathknight1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgrounddeathknight1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgrounddeathknight2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["SHAMAN"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0.25, 0.49609375, 0.25, 0.5}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundshaman1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundshaman1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundshaman2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["MAGE"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0.25, 0.49609375, 0, 0.25}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundmage1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundmage1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundmage2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["WARLOCK"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0.7421875, 0.98828125, 0.25, 0.5}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundwarlock1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundwarlock1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundwarlock2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}}
        }
    },
    ["DRUID"] = {
        classIcon = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\UI-CHARACTERCREATE-CLASSES-ROUND", coords = {0.7421875, 0.98828125, 0, 0.25}},
        specs = {
            [1] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgrounddruid1", coords = {0.000000000, 0.789000000, 0.000000000, 0.380000000}},
            [2] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgrounddruid1", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}},
            [3] = {file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgrounddruid2", coords = {0.000000000, 0.788574219, 0.376464844, 0.756347656}}
        }
    }
}


-- Fondo para la sección de glifos
ModernTalentsAssets.GlyphBackground = {
    file = "Interface\\AddOns\\ModernTalents\\FrameAssets\\talentsclassbackgroundevoker2", coords = {0.000000000, 0.789000000, 0.000000000, 0.760000000}
}

-- Diccionario de descripciones por clase y rama
ModernTalentsAssets.ClassDescriptions = {
    ["WARRIOR"] = {
        ["Arms"] = {
            desc = "A battle-hardened master of arms, using mobility and relentless attacks to defeat their enemies. Preferred weapons: axes, maces, and two-handed swords.",
            trees = {
                "High physical damage",
                "Improved critical strikes",
                "Crowd control",
                "Combat versatility"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_CriticalStrike",
                "Interface\\Icons\\Ability_Warrior_Revenge",
                "Interface\\Icons\\Ability_ShockWave", 
                "Interface\\Icons\\Ability_Warrior_Challange"
            },
            icon = "Interface\\Icons\\ability_warrior_savageblow"
        },
        ["Fury"] = {
            desc = "A berserker who unleashes their fury upon enemies by wielding two weapons and channeling their rage into devastating attacks.",
            trees = {
                "Dual weapon specialization",
                "Enhanced battle stance",
                "Rage management",
                "Frenzy"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_DualWield",
                "Interface\\Icons\\Ability_Racial_Avatar",
                "Interface\\Icons\\Spell_Nature_EnrageArmor",
                "Interface\\Icons\\Ability_Warrior_EndlessRage"
            },
            icon = "Interface\\Icons\\ability_warrior_challange"
        },
        ["Protection"] = {
            desc = "A steadfast defender who absorbs damage and protects allies with shields and defensive stances.",
            trees = {
                "Shield specialization",
                "Enhanced defensive stance",
                "Damage reduction",
                "Taunt mastery"
            },
            treeIcons = {
                "Interface\\Icons\\INV_Shield_06",
                "Interface\\Icons\\Ability_Warrior_DefensiveStance",
                "Interface\\Icons\\Spell_Holy_DevotionAura",
                "Interface\\Icons\\Spell_Nature_Reincarnation"
            },
            icon = "Interface\\Icons\\ability_warrior_shieldbash"
        }
    },
    ["PALADIN"] = {
        ["Holy"] = {
            desc = "A sacred warrior who channels divine power to heal allies and punish enemies. They wield light and faith as their weapons.",
            trees = {
                "Holy power",
                "Divine healing",
                "Blessing mastery",
                "Sacred duty"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Holy_Power",
                "Interface\\Icons\\Spell_Holy_Heal",
                "Interface\\Icons\\Spell_Magic_GreaterBlessingofKings",
                "Interface\\Icons\\Spell_Holy_SealOfSacrifice"
            },
            icon = "Interface\\Icons\\Spell_Holy_HolyBolt"
        },
        ["Protection"] = {
            desc = "A righteous guardian who stands firm against evil, protecting allies with divine shields and unwavering resolve.",
            trees = {
                "Divine shields",
                "Righteous defense",
                "Aura mastery",
                "Guardian's determination"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Holy_DivineIntervention",
                "Interface\\Icons\\Spell_Holy_RighteousFury",
                "Interface\\Icons\\Spell_Holy_AuraOfLight",
                "Interface\\Icons\\Spell_Holy_ShieldOfTheCrusader"
            },
            icon = "Interface\\Icons\\Spell_Holy_DevotionAura"
        },
        ["Retribution"] = {
            desc = "A fervent crusader who strikes down the impure with righteous fury, using judgments and retribution to punish the wicked.",
            trees = {
                "Judgment strikes",
                "Retribution aura",
                "Seal mastery",
                "Crusader's zeal"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Holy_RighteousFury",
                "Interface\\Icons\\Spell_Holy_AuraOfLight",
                "Interface\\Icons\\Ability_ThunderBolt",
                "Interface\\Icons\\Spell_Holy_CrusaderStrike"
            },
            icon = "Interface\\Icons\\Spell_Holy_AuraOfLight"
        }
    },
    ["HUNTER"] = {
        ["Beast Mastery"] = {
            desc = "A master of the wild who forges bonds with beasts and commands them in combat.",
            trees = {
                "Pet mastery",
                "Beast training",
                "Wild survival",
                "Animal companion"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_Hunter_BeastTaming",
                "Interface\\Icons\\Ability_Hunter_BeastCall",
                "Interface\\Icons\\Ability_Hunter_SwiftStrike",
                "Interface\\Icons\\Ability_Mount_JungleTiger"
            },
            icon = "Interface\\Icons\\Ability_Hunter_BeastTaming"
        },
        ["Marksmanship"] = {
            desc = "A precise shooter who excels at long-range combat with bows and guns.",
            trees = {
                "Ranged specialization",
                "Critical shots",
                "Aimed shot",
                "Trap mastery"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_Marksmanship",
                "Interface\\Icons\\Ability_SealEye",
                "Interface\\Icons\\Ability_Hunter_AimedShot",
                "Interface\\Icons\\Ability_Hunter_TrapLauncher"
            },
            icon = "Interface\\Icons\\Ability_Marksmanship"
        },
        ["Survival"] = {
            desc = "A resilient tracker who uses traps and survival skills to overcome opponents.",
            trees = {
                "Trap expert",
                "Environmental knowledge",
                "Combat survival",
                "Tracking mastery"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_Hunter_Trap",
                "Interface\\Icons\\Ability_Hunter_SurvivalInstincts",
                "Interface\\Icons\\Ability_Rogue_Trip",
                "Interface\\Icons\\Ability_Tracking"
            },
            icon = "Interface\\Icons\\Ability_Hunter_SurvivalInstincts"
        }
    },
    ["ROGUE"] = {
        ["Assassination"] = {
            desc = "A deadly assassin specialized in quick, lethal, and poisoned attacks.",
            trees = {
                "Lethal strikes",
                "Poison mastery",
                "Stealth tactics",
                "Assassination"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_Rogue_Eviscerate",
                "Interface\\Icons\\Ability_Rogue_DualWeild",
                "Interface\\Icons\\Ability_Stealth",
                "Interface\\Icons\\Ability_FiegnDead"
            },
            icon = "Interface\\Icons\\Ability_Rogue_Eviscerate"
        },
        ["Combat"] = {
            desc = "A versatile fighter who excels in direct combat with various weapons.",
            trees = {
                "Weapon specialization",
                "Combat prowess",
                "Dual wielding",
                "Combat reflexes"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_Rogue_SinisterStrike",
                "Interface\\Icons\\Ability_Kick",
                "Interface\\Icons\\Ability_DualWield",
                "Interface\\Icons\\Ability_Parry"
            },
            icon = "Interface\\Icons\\ability_rogue_deadlybrew"
        },
        ["Subtlety"] = {
            desc = "A shadowy trickster who uses stealth and cunning to outmaneuver enemies.",
            trees = {
                "Stealth mastery",
                "Subtle techniques",
                "Evasion",
                "Shadow arts"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_Stealth",
                "Interface\\Icons\\Ability_Vanish",
                "Interface\\Icons\\Ability_Rogue_Feint",
                "Interface\\Icons\\Ability_Rogue_ShadowStrike"
            },
            icon = "Interface\\Icons\\Ability_Stealth"
        }
    },
    ["PRIEST"] = {
        ["Discipline"] = {
            desc = "A master of mental fortitude who employs protective magic and inner focus.",
            trees = {
                "Mental fortitude",
                "Protective barriers",
                "Inner focus",
                "Discipline"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Holy_WordFortitude",
                "Interface\\Icons\\Spell_Holy_PowerWordShield",
                "Interface\\Icons\\Spell_Holy_InnerFire",
                "Interface\\Icons\\Spell_Holy_SealOfWisdom"
            },
            icon = "Interface\\Icons\\Spell_Holy_WordFortitude"
        },
        ["Holy"] = {
            desc = "A divine healer who channels holy light to heal wounds and purify souls.",
            trees = {
                "Divine healing",
                "Holy light",
                "Blessed recovery",
                "Sacred arts"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Holy_Heal02",
                "Interface\\Icons\\Spell_Holy_FlashHeal",
                "Interface\\Icons\\Spell_Holy_Renew",
                "Interface\\Icons\\Spell_Holy_SealOfSalvation"
            },
            icon = "Interface\\Icons\\Spell_Holy_Heal02"
        },
        ["Shadow"] = {
            desc = "An adept of dark magic who masters shadowy energies to inflict damage and control.",
            trees = {
                "Shadow magic",
                "Mind control",
                "Dark affinity",
                "Shadowform"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Shadow_ShadowWordPain",
                "Interface\\Icons\\Spell_Shadow_MindTwisting",
                "Interface\\Icons\\Spell_Shadow_AntiShadow",
                "Interface\\Icons\\Spell_Shadow_Shadowform"
            },
            icon = "Interface\\Icons\\Spell_Shadow_ShadowWordPain"
        }
    },
    ["MAGE"] = {
        ["Arcane"] = {
            desc = "A master of pure magical energy who manipulates the arcane arts.",
            trees = {
                "Arcane power",
                "Mana mastery",
                "Spell focus",
                "Arcane brilliance"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Holy_MagicalSentry",
                "Interface\\Icons\\Spell_Holy_DispelMagic",
                "Interface\\Icons\\Spell_Nature_WispSplode",
                "Interface\\Icons\\Spell_Nature_Lightning"
            },
            icon = "Interface\\Icons\\Spell_Holy_MagicalSentry"
        },
        ["Fire"] = {
            desc = "A pyromancer who commands destructive fire magic to incinerate enemies.",
            trees = {
                "Fire mastery",
                "Combustion",
                "Pyromancy",
                "Inferno"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Fire_FireBolt02",
                "Interface\\Icons\\Spell_Fire_FlameBlades",
                "Interface\\Icons\\Spell_Fire_FlameBolt",
                "Interface\\Icons\\Spell_Fire_SelfDestruct"
            },
            icon = "Interface\\Icons\\Spell_Fire_FireBolt02"
        },
        ["Frost"] = {
            desc = "A cryomancer who freezes enemies with frost magic and protective ice.",
            trees = {
                "Frost mastery",
                "Ice magic",
                "Frozen barrier",
                "Winter's chill"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Frost_FrostBolt02",
                "Interface\\Icons\\Spell_Frost_FreezingBreath",
                "Interface\\Icons\\Spell_Frost_IceStorm",
                "Interface\\Icons\\Spell_Frost_ChillingBlast"
            },
            icon = "Interface\\Icons\\Spell_Frost_FrostBolt02"
        }
    },
    ["WARLOCK"] = {
        ["Affliction"] = {
            desc = "A master of curses and debilitating magic who slowly destroys their enemies.",
            trees = {
                "Curse mastery",
                "Damage over Time specialization",
                "Soul drain",
                "Dark pact"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Shadow_CurseOfTounges",
                "Interface\\Icons\\Spell_Shadow_AbominationExplosion",
                "Interface\\Icons\\Spell_Shadow_LifeDrain02",
                "Interface\\Icons\\Spell_Shadow_DarkRitual"
            },
            icon = "Interface\\Icons\\Spell_Shadow_CurseOfTounges"
        },
        ["Demonology"] = {
            desc = "A summoner who commands demons and enhances their powers with fel energy.",
            trees = {
                "Demonic mastery",
                "Fel energy",
                "Summoning arts",
                "Infernal power"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Shadow_SummonImp",
                "Interface\\Icons\\Spell_Shadow_Metamorphosis",
                "Interface\\Icons\\Spell_Shadow_SummonVoidWalker",
                "Interface\\Icons\\Spell_Shadow_SummonInfernal"
            },
            icon = "Interface\\Icons\\Spell_Shadow_SummonImp"
        },
        ["Destruction"] = {
            desc = "A master of destructive magic who unleashes powerful direct damage spells.",
            trees = {
                "Destructive magic",
                "Chaos bolts",
                "Infernal power",
                "Soul burn"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Shadow_RainOfFire",
                "Interface\\Icons\\Spell_Shadow_ShadowBolt",
                "Interface\\Icons\\Spell_Fire_SoulBurn",
                "Interface\\Icons\\Spell_Shadow_UnholyFrenzy"
            },
            icon = "Interface\\Icons\\Spell_Shadow_RainOfFire"
        }
    },
    ["DRUID"] = {
        ["Balance"] = {
            desc = "A guardian of balance who wields both arcane and natural magic.",
            trees = {
                "Lunar power",
                "Solar energy",
                "Natural balance",
                "Celestial alignment"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Nature_StarFall",
                "Interface\\Icons\\Spell_Nature_NatureTouchGrow",
                "Interface\\Icons\\Spell_Nature_InsectSwarm",
                "Interface\\Icons\\Spell_Nature_EarthBind"
            },
            icon = "Interface\\Icons\\Spell_Nature_StarFall"
        },
        ["Feral Combat"] = {
            desc = "A shapeshifter who adopts animal forms for melee combat.",
            trees = {
                "Bear form",
                "Cat form",
                "Feral instinct",
                "Predatory strikes"
            },
            treeIcons = {
                "Interface\\Icons\\Ability_Racial_BearForm",
                "Interface\\Icons\\Ability_Druid_CatForm",
                "Interface\\Icons\\Ability_Hunter_Pet_Cat",
                "Interface\\Icons\\Ability_GhoulFrenzy"
            },
            icon = "Interface\\Icons\\Ability_Racial_BearForm"
        },
        ["Restoration"] = {
            desc = "A nature healer who uses life magic to heal wounds and protect allies.",
            trees = {
                "Natural healing",
                "Lifebloom",
                "Regrowth",
                "Tranquility"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Nature_HealingTouch",
                "Interface\\Icons\\Spell_Nature_ResistNature",
                "Interface\\Icons\\Spell_Nature_Regeneration",
                "Interface\\Icons\\Spell_Nature_Tranquility"
            },
            icon = "Interface\\Icons\\Spell_Nature_HealingTouch"
        }
    },
    ["SHAMAN"] = {
        ["Elemental"] = {
            desc = "A master of the elements who commands fire, earth, and storm.",
            trees = {
                "Fire totems",
                "Earth totems",
                "Lightning mastery",
                "Elemental fury"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Fire_SearingTotem",
                "Interface\\Icons\\Spell_Nature_StoneClawTotem",
                "Interface\\Icons\\Spell_Nature_Lightning",
                "Interface\\Icons\\Spell_Fire_Volcano"
            },
            icon = "Interface\\Icons\\Spell_Nature_Lightning"
        },
        ["Enhancement"] = {
            desc = "A warrior-shaman who enhances weapons and armor with elemental power.",
            trees = {
                "Weapon enhancement",
                "Armor enhancements",
                "Elemental weapons",
                "Stormstrike"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Fire_EnchantWeapon",
                "Interface\\Icons\\Spell_Nature_StoneSkinTotem",
                "Interface\\Icons\\Spell_Fire_Flametounge",
                "Interface\\Icons\\Spell_Lightning_LightningBolt01"
            },
            icon = "Interface\\Icons\\Spell_Fire_EnchantWeapon"
        },
        ["Restoration"] = {
            desc = "A spiritual healer who uses water and earth to heal wounds and protect.",
            trees = {
                "Healing waves",
                "Water totems",
                "Earth shield",
                "Ancestral guidance"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Nature_MagicImmunity",
                "Interface\\Icons\\Spell_Frost_SummonWaterElemental",
                "Interface\\Icons\\Spell_Nature_SkinofEarth",
                "Interface\\Icons\\Spell_Nature_NatureGuardian"
            },
            icon = "Interface\\Icons\\Spell_Nature_MagicImmunity"
        }
    },
    ["DEATHKNIGHT"] = {
        ["Blood"] = {
            desc = "A vampiric warrior who uses blood magic to sustain themselves in battle.",
            trees = {
                "Blood transfusion",
                "Vampiric aura",
                "Hemorrhage",
                "Blood plague"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Deathknight_BloodTap",
                "Interface\\Icons\\Spell_Shadow_LifeDrain",
                "Interface\\Icons\\Spell_Shadow_BloodBoil",
                "Interface\\Icons\\Spell_Shadow_PlagueCloud"
            },
            icon = "Interface\\Icons\\Spell_Deathknight_BloodTap"
        },
        ["Frost"] = {
            desc = "An icy giant who uses frost magic to control and destroy enemies.",
            trees = {
                "Frost strike",
                "Icy talons",
                "Frozen heart",
                "Howling blast"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Deathknight_FrostStrike",
                "Interface\\Icons\\Spell_Deathknight_IcyTalons",
                "Interface\\Icons\\Spell_Frost_FrozenCore",
                "Interface\\Icons\\Spell_Frost_ArcticWinds"
            },
            icon = "Interface\\Icons\\spell_deathknight_frostpresence"
        },
        ["Unholy"] = {
            desc = "A master of disease and decay who spreads plagues and commands the undead.",
            trees = {
                "Plague strike",
                "Necrotic putrefaction",
                "Death and decay",
                "Army of the dead"
            },
            treeIcons = {
                "Interface\\Icons\\Spell_Deathknight_PlagueStrike",
                "Interface\\Icons\\Spell_Shadow_DeathCoil",
                "Interface\\Icons\\Spell_Shadow_DeathAndDecay",
                "Interface\\Icons\\Spell_Shadow_RaiseDead"
            },
            icon = "Interface\\Icons\\Spell_Deathknight_PlagueStrike"
        }
    }
}

ModernTalentsAssets.TreeColors = {
    [1] = { hex = "|cFFFF8000", rgb = {1, 0.5, 0} },  -- Naranja
    [2] = { hex = "|cFF00A0FF", rgb = {0, 0.5, 1} },  -- Azul
    [3] = { hex = "|cFF00FF00", rgb = {0, 1, 0} },    -- Verde
    [4] = { hex = "|cFFFF00FF", rgb = {1, 0, 1} }     -- Magenta
}

-- Función para obtener el fondo de glifos
function ModernTalentsAssets:GetGlyphBackground()
    return self.GlyphBackground.file, self.GlyphBackground.coords
end

-- Función para obtener la textura de fondo de una spec
function ModernTalentsAssets:GetSpecBackground(className, specIndex)
    local data = self.ClassData[className]
    if not data or not data.specs[specIndex] then
        return "Interface\\DialogFrame\\UI-DialogBox-Background"
    end
    
    local specData = data.specs[specIndex]
    if type(specData) == "table" then
        return specData.file, specData.coords
    else
        return specData
    end
end

-- Función para obtener las descripciones de clase
function ModernTalentsAssets:GetClassDescriptions(className, specName)
    if self.ClassDescriptions[className] and self.ClassDescriptions[className][specName] then
        return self.ClassDescriptions[className][specName]
    end
    return nil
end

-- Función para obtener el icono de clase
function ModernTalentsAssets:GetClassIcon(className)
    local data = self.ClassData[className]
    if data and data.classIcon then
        if type(data.classIcon) == "table" then
            return data.classIcon.file, data.classIcon.coords
        else
            return data.classIcon
        end
    end
    return "Interface\\Icons\\INV_Misc_QuestionMark"
end