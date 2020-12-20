local Spells = DMW.Enums.Spells

Spells.DEATHKNIGHT = {
    Blood = {
        Abilities = {
            Asphyxiate = {SpellID = 221562},
            BloodBoil = {SpellID = 316634},
            Blooddrinker = {SpellID = 206931},
            Bonestorm = {SpellID = 194844},
            Consumption = {SpellID = 274156},
            CrimsonScourge = {SpellID = 81136},
            DancingRuneWeapon = {SpellID = 49028},
            DeathAndDecay = {SpellID = 316664, CastType = "Ground"},
            DeathPact = {SpellID = 48743},
            DeathsCaress = {SpellID = 195292},
            FrostFever = {SpellID = 195621},
            GorefiendsGrasp = {SpellID = 108199},
            HeartStrike = {SpellID = 317090},
            MarkOfBlood = {SpellID = 206940},
            Marrowrend = {SpellID = 316746},
            MasteryBloodShield = {SpellID = 77513},
            Ossuary = {SpellID = 219786},
            Riposte = {SpellID = 161797},
            RuneTap = {SpellID = 316616},
            Tombstone = {SpellID = 219809},
            VampiricBlood = {SpellID = 317133},
            VeteranOfTheThirdWar = {SpellID = 316714},
            WraithWalk = {SpellID = 212552}
        },
        Buffs = {
            AntiMagicBarrier = 205727,
            AntiMagicShell = 48707,
            BoneShield = 195181,
            CrimsonScourge = 81136,
            DancingRuneWeapon = 81256,
            PathOfFrost = 3714,
            RuneTap = 316616
        },
        Debuffs = {
            BloodPlague = {SpellID = 55078},
            MarkOfBlood = {SpellID = 206940}
        },
        Talents = {
            AntimagicBarrier = 22014,
            BloodTap = 22135,
            Blooddrinker = 19166,
            Bloodworms = 19232,
            Bonestorm = 21209,
            Consumption = 19220,
            DeathPact = 19231,
            FoulBulwark = 19221,
            GripOfTheDead = 19227,
            Heartbreaker = 19165,
            Hemostasis = 19219,
            MarkOfBlood = 22015,
            Purgatory = 21207,
            RapidDecomposition = 19218,
            RedThirst = 21208,
            RelishInBlood = 22134,
            TighteningGrasp = 19226,
            Tombstone = 23454,
            Voracious = 19230,
            WillOfTheNecropolis = 22013,
            WraithWalk = 19228
        }
    },
    Frost = {
        Abilities = {
            Asphyxiate = {SpellID = 108194},
            BlindingSleet = {SpellID = 207167},
            BreathOfSindragosa = {SpellID = 152279},
            DeathStrike = {SpellID = 278223},
            DualWield = {SpellID = 674},
            EmpowerRuneWeapon = {SpellID = 47568},
            FrostFever = {SpellID = 195621},
            FrostStrike = {SpellID = 316803},
            Frostscythe = {SpellID = 207230},
            FrostwyrmsFury = {SpellID = 279302},
            GlacialAdvance = {SpellID = 194913},
            HornOfWinter = {SpellID = 57330},
            HowlingBlast = {SpellID = 49184},
            HypothermicPresence = {SpellID = 321995},
            KillingMachine = {SpellID = 317214},
            MasteryFrozenHeart = {SpellID = 77514},
            MightOfTheFrozenWastes = {SpellID = 343252},
            Obliterate = {SpellID = 317198},
            PillarOfFrost = {SpellID = 316849},
            RemorselessWinter = {SpellID = 316794},
            Rime = {SpellID = 316838},
            RunicEmpowerment = {SpellID = 81229},
            WraithWalk = {SpellID = 212552}
        },
        Buffs = {
            DarkSuccor = {SpellID = 178819}
        },
        Debuffs = {},
        Talents = {
            Asphyxiate = 22517,
            Avalanche = 22521,
            BlindingSleet = 22519,
            BreathOfSindragosa = 22537,
            ColdHeart = 22018,
            DeathsReach = 22515,
            Frostscythe = 22525,
            FrozenPulse = 22523,
            GatheringStorm = 22531,
            GlacialAdvance = 22535,
            HornOfWinter = 22021,
            HypothermicPresence = 22533,
            Icecap = 22023,
            IcyTalons = 22017,
            InexorableAssault = 22016,
            MurderousEfficiency = 22020,
            Obliteration = 22109,
            Permafrost = 22527,
            RunicAttenuation = 22019,
            WraithWalk = 22530
        }
    },
    Unholy = {
        Abilities = {
            Apocalypse = {SpellID = 343755},
            ArmyOfTheDead = {SpellID = 42650},
            Asphyxiate = {SpellID = 108194},
            ClawingShadows = {SpellID = 207311},
            DarkTransformation = {SpellID = 325554},
            DeathAndDecay = {SpellID = 316916, CastType = "Ground"},
            DeathCoil = {SpellID = 316941},
            DeathStrike = {SpellID = 278223},
            Defile = {SpellID = 152280, CastType = "Ground"},
            Epidemic = {SpellID = 207317},
            FesteringStrike = {SpellID = 85948},
            FesteringWound = {SpellID = 197147},
            FrostFever = {SpellID = 195621},
            Outbreak = {SpellID = 77575},
            RaiseDead = {SpellID = 46584},
            RunicCorruption = {SpellID = 51462},
            ScourgeStrike = {SpellID = 317234},
            SoulReaper = {SpellID = 343294},
            SuddenDoom = {SpellID = 49530},
            SummonGargoyle = {SpellID = 49206},
            UnholyAssault = {SpellID = 207289},
            UnholyBlight = {SpellID = 115989},
            WraithWalk = {SpellID = 212552}
        },
        Buffs = {
            DarkSuccor = {SpellID = 178819},
            SuddenDoom = {SpellID = 49530}
        },
        Debuffs = {
            FesteringWound = {SpellID = 197147},
            VirulentPlague = {SpellID = 191587, BaseDuration = 26}
        },
        Talents = {
            AllWillServe = 22025,
            ArmyOfTheDamned = 22030,
            Asphyxiate = 22520,
            BurstingSores = 22027,
            ClawingShadows = 22026,
            DeathsReach = 22518,
            Defile = 22536,
            EbonFever = 22028,
            GripOfTheDead = 22516,
            HarbingerOfDoom = 22524,
            InfectedClaws = 22024,
            Pestilence = 22532,
            PestilentPustules = 22522,
            SoulReaper = 22526,
            SpellEater = 22528,
            SummonGargoyle = 22110,
            UnholyAssault = 22538,
            UnholyBlight = 22029,
            UnholyPact = 22534,
            WraithWalk = 22529
        }
    },
    All = {
        Abilities = {
            AbominationLimb = {SpellID = 340735},
            AntimagicShell = {SpellID = 311975},
            AntimagicZone = {SpellID = 332829, CastType = "Ground"},
            Apocalypse = {SpellID = 220143},
            ArmyOfTheDead = {SpellID = 280440},
            BlightedRuneWeapon = {SpellID = 194918},
            BloodBoil = {SpellID = 331962},
            BloodForBlood = {SpellID = 233411},
            BloodMirror = {SpellID = 206977},
            BloodStrike = {SpellID = 52374},
            Bloodbolt = {SpellID = 205750},
            BloodyReprisal = {SpellID = 206935},
            BoneShield = {SpellID = 91289},
            Caught = {SpellID = 70355},
            ChainsOfIce = {SpellID = 53534},
            ChillStreak = {SpellID = 305392},
            Consumption = {SpellID = 205223},
            ControlUndead = {SpellID = 111673},
            Conversion = {SpellID = 119980},
            CorpseExploder = {SpellID = 127344},
            CorpseShield = {SpellID = 207319},
            DarkArbiter = {SpellID = 212412},
            DarkSimulacrum = {SpellID = 77606},
            DeathAndDecay = {SpellID = 43265, CastType = "Ground"},
            DeathChain = {SpellID = 203173},
            DeathCoil = {SpellID = 333470},
            DeathGate = {SpellID = 331524},
            DeathGrip = {SpellID = 311977},
            DeathPact = {SpellID = 48743},
            DeathSiphon = {SpellID = 108196},
            DeathStrike = {SpellID = 71489},
            DeathsAdvance = {SpellID = 311984},
            DeathsDue = {SpellID = 324128, CastType = "Ground"},
            Defile = {SpellID = 218100, CastType = "Ground"},
            Degeneration = {SpellID = 53605},
            DesecratedGround = {SpellID = 108201},
            EssenceOfArdenweald = {SpellID = 331117},
            Exhume = {SpellID = 194837},
            EyeOfAcherus = {SpellID = 57532},
            FrostStrike = {SpellID = 213793},
            GiftOfTheNaaru = {SpellID = 59545},
            GlacialAdvance = {SpellID = 281491},
            Gnaw = {SpellID = 260563},
            HeartStrike = {SpellID = 228645},
            HornOfWinter = {SpellID = 165762},
            HowlingBlast = {SpellID = 315937},
            HungeringRuneWeapon = {SpellID = 207127},
            IceboundFortitude = {SpellID = 48792},
            IcyTouch = {SpellID = 59131},
            Lichborne = {SpellID = 287081},
            MindFreeze = {SpellID = 53550},
            MonstrousBlow = {SpellID = 91797},
            MurderMachine = {SpellID = 204143},
            MurderousIntent = {SpellID = 207018},
            NecroticStrike = {SpellID = 233408},
            PathOfFrost = {SpellID = 314186},
            PlagueLeech = {SpellID = 123693},
            PlagueStrike = {SpellID = 60186},
            PowerfulSmash = {SpellID = 212337},
            RaiseAbomination = {SpellID = 288853},
            RaiseAlly = {SpellID = 61999},
            RaiseDead = {SpellID = 46585},
            Reanimation = {SpellID = 210128},
            Rise = {SpellID = 113143},
            RuneStrike = {SpellID = 316239},
            SacrificialPact = {SpellID = 327574},
            ScourgeStrike = {SpellID = 213795},
            ShackleTheUnworthy = {SpellID = 312202},
            SightBeyondSight = {SpellID = 110897},
            SindragosasFury = {SpellID = 190778},
            Smash = {SpellID = 212336},
            Strangulate = {SpellID = 47476},
            Superstrain = {SpellID = 331959},
            SwarmingMist = {SpellID = 311648},
            SweepingClaws = {SpellID = 91778},
            TiltAtWindmills = {SpellID = 93224},
            TongueGrip = {SpellID = 108206},
            Transfusion = {SpellID = 288977},
            VampiricBrood = {SpellID = 105588},
            WanderingPlague = {SpellID = 199725},
            WraithWalk = {SpellID = 219014}
        },
        Buffs = {},
        Debuffs = {},
        Talents = {
            DeathPact = 23373
        }
    }
}
