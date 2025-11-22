local module = {
    Enchants = {
        Abyssal = {
            Color = "0.152941, 0.223529, 0.678431";
            Description = "Caught fish have a 20% chance to be Abyssal, & a chance to be larger, or a low chance to be notably smaller";
            Display = "Abyssal";
            RelicGroup = "Default";
            StatIncrease = 20;
            StrokeColor = "0.32549, 0.160784, 0.678431"
        };
        Anomalous = {
            Color = "1, 0.113725, 0.113725";
            Description = "Caught fish have a 20% chance to be duplicated & Anomalous";
            Display = "Anomalous";
            RelicGroup = "Exalted";
            StatIncrease = 0;
            StrokeColor = "0.137255, 0.0156863, 0.0156863"
        };
        Blessed = {
            Color = "1, 0.309804, 0.643137";
            Description = "Increases Shiny & Sparkling chances by 5%, Lure Speed by 5%, & Progress Speed by 5%";
            Display = "Blessed";
            ProgressSpeedBoost = 5;
            RelicGroup = "Default";
            StatIncrease = 5;
            StrokeColor = "0.164706, 0.0784314, 0.133333"
        };
        ["Blessed Song"] = {
            Color = "0, 0.666667, 1";
            Description = "Increases Progress Speed by 40%";
            Display = "Blessed Song";
            ProgressSpeedBoost = 40;
            RelicGroup = "SongOfTheDeep";
            StatIncrease = 40;
            StrokeColor = "0, 0.235294, 0.352941"
        };
        ["Blood Reckoning"] = {
            Color = "0.290196, 0.0313726, 0.0313726";
            Description = "Sacrifice health for a health-dependent chance to apply the Sanguine mutation";
            Display = "Blood Reckoning";
            HealthCost = 30;
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.639216, 0.0666667, 0.0666667"
        };
        Breezed = {
            Color = "0.737255, 0.815686, 1";
            ConditionalBoosts = "function: 0x373a8a409708c252";
            Description = "Increases Luck by 50%, Lure Speed by 10%, & Progress Speed by 10% [Doubled during Windy weather]";
            Display = "Breezed";
            LureSpeedBonus = 20;
            ProgressSpeedBoost = 10;
            RelicGroup = "Default";
            StatIncrease = 100;
            StrokeColor = "0.109804, 0.117647, 0.141176"
        };
        Chaotic = {
            Color = "0.0784314, 0.0745098, 0.0862745";
            Description = "Unleash pure chaos with every cast. Slashes fish with an 8% chance to awaken the Chaotic mutation";
            Display = "Chaotic";
            RelicGroup = "Default";
            SlashChance = 15;
            SlashDamage = 6;
            StatIncrease = 8;
            StrokeColor = "1, 1, 1"
        };
        Chronos = {
            Color = "0.113725, 0.329412, 0.827451";
            Description = "Occasionally freeze fish in place";
            Display = "Chronos";
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.0431373, 0.0509804, 0.137255"
        };
        Clever = {
            Color = "1, 0.431373, 0.65098";
            Description = "2.25X XP after catching a fish";
            Display = "Clever";
            RelicGroup = "Default";
            StatIncrease = 2.25;
            StrokeColor = "0.141176, 0.0705882, 0.0941176"
        };
        Controlled = {
            Color = "0.686275, 0.607843, 1";
            ControlIncrease = 0.15;
            Description = "Increases Control by 0.15";
            Display = "Controlled";
            RelicGroup = "Default";
            StatIncrease = 0.15;
            StrokeColor = "0.12549, 0.109804, 0.152941"
        };
        Cryogenic = {
            Color = "0.580392, 0.921569, 1";
            Description = "A small chance to fully freeze a lured fish";
            Display = "Cryogenic";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 0;
            StrokeColor = "0.0823529, 0.168627, 0.192157"
        };
        Divine = {
            Color = "0.776471, 0.898039, 0.862745";
            Description = "Increases luck by 50%, Resilience by 20%, & Lure Speed by 25%";
            Display = "Divine";
            RelicGroup = "Default";
            ResilienceBoost = 20;
            StatIncrease = 50;
            StrokeColor = "0.462745, 0.529412, 0.517647"
        };
        Eerie = {
            Color = "0.329412, 0.827451, 0.447059";
            Description = "10% chance for Eerie mutation, increases fish size by 10%, & increases Progress Speed by 10%";
            Display = "Eerie";
            EerieMutationChance = 10;
            ProgressSpeedBoost = 10;
            RelicGroup = "Eerie";
            Secondary = true;
            StatIncrease = 10;
            StrokeColor = "0.262745, 0.329412, 0.282353"
        };
        Flashline = {
            Color = "1, 1, 1";
            ConditionalBoosts = "function: 0x2dea973a1735be72";
            Description = "A small chance of majorly boosted Progress Speed";
            Display = "Flashline";
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.192157, 0.192157, 0.192157"
        };
        Fractured = {
            Color = "0.835294, 0.811765, 0.72549";
            ControlIncrease = -0.1;
            Description = "Increases Progress Speed by 50%, & Decreases Control by 0.1";
            Display = "Fractured";
            ProgressSpeedBoost = 50;
            RelicGroup = "Twisted";
            StatIncrease = 50;
            StrokeColor = "0.4, 0.388235, 0.345098"
        };
        Frightful = {
            Color = "0.482353, 0.407843, 0.647059";
            Description = "10% chance for Frightful mutation, increases Progress Speed by 50%, & decreases Resilience by 20%";
            Display = "Frightful";
            FrightfulMutationChance = 10;
            ProgressSpeedBoost = 50;
            RelicGroup = "Frightful";
            ResilienceBoost = -20;
            StatIncrease = 0;
            StrokeColor = "0.172549, 0.145098, 0.196078"
        };
        Ghastly = {
            Color = "0.505882, 0.87451, 0.678431";
            Description = "All caught fish become Translucent, with a 10% chance to double caught fish";
            Display = "Ghastly";
            RelicGroup = "Default";
            StatIncrease = 100;
            StrokeColor = "0.180392, 0.309804, 0.239216"
        };
        Glittered = {
            Color = "1, 0.945098, 0.627451";
            Description = "Increases Shiny & Sparkling chances by 3%";
            Display = "Glittered";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 3;
            StrokeColor = "0.164706, 0.164706, 0.113725"
        };
        Greed = {
            Color = "1, 0.74902, 0";
            Description = "Makes fish 50% bigger, Decreases Lure Speed by 30%, & Decreases Progress Speed by 5%";
            Display = "Greed";
            ProgressSpeedBoost = -5;
            RelicGroup = "Twisted";
            StatIncrease = 0;
            StrokeColor = "0.352941, 0.223529, 0.0666667";
            WeightIncrease = 50
        };
        Hasty = {
            Color = "0.898039, 0.819608, 0.360784";
            Description = "Increases Lure Speed by 55%";
            Display = "Hasty";
            RelicGroup = "Default";
            StatIncrease = 55;
            StrokeColor = "0.196078, 0.164706, 0.0470588"
        };
        Herculean = {
            Color = "1, 0.917647, 0";
            ControlIncrease = 0.2;
            Description = "Increases Strength by 25,000kg, Control by 0.2, & Progress Speed by 10%";
            Display = "Herculean";
            ProgressSpeedBoost = 10;
            RelicGroup = "Exalted";
            StatIncrease = 25000;
            StrokeColor = "0.188235, 0.168627, 0"
        };
        Immortal = {
            Color = "0.909804, 0.85098, 1";
            Description = "Increases Luck by 75%, & Progress Speed by 30%";
            Display = "Immortal";
            ProgressSpeedBoost = 30;
            RelicGroup = "Exalted";
            StatIncrease = 75;
            StrokeColor = "0.270588, 0.254902, 0.298039"
        };
        Insight = {
            Color = "0.501961, 1, 0.447059";
            Description = "1.5X XP after catching a fish, Lure Speed increased by 30%, & grants a 30% chance to Purify caught fish";
            Display = "Insight";
            PurifiedChance = 30;
            RelicGroup = "Default";
            StatIncrease = 1.5;
            StrokeColor = "0.113725, 0.141176, 0.105882"
        };
        Invincible = {
            Color = "1, 0.384314, 0.0980392";
            Description = "Grants infinite Strength, & allows fishing in any body of liquid";
            Display = "Invincible";
            RelicGroup = "Exalted";
            StatIncrease = math.huge;
            StrokeColor = "0.137255, 0.0509804, 0.0117647"
        };
        Long = {
            Color = "0.87451, 0.647059, 0.25098";
            Description = "Increases Line Distance by 50 studs, Resilience by 20%, & Progress Speed by 15%";
            Display = "Long";
            ProgressSpeedBoost = 15;
            RelicGroup = "Default";
            ResilienceBoost = 35;
            StatIncrease = 50;
            StrokeColor = "0.129412, 0.0980392, 0.054902"
        };
        Lucky = {
            Color = "0.494118, 0.898039, 0.643137";
            Description = "Increases Luck by 25%, Lure Speed by 15%, & natural Mutation chances by 50%";
            Display = "Lucky";
            MutationStatIncrease = 50;
            RelicGroup = "Default";
            StatIncrease = 25;
            StrokeColor = "0.0980392, 0.176471, 0.12549"
        };
        Momentum = {
            Color = "0.827451, 0.701961, 0.501961";
            ConditionalBoosts = "function: 0x723e9f6ca9bf24b2";
            Description = "Perfect Catches increase Lure, Resilience & Progress Speed incrementally";
            Display = "Momentum";
            ProgressSpeedBoost = 0;
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.137255, 0.105882, 0.0705882"
        };
        Mutated = {
            Color = "0.576471, 0.898039, 0.439216";
            Description = "Increases natural Mutation chances by 90%";
            Display = "Mutated";
            RelicGroup = "Default";
            StatIncrease = 90;
            StrokeColor = "0.176471, 0.227451, 0.152941"
        };
        Mystical = {
            Color = "0.760784, 0.87451, 1";
            Description = "Increases Luck by 25%, Resilience by 45%, Lure Speed by 15%, & Progress Speed by 10%";
            Display = "Mystical";
            LuckStatIncrease = 25;
            ProgressSpeedBoost = 10;
            RelicGroup = "Exalted";
            ResilienceBoost = 45;
            StatIncrease = 45;
            StrokeColor = "0.168627, 0.196078, 0.223529"
        };
        Noir = {
            Color = "1, 1, 1";
            Description = "Caught fish will be Albino or Darkened, with a slight size boost";
            Display = "Noir";
            RelicGroup = "Default";
            StatIncrease = 100;
            StrokeColor = "0, 0, 0";
            WeightIncrease = 20
        };
        Overclocked = {
            Color = "0, 1, 0.8";
            Description = "Increases Progress Speed by 5% for any fish";
            Display = "Overclocked";
            ForcedProgressSpeedBoost = 5;
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 0;
            StrokeColor = "0.0431373, 0.137255, 0.109804"
        };
        ["Pharaohs Curse"] = {
            Color = "0.611765, 0.545098, 0.411765";
            Description = "Caught fish have a 25% chance to be Sandy";
            Display = "Pharaohs Curse";
            RelicGroup = "Twisted";
            StatIncrease = 25;
            StrokeColor = "0.156863, 0.141176, 0.105882"
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
            StrokeColor = "0.0117647, 0.156863, 0.129412"
        };
        Putrid = {
            Color = "0.262745, 0.345098, 0.192157";
            Description = "Decreased Luck by 10%";
            Display = "Putrid";
            RelicGroup = "Twisted";
            StatIncrease = 10;
            StrokeColor = "0.0352941, 0.0470588, 0.027451"
        };
        Quality = {
            Color = "0.619608, 1, 0.215686";
            Description = "Increases Luck by 20%, Resilience by 10%, Lure Speed by 20%, & Progress Speed by 5%";
            Display = "Quality";
            ProgressSpeedBoost = 5;
            RelicGroup = "Default";
            ResilienceBoost = 10;
            StatIncrease = 0;
            StrokeColor = "0.219608, 0.352941, 0.0745098"
        };
        Quantum = {
            Color = "1, 0, 0.701961";
            Description = "Caught fish have a 25% chance to be Subspace, & increased Resilience by 25%";
            Display = "Quantum";
            RelicGroup = "Exalted";
            ResilienceBoost = 25;
            StatIncrease = 25;
            StrokeColor = "0.192157, 0, 0.141176"
        };
        Rage = {
            Color = "0.819608, 0.0666667, 0.0666667";
            Description = "Slashes fish with unmatched force, Decreases Luck by 50%, & Decreases Resilience by 20%";
            Display = "Rage";
            RelicGroup = "Twisted";
            SlashChance = 40;
            SlashDamage = 8;
            StatIncrease = 0;
            StrokeColor = "0.141176, 0.0666667, 0.0666667"
        };
        Resilient = {
            Color = "0.415686, 1, 0.776471";
            Description = "Increases Resilience by 35%, & Fish Size by 10%";
            Display = "Resilient";
            RelicGroup = "Default";
            ResilienceBoost = 35;
            StatIncrease = 35;
            StrokeColor = "0.0666667, 0.113725, 0.0980392";
            WeightIncrease = 10
        };
        Scavenger = {
            Color = "1, 0.74902, 0.4";
            Description = "Raised chances for utility catches";
            Display = "Scavenger";
            RelicGroup = "Default";
            StatIncrease = 0;
            StrokeColor = "0.219608, 0.152941, 0.0509804"
        };
        Scrapper = {
            Color = "1, 0.607843, 0.32549";
            Description = "60% chance to not consume Bait";
            Display = "Scrapper";
            RelicGroup = "Default";
            StatIncrease = 60;
            StrokeColor = "0.141176, 0.0901961, 0.0509804"
        };
        ["Sea King"] = {
            Color = "0.207843, 0.301961, 0.827451";
            Description = "Makes fish 30% bigger";
            Display = "Sea King";
            RelicGroup = "Default";
            StatIncrease = 30;
            StrokeColor = "0.0352941, 0.0509804, 0.137255"
        };
        ["Sea Overlord"] = {
            Color = "0.2, 0.658824, 0.827451";
            Description = "Makes fish 40% bigger";
            Display = "Sea Overlord";
            RelicGroup = "Exalted";
            StatIncrease = 40;
            StrokeColor = "0.0352941, 0.113725, 0.137255"
        };
        ["Sea Prince"] = {
            Color = "0.329412, 0.462745, 0.827451";
            Description = "Makes fish 15% bigger";
            Display = "Sea Prince";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 15;
            StrokeColor = "0.0705882, 0.0901961, 0.137255"
        };
        Spooky = {
            Color = "0.862745, 0.592157, 0.317647";
            ControlIncrease = 0.1;
            Description = "10% chance for Spooky mutation, increases Control by 0.1, & rapid Slashes";
            Display = "Spooky";
            RelicGroup = "Spooky";
            SlashChance = 30;
            SlashDamage = 3;
            SpookyMutationChance = 10;
            StatIncrease = 0;
            StrokeColor = "0.196078, 0.152941, 0.109804"
        };
        Steady = {
            Color = "0.898039, 0.811765, 0.74902";
            ControlIncrease = 0.05;
            Description = "Increases Progress Speed by 20%, & Control by 0.05";
            Display = "Steady";
            ProgressSpeedBoost = 20;
            RelicGroup = "Default";
            StatIncrease = 20;
            StrokeColor = "0.0823529, 0.0745098, 0.0705882"
        };
        Storming = {
            Color = "1, 0.92549, 0.513726";
            Description = "Increases Luck by 50%, Lure Speed by 25%, & 25% chance for Electric mutation [Doubled during Rainy weather]";
            Display = "Storming";
            ElectricMutationChance = 50;
            LureSpeedBonus = 50;
            RelicGroup = "Default";
            StatIncrease = 100;
            StrokeColor = "0.141176, 0.141176, 0.0941176"
        };
        Swift = {
            Color = "0.709804, 0.890196, 0.898039";
            Description = "Increases Lure Speed by 30%, & Progress Speed by 10%";
            Display = "Swift";
            ProgressSpeedBoost = 10;
            RelicGroup = "Default";
            StatIncrease = 30;
            StrokeColor = "0.156863, 0.196078, 0.196078"
        };
        Tenacity = {
            Color = "1, 0.972549, 0.670588";
            ConditionalBoosts = "function: 0x886aa4636222acf2";
            Description = "Increases Progress Speed by 20% for every reel snapped in a row";
            Display = "Tenacity";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 0;
            StrokeColor = "0.278431, 0.27451, 0.211765"
        };
        Tryhard = {
            Color = "1, 0, 0";
            ControlIncrease = -0.1;
            Description = "Increases Progress Speed by 30%, & decreases Control by 0.1";
            Display = "Tryhard";
            ProgressSpeedBoost = 30;
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 0;
            StrokeColor = "0.192157, 0.137255, 0.137255"
        };
        Unbreakable = {
            Color = "0.882353, 0.701961, 0.898039";
            ControlIncrease = 0.1;
            Description = "Increases Strength by 10,000kg, & Control by 0.1";
            Display = "Unbreakable";
            RelicGroup = "Default";
            StatIncrease = 10000;
            StrokeColor = "0.0627451, 0.0509804, 0.0627451"
        };
        Weak = {
            Color = "0.52549, 0.52549, 0.52549";
            Description = "Decreased Strength by 10%";
            Display = "Weak";
            RelicGroup = "Twisted";
            StatIncrease = 10;
            StrokeColor = "0.0352941, 0.0352941, 0.0352941"
        };
        Wise = {
            Color = "0.784314, 0.411765, 1";
            Description = "1.2X XP after catching a fish";
            Display = "Wise";
            RelicGroup = "Cosmic";
            Secondary = true;
            StatIncrease = 1.2;
            StrokeColor = "0.164706, 0.141176, 0.192157"
        };
        Wobbly = {
            Color = "0.337255, 0.356863, 0.439216";
            ControlIncrease = -0.05;
            Description = "Decreases Control by 0.05";
            Display = "Wobbly";
            RelicGroup = "Twisted";
            StatIncrease = -0.05;
            StrokeColor = "0.0784314, 0.0823529, 0.0941176"
        };
        Wormhole = {
            Color = "0.568627, 0.352941, 1";
            Description = "80% chance to catch a fish from a random place";
            Display = "Wormhole";
            RelicGroup = "Default";
            StatIncrease = 80;
            StrokeColor = "0.0509804, 0.0313726, 0.0862745"
        };
    };

    -- Системные поля
    LoadVisual = "function: 0xaf3ea927c0ae8a92";
}

return module
-- Module: enchants
-- Total items: 1
-- System fields: 0
