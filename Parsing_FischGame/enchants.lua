local module = {
    Enchants = {
        Abyssal = {
            Color = "0.152941, 0.223529, 0.678431";
            ConditionalBoosts = "function: 0x49348b54de9afa24";
            Description = "Caught fish have a 20% chance to be Abyssal, & a chance to be larger, or a low chance to be notably smaller";
            Display = "Abyssal";
            Mutations = {{
    Chance = 20;
    Name = "Abyssal"
}};
            RelicGroup = "Default";
            StatIncrease = 20;
            StrokeColor = "0.32549, 0.160784, 0.678431";
            WeightBoost = 30;
            _DescriptionTemplate = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>, & a chance to be larger, or a low chance to be notably smaller"
        };
        Anomalous = {
            Color = "1, 0.113725, 0.113725";
            Description = "Caught fish have a 20% chance to be duplicated & Anomalous";
            Display = "Anomalous";
            DuplicateChance = 20;
            DuplicateMutation = "Anomalous";
            RelicGroup = "Exalted";
            StatIncrease = 0;
            StrokeColor = "0.137255, 0.0156863, 0.0156863";
            _DescriptionTemplate = "Caught fish have a <$DuplicateChance$>% chance to be duplicated & <$DuplicateMutation$>"
        };
        Blessed = {
            Color = "1, 0.309804, 0.643137";
            Description = "Increases Shiny & Sparkling chances by 5%, Lure Speed by 5%, & Progress Speed by 5%";
            Display = "Blessed";
            LureBoost = 5;
            ProgressSpeedBoost = 5;
            RelicGroup = "Default";
            ShinyChance = 5;
            SparklingChance = 5;
            StatIncrease = 5;
            StrokeColor = "0.164706, 0.0784314, 0.133333";
            _DescriptionTemplate = "Increases Shiny & Sparkling chances by <$ShinyChance$>%, Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%"
        };
        ["Blessed Song"] = {
            Color = "0, 0.666667, 1";
            Description = "Increases Progress Speed by 40%";
            Display = "Blessed Song";
            ProgressSpeedBoost = 40;
            RelicGroup = "SongOfTheDeep";
            StatIncrease = 40;
            StrokeColor = "0, 0.235294, 0.352941";
            _DescriptionTemplate = "Increases Progress Speed by <$ProgressSpeedBoost$>%"
        };
        ["Blood Reckoning"] = {
            Color = "0.290196, 0.0313726, 0.0313726";
            Description = "Sacrifice health for a health-dependent chance to apply the Sanguine mutation";
            Display = "Blood Reckoning";
            HealthCost = 30;
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.639216, 0.0666667, 0.0666667";
            _DescriptionTemplate = "Sacrifice health for a health-dependent chance to apply the Sanguine mutation"
        };
        Breezed = {
            Color = "0.737255, 0.815686, 1";
            ConditionalBoosts = "function: 0xfe2c502328cf23f4";
            Description = "Increases Luck by 50%, Lure Speed by 20%, & Progress Speed by 10% [Doubled during Windy weather]";
            Display = "Breezed";
            LuckBoost = 50;
            LureBoost = 20;
            ProgressSpeedBoost = 10;
            RelicGroup = "Default";
            StatIncrease = 100;
            StrokeColor = "0.109804, 0.117647, 0.141176";
            _DescriptionTemplate = "Increases Luck by <$LuckBoost$>%, Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>% [Doubled during Windy weather]"
        };
        Chaotic = {
            Color = "0.0784314, 0.0745098, 0.0862745";
            Description = "Unleash pure chaos with every cast. Slashes fish with an 8% chance to awaken the Chaotic mutation";
            Display = "Chaotic";
            Mutations = {{
    Chance = 25;
    Name = "Chaotic"
}};
            RelicGroup = "Default";
            SlashChance = 15;
            SlashDamage = 6;
            StatIncrease = 8;
            StrokeColor = "1, 1, 1";
            _DescriptionTemplate = "Unleash pure chaos with every cast. Slashes fish with an 8% chance to awaken the Chaotic mutation"
        };
        Chronos = {
            Color = "0.113725, 0.329412, 0.827451";
            Description = "Occasionally freeze fish in place";
            Display = "Chronos";
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.0431373, 0.0509804, 0.137255";
            _DescriptionTemplate = "Occasionally freeze fish in place"
        };
        Clever = {
            Color = "1, 0.431373, 0.65098";
            Description = "2.25× XP after catching a fish";
            Display = "Clever";
            RelicGroup = "Default";
            StatIncrease = 2.25;
            StrokeColor = "0.141176, 0.0705882, 0.0941176";
            XpMultiply = 2.25;
            _DescriptionTemplate = "<$XpMultiply$>× XP after catching a fish"
        };
        Controlled = {
            Color = "0.686275, 0.607843, 1";
            ControlBoost = 0.15;
            Description = "Increases Control by 0.15";
            Display = "Controlled";
            RelicGroup = "Default";
            StatIncrease = 0.15;
            StrokeColor = "0.12549, 0.109804, 0.152941";
            _DescriptionTemplate = "Increases Control by <$ControlBoost$>"
        };
        Cryogenic = {
            Color = "0.580392, 0.921569, 1";
            Description = "A small chance to fully freeze a lured fish";
            Display = "Cryogenic";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 0;
            StrokeColor = "0.0823529, 0.168627, 0.192157";
            _DescriptionTemplate = "A small chance to fully freeze a lured fish"
        };
        Divine = {
            Color = "0.776471, 0.898039, 0.862745";
            Description = "Increases luck by 50%, Resilience by 20%, & Lure Speed by 25%";
            Display = "Divine";
            LuckBoost = 50;
            LureBoost = 25;
            RelicGroup = "Default";
            ResilienceBoost = 20;
            StatIncrease = 50;
            StrokeColor = "0.462745, 0.529412, 0.517647";
            _DescriptionTemplate = "Increases luck by <$LuckBoost$>%, Resilience by <$ResilienceBoost$>%, & Lure Speed by <$LureBoost$>%"
        };
        Eerie = {
            Color = "0.329412, 0.827451, 0.447059";
            Description = "10% chance for Eerie mutation, increases fish size by 10%, & increases Progress Speed by 10%";
            Display = "Eerie";
            Mutations = {{
    Chance = 10;
    Name = "Eerie"
}};
            ProgressSpeedBoost = 10;
            RelicGroup = "Eerie";
            Secondary = true;
            StatIncrease = 10;
            StrokeColor = "0.262745, 0.329412, 0.282353";
            WeightBoost = 10;
            _DescriptionTemplate = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases fish size by <$WeightBoost$>%, & increases Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Flashline = {
            Color = "1, 1, 1";
            ConditionalBoosts = "function: 0xe8828460de40f2c4";
            Description = "A small chance of majorly boosted Progress Speed";
            Display = "Flashline";
            ProgressSpeedBoost = 15;
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.192157, 0.192157, 0.192157";
            _DescriptionTemplate = "A small chance of majorly boosted Progress Speed"
        };
        Fractured = {
            Color = "0.835294, 0.811765, 0.72549";
            ControlBoost = -0.1;
            Description = "Increases Progress Speed by -50%, & Decreases Control by -0.1";
            Display = "Fractured";
            ProgressSpeedBoost = 50;
            RelicGroup = "Twisted";
            StatIncrease = 50;
            StrokeColor = "0.4, 0.388235, 0.345098";
            _DescriptionTemplate = "Increases Progress Speed by -50%, & Decreases Control by -0.1"
        };
        Frightful = {
            Color = "0.482353, 0.407843, 0.647059";
            Description = "10% chance for Frightful mutation, increases Progress Speed by 50%, & decreases Resilience by -20%";
            Display = "Frightful";
            Mutations = {{
    Chance = 10;
    Name = "Frightful"
}};
            ProgressSpeedBoost = 50;
            RelicGroup = "Frightful";
            ResilienceBoost = -20;
            StatIncrease = 0;
            StrokeColor = "0.172549, 0.145098, 0.196078";
            _DescriptionTemplate = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Progress Speed by <$ProgressSpeedBoost$>%, & decreases Resilience by <$ResilienceBoost$>%"
        };
        Ghastly = {
            Color = "0.505882, 0.87451, 0.678431";
            Description = "All caught fish become Translucent, with a 10% chance to double caught fish";
            Display = "Ghastly";
            DuplicateChance = 10;
            DuplicateMutation = "Transclucent";
            Mutations = {{
    Chance = 100;
    Name = "Translucent"
}};
            RelicGroup = "Default";
            StatIncrease = 100;
            StrokeColor = "0.180392, 0.309804, 0.239216";
            _DescriptionTemplate = "All caught fish become <$Mutations.1.Name$>, with a <$DuplicateChance$>% chance to double caught fish"
        };
        Glittered = {
            Color = "1, 0.945098, 0.627451";
            Description = "Increases Shiny & Sparkling chances by 3%";
            Display = "Glittered";
            RelicGroup = "Cosmic";
            Secondary = true;
            ShinyChance = 3;
            SparklingChance = 3;
            StatIncrease = 3;
            StrokeColor = "0.164706, 0.164706, 0.113725";
            _DescriptionTemplate = "Increases Shiny & Sparkling chances by <$ShinyChance$>%"
        };
        Greed = {
            Color = "1, 0.74902, 0";
            Description = "Makes fish 50% bigger, Decreases Lure Speed by -30%, & Decreases Progress Speed by -5%";
            Display = "Greed";
            LureBoost = -30;
            ProgressSpeedBoost = -5;
            RelicGroup = "Twisted";
            StatIncrease = 0;
            StrokeColor = "0.352941, 0.223529, 0.0666667";
            WeightBoost = 50;
            _DescriptionTemplate = "Makes fish <$WeightBoost$>% bigger, Decreases Lure Speed by <$LureBoost$>%, & Decreases Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Hasty = {
            Color = "0.898039, 0.819608, 0.360784";
            Description = "Increases Lure Speed by 55%";
            Display = "Hasty";
            LureBoost = 55;
            RelicGroup = "Default";
            StatIncrease = 55;
            StrokeColor = "0.196078, 0.164706, 0.0470588";
            _DescriptionTemplate = "Increases Lure Speed by <$LureBoost$>%"
        };
        Herculean = {
            Color = "1, 0.917647, 0";
            ControlBoost = 0.2;
            Description = "Increases Strength by 25,000kg, Control by 0.2, & Progress Speed by 10%";
            Display = "Herculean";
            ProgressSpeedBoost = 10;
            RelicGroup = "Exalted";
            StatIncrease = 25000;
            StrengthBoost = 25000;
            StrokeColor = "0.188235, 0.168627, 0";
            _DescriptionTemplate = "Increases Strength by <$StrengthBoost$>kg, Control by <$ControlBoost$>, & Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Immortal = {
            Color = "0.909804, 0.85098, 1";
            Description = "Increases Luck by 75%, & Progress Speed by 30%";
            Display = "Immortal";
            LuckBoost = 75;
            ProgressSpeedBoost = 30;
            RelicGroup = "Exalted";
            StatIncrease = 75;
            StrokeColor = "0.270588, 0.254902, 0.298039";
            _DescriptionTemplate = "Increases Luck by <$LuckBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Insight = {
            Color = "0.501961, 1, 0.447059";
            Description = "1.5× XP after catching a fish, Lure Speed increased by 30%, & grants a 30% chance to Purify caught fish";
            Display = "Insight";
            LureBoost = 30;
            Mutations = {{
    Chance = 30;
    Name = "Purified"
}};
            RelicGroup = "Default";
            StatIncrease = 1.5;
            StrokeColor = "0.113725, 0.141176, 0.105882";
            XpMultiply = 1.5;
            _DescriptionTemplate = "<$XpMultiply$>× XP after catching a fish, Lure Speed increased by <$LureBoost$>%, & grants a <$Mutations.1.Chance$>% chance to Purify caught fish"
        };
        Invincible = {
            Color = "1, 0.384314, 0.0980392";
            Description = "Grants infinite Strength, & allows fishing in any body of liquid";
            Display = "Invincible";
            DurabilityBoost = 200;
            RelicGroup = "Exalted";
            StatIncrease = math.huge;
            StrengthBoost = math.huge;
            StrokeColor = "0.137255, 0.0509804, 0.0117647";
            _DescriptionTemplate = "Grants infinite Strength, & allows fishing in any body of liquid"
        };
        Long = {
            Color = "0.87451, 0.647059, 0.25098";
            Description = "Increases Line Distance by 50 studs, Resilience by 35%, & Progress Speed by 15%";
            Display = "Long";
            LineDistanceBoost = 50;
            ProgressSpeedBoost = 15;
            RelicGroup = "Default";
            ResilienceBoost = 35;
            StatIncrease = 50;
            StrokeColor = "0.129412, 0.0980392, 0.054902";
            _DescriptionTemplate = "Increases Line Distance by <$LineDistanceBoost$> studs, Resilience by <$ResilienceBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Lucky = {
            Color = "0.494118, 0.898039, 0.643137";
            Description = "Increases Luck by 25%, Lure Speed by 15%, & natural Mutation chances by 50%";
            Display = "Lucky";
            LuckBoost = 25;
            LureBoost = 15;
            NaturalMutationChance = 50;
            RelicGroup = "Default";
            StatIncrease = 25;
            StrokeColor = "0.0980392, 0.176471, 0.12549";
            _DescriptionTemplate = "Increases Luck by <$LuckBoost$>%, Lure Speed by <$LureBoost$>%, & natural Mutation chances by <$NaturalMutationChance$>%"
        };
        Momentum = {
            Color = "0.827451, 0.701961, 0.501961";
            ConditionalBoosts = "function: 0x9a2f810d5a68ffe4";
            Description = "Perfect Catches increase Lure, Resilience & Progress Speed incrementally";
            Display = "Momentum";
            ProgressSpeedBoost = 0;
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.137255, 0.105882, 0.0705882";
            _DescriptionTemplate = "Perfect Catches increase Lure, Resilience & Progress Speed incrementally"
        };
        Mutated = {
            Color = "0.576471, 0.898039, 0.439216";
            Description = "Increases natural Mutation chances by 90%";
            Display = "Mutated";
            NaturalMutationChance = 90;
            RelicGroup = "Default";
            StatIncrease = 90;
            StrokeColor = "0.176471, 0.227451, 0.152941";
            _DescriptionTemplate = "Increases natural Mutation chances by <$NaturalMutationChance$>%"
        };
        Mystical = {
            Color = "0.760784, 0.87451, 1";
            Description = "Increases Luck by 25%, Resilience by 45%, Lure Speed by 15%, & Progress Speed by 10%";
            Display = "Mystical";
            LuckBoost = 25;
            LureBoost = 15;
            ProgressSpeedBoost = 10;
            RelicGroup = "Exalted";
            ResilienceBoost = 45;
            StatIncrease = 45;
            StrokeColor = "0.168627, 0.196078, 0.223529";
            _DescriptionTemplate = "Increases Luck by <$LuckBoost$>%, Resilience by <$ResilienceBoost$>%, Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Noir = {
            Color = "1, 1, 1";
            Description = "Caught fish will be Albino or Darkened, with a 20% size boost";
            Display = "Noir";
            Mutations = {{
    Chance = 50;
    Name = "Albino"
}, {
    Chance = 50;
    Name = "Darkened"
}};
            RelicGroup = "Default";
            StatIncrease = 100;
            StrokeColor = "0, 0, 0";
            WeightBoost = 20;
            _DescriptionTemplate = "Caught fish will be Albino or Darkened, with a <$WeightBoost$>% size boost"
        };
        Overclocked = {
            Color = "0, 1, 0.8";
            Description = "Increases Progress Speed by 5% for any fish";
            Display = "Overclocked";
            ForcedProgressSpeedBoost = 5;
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 0;
            StrokeColor = "0.0431373, 0.137255, 0.109804";
            _DescriptionTemplate = "Increases Progress Speed by <$ForcedProgressSpeedBoost$>% for any fish"
        };
        ["Pharaohs Curse"] = {
            Color = "0.611765, 0.545098, 0.411765";
            Description = "Caught fish have a 25% chance to be Sandy";
            Display = "Pharaohs Curse";
            Mutations = {{
    Chance = 25;
    Name = "Sandy"
}};
            RelicGroup = "Twisted";
            StatIncrease = 25;
            StrokeColor = "0.156863, 0.141176, 0.105882";
            _DescriptionTemplate = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>"
        };
        Piercing = {
            Color = "0.0509804, 0.654902, 0.552941";
            Description = "Rod has a chance to stab fish while reeling, & increases Progress Speed by 15%";
            Display = "Piercing";
            ProgressSpeedBoost = 15;
            RelicGroup = "Exalted";
            SlashChance = 30;
            SlashDamage = 6;
            StatIncrease = 0;
            StrokeColor = "0.0117647, 0.156863, 0.129412";
            _DescriptionTemplate = "Rod has a chance to stab fish while reeling, & increases Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Putrid = {
            Color = "0.262745, 0.345098, 0.192157";
            Description = "Decreased Luck by -10%";
            Display = "Putrid";
            LuckBoost = -10;
            Mutations = {{
    Chance = 2;
    Name = "Putrid"
}};
            RelicGroup = "Twisted";
            StatIncrease = 10;
            StrokeColor = "0.0352941, 0.0470588, 0.027451";
            _DescriptionTemplate = "Decreased Luck by <$LuckBoost$>%"
        };
        Quality = {
            Color = "0.619608, 1, 0.215686";
            Description = "Increases Luck by 20%, Resilience by 10%, Lure Speed by 20%, & Progress Speed by 5%";
            Display = "Quality";
            LuckBoost = 20;
            LureBoost = 20;
            ProgressSpeedBoost = 5;
            RelicGroup = "Default";
            ResilienceBoost = 10;
            StatIncrease = 0;
            StrokeColor = "0.219608, 0.352941, 0.0745098";
            _DescriptionTemplate = "Increases Luck by <$LuckBoost$>%, Resilience by <$ResilienceBoost$>%, Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Quantum = {
            Color = "1, 0, 0.701961";
            Description = "Caught fish have a 25% chance to be Subspace, & increased Resilience by 25%";
            Display = "Quantum";
            Mutations = {{
    Chance = 25;
    Name = "Subspace"
}};
            RelicGroup = "Exalted";
            ResilienceBoost = 25;
            StatIncrease = 25;
            StrokeColor = "0.192157, 0, 0.141176";
            _DescriptionTemplate = "Caught fish have a <$Mutations.1.Chance$>% chance to be <$Mutations.1.Name$>, & increased Resilience by <$ResilienceBoost$>%"
        };
        Rage = {
            Color = "0.819608, 0.0666667, 0.0666667";
            Description = "Slashes fish with unmatched force, Decreases Luck by -50%, & Decreases Resilience by -20%";
            Display = "Rage";
            LuckBoost = -50;
            RelicGroup = "Twisted";
            ResilienceBoost = -20;
            SlashChance = 40;
            SlashDamage = 8;
            StatIncrease = 0;
            StrokeColor = "0.141176, 0.0666667, 0.0666667";
            _DescriptionTemplate = "Slashes fish with unmatched force, Decreases Luck by <$LuckBoost$>%, & Decreases Resilience by <$ResilienceBoost$>%"
        };
        Resilient = {
            Color = "0.415686, 1, 0.776471";
            Description = "Increases Resilience by 35%, & Fish Size by 10%";
            Display = "Resilient";
            RelicGroup = "Default";
            ResilienceBoost = 35;
            StatIncrease = 35;
            StrokeColor = "0.0666667, 0.113725, 0.0980392";
            WeightBoost = 10;
            _DescriptionTemplate = "Increases Resilience by <$ResilienceBoost$>%, & Fish Size by <$WeightBoost$>%"
        };
        Scavenger = {
            Color = "1, 0.74902, 0.4";
            Description = "Raised chances for utility catches";
            Display = "Scavenger";
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.219608, 0.152941, 0.0509804";
            _DescriptionTemplate = "Raised chances for utility catches"
        };
        Scrapper = {
            BaitPreserveChance = 60;
            Color = "1, 0.607843, 0.32549";
            Description = "60% chance to not consume Bait";
            Display = "Scrapper";
            RelicGroup = "Default";
            StatIncrease = 60;
            StrokeColor = "0.141176, 0.0901961, 0.0509804";
            _DescriptionTemplate = "<$BaitPreserveChance$>% chance to not consume Bait"
        };
        ["Sea King"] = {
            Color = "0.207843, 0.301961, 0.827451";
            Description = "Makes fish 30% bigger";
            Display = "Sea King";
            RelicGroup = "Default";
            StatIncrease = 30;
            StrokeColor = "0.0352941, 0.0509804, 0.137255";
            WeightBoost = 30;
            _DescriptionTemplate = "Makes fish <$WeightBoost$>% bigger"
        };
        ["Sea Overlord"] = {
            Color = "0.2, 0.658824, 0.827451";
            Description = "Makes fish 40% bigger";
            Display = "Sea Overlord";
            RelicGroup = "Exalted";
            StatIncrease = 40;
            StrokeColor = "0.0352941, 0.113725, 0.137255";
            WeightBoost = 40;
            _DescriptionTemplate = "Makes fish <$WeightBoost$>% bigger"
        };
        ["Sea Prince"] = {
            Color = "0.329412, 0.462745, 0.827451";
            Description = "Makes fish 15% bigger";
            Display = "Sea Prince";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 15;
            StrokeColor = "0.0705882, 0.0901961, 0.137255";
            WeightBoost = 15;
            _DescriptionTemplate = "Makes fish <$WeightBoost$>% bigger"
        };
        Spooky = {
            Color = "0.862745, 0.592157, 0.317647";
            ControlBoost = 0.1;
            Description = "10% chance for Spooky mutation, increases Control by 0.1, & rapid Slashes";
            Display = "Spooky";
            Mutations = {{
    Chance = 10;
    Name = "Spooky"
}};
            RelicGroup = "Spooky";
            SlashChance = 30;
            SlashDamage = 3;
            StatIncrease = 0;
            StrokeColor = "0.196078, 0.152941, 0.109804";
            _DescriptionTemplate = "<$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation, increases Control by <$ControlBoost$>, & rapid Slashes"
        };
        Steady = {
            Color = "0.898039, 0.811765, 0.74902";
            ControlBoost = 0.05;
            Description = "Increases Progress Speed by 20%, & Control by 0.05";
            Display = "Steady";
            ProgressSpeedBoost = 20;
            RelicGroup = "Default";
            StatIncrease = 20;
            StrokeColor = "0.0823529, 0.0745098, 0.0705882";
            _DescriptionTemplate = "Increases Progress Speed by <$ProgressSpeedBoost$>%, & Control by <$ControlBoost$>"
        };
        Storming = {
            Color = "1, 0.92549, 0.513726";
            ConditionalBoosts = "function: 0xc73ee347e21c28c4";
            Description = "Increases Luck by 50%, Lure Speed by 25%, & 25% chance for Electric mutation [Doubled during Rainy weather]";
            Display = "Storming";
            LuckBoost = 50;
            LureBoost = 25;
            Mutations = {{
    Chance = 25;
    Name = "Electric"
}};
            RelicGroup = "Default";
            StatIncrease = 100;
            StrokeColor = "0.141176, 0.141176, 0.0941176";
            _DescriptionTemplate = "Increases Luck by <$LuckBoost$>%, Lure Speed by <$LureBoost$>%, & <$Mutations.1.Chance$>% chance for <$Mutations.1.Name$> mutation [Doubled during Rainy weather]"
        };
        Swift = {
            Color = "0.709804, 0.890196, 0.898039";
            Description = "Increases Lure Speed by 30%, & Progress Speed by 10%";
            Display = "Swift";
            LureBoost = 30;
            ProgressSpeedBoost = 10;
            RelicGroup = "Default";
            StatIncrease = 30;
            StrokeColor = "0.156863, 0.196078, 0.196078";
            _DescriptionTemplate = "Increases Lure Speed by <$LureBoost$>%, & Progress Speed by <$ProgressSpeedBoost$>%"
        };
        Tenacity = {
            Color = "1, 0.972549, 0.670588";
            ConditionalBoosts = "function: 0xa45286195610e104";
            Description = "Increases Progress Speed by 20% for every reel snapped in a row";
            Display = "Tenacity";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 0;
            StrokeColor = "0.278431, 0.27451, 0.211765";
            _DescriptionTemplate = "Increases Progress Speed by 20% for every reel snapped in a row"
        };
        Tryhard = {
            Color = "1, 0, 0";
            ControlBoost = -0.1;
            Description = "Increases Progress Speed by 30%, & decreases Control by -0.1";
            Display = "Tryhard";
            ProgressSpeedBoost = 30;
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 0;
            StrokeColor = "0.192157, 0.137255, 0.137255";
            _DescriptionTemplate = "Increases Progress Speed by 30%, & decreases Control by -0.1"
        };
        Unbreakable = {
            Color = "0.882353, 0.701961, 0.898039";
            ControlBoost = 0.1;
            Description = "Increases Strength by 10,000kg, & Control by 0.1";
            Display = "Unbreakable";
            RelicGroup = "Default";
            StatIncrease = 10000;
            StrengthBoost = 10000;
            StrokeColor = "0.0627451, 0.0509804, 0.0627451";
            _DescriptionTemplate = "Increases Strength by <$StrengthBoost$>kg, & Control by <$ControlBoost$>"
        };
        Weak = {
            Color = "0.52549, 0.52549, 0.52549";
            Description = "Decreased Strength by -10%";
            Display = "Weak";
            RelicGroup = "Twisted";
            StatIncrease = 10;
            StrengthBoostPercent = -10;
            StrokeColor = "0.0352941, 0.0352941, 0.0352941";
            _DescriptionTemplate = "Decreased Strength by <$StrengthBoostPercent$>%"
        };
        Wise = {
            Color = "0.784314, 0.411765, 1";
            Description = "1.199× XP after catching a fish";
            Display = "Wise";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 1.2;
            StrokeColor = "0.164706, 0.141176, 0.192157";
            XpMultiply = 1.2;
            _DescriptionTemplate = "<$XpMultiply$>× XP after catching a fish"
        };
        Wobbly = {
            Color = "0.337255, 0.356863, 0.439216";
            ControlBoost = -0.05;
            Description = "Decreases Control by -0.05";
            Display = "Wobbly";
            RelicGroup = "Twisted";
            StatIncrease = -0.05;
            StrokeColor = "0.0784314, 0.0823529, 0.0941176";
            _DescriptionTemplate = "Decreases Control by -0.05"
        };
        Wormhole = {
            Color = "0.568627, 0.352941, 1";
            Description = "80% chance to catch a fish from a random place";
            Display = "Wormhole";
            RelicGroup = "Default";
            StatIncrease = 80;
            StrokeColor = "0.0509804, 0.0313726, 0.0862745";
            _DescriptionTemplate = "<$StatIncrease$>% chance to catch a fish from a random place"
        };
    };

    -- Системные поля
    GetCurrentBoosts = "function: 0x4d448ce5e24af9a4";
    UpdateDescriptions = "function: 0xbba36e27c9128f64";
}

return module
-- Module: enchants
-- Total items: 1
-- System fields: 0
