local module = {
    OrderedRarities = {
        [1] = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.568627, 0.568627, 0.568627";
            LuckMode = "always_unfavoring";
            Name = "Trash";
            NoAnglerQuest = true;
            Order = 1
        };
        [10] = {
            AnnounceInChat = false;
            AutoSellMode = "setting";
            BiteSoundName = "bitelegendary";
            Color = "0.290196, 0.392157, 0.85098";
            HideInBestiary = true;
            LuckMode = "default";
            Name = "Limited";
            Order = 10
        };
        [11] = {
            AnglerQuestRequirement = 50;
            AnnounceInChat = true;
            AutoSellMode = "never";
            BiteSoundName = "bitelegendary";
            Color = "0.470588, 1, 0.717647";
            LuckMode = "default";
            Name = "Relic";
            Order = 11
        };
        [12] = {
            AnnounceInChat = true;
            AutoSellMode = "never";
            Color = "1, 0.247059, 0.0196078";
            LuckMode = "default";
            Name = "Fragment";
            NoAnglerQuest = true;
            Order = 12
        };
        [13] = {
            AnnounceInChat = true;
            AutoSellMode = "setting";
            Color = "0.67451, 0.223529, 1";
            LuckMode = "default";
            Name = "Gemstone";
            NoAnglerQuest = true;
            Order = 13
        };
        [14] = {
            AnglerQuestRequirement = 100;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitecataclysmic";
            Color = "1, 0, 0";
            HideInBestiary = true;
            LuckMode = "always_favoring";
            Name = "Apex";
            Order = 14
        };
        [15] = {
            AnnounceInChat = false;
            AutoSellMode = "setting";
            Color = "1, 0.698039, 0.698039";
            HideInBestiary = true;
            LuckMode = "default";
            Name = "Extinct";
            NoAnglerQuest = true;
            Order = 15;
            Protected = true
        };
        [16] = {
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitecataclysmic";
            Color = "1, 1, 1";
            ColorGradient = "0 0.498039 0.0941176 0.109804 0 0.176 0.262745 0.0823529 0.0235294 0 0.344 0.372549 0.137255 0.0117647 0 0.49 0.619608 0.156863 0 0 0.649 0.372549 0.137255 0.0117647 0 0.83 0.294118 0.0862745 0.0313726 0 1 0.498039 0.0941176 0.109804 0 ";
            HideInBestiary = true;
            LuckMode = "always_favoring";
            Name = "Cataclysmic";
            NoParticleLight = true;
            Order = 16;
            Protected = true
        };
        [17] = {
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitespecial";
            Color = "1, 1, 1";
            ColorGradient = "0 1 0.670588 1 0 0.1 0.576471 0.490196 1 0 0.6 1 0.839216 0.458824 0 1 1 0.670588 1 0 ";
            HideInBestiary = true;
            LuckMode = "always_favoring";
            Name = "Special";
            NoParticleLight = true;
            Order = 17;
            Protected = true
        };
        [18] = {
            AnnounceInChat = false;
            AutoSellMode = "never";
            Color = "1, 1, 1";
            ColorGradient = "0 0.101961 0.552941 0 0 0.5 0.839216 0.768627 0 0 1 0.101961 0.552941 0 0 ";
            LuckMode = "default";
            Name = "Nuclear";
            NonFish = true;
            Order = 18
        };
        [19] = {
            AnnounceInChat = false;
            AutoSellMode = "never";
            Color = "1, 1, 1";
            ColorGradient = "0 1 1 1 0 0.5 1 1 0 0 1 1 1 1 0 ";
            LuckMode = "default";
            Name = "Unique";
            NonFish = true;
            Order = 19
        };
        [2] = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.556863, 0.733333, 0.74902";
            LuckMode = "always_unfavoring";
            Name = "Common";
            Order = 2
        };
        [20] = {
            AnnounceInChat = false;
            AutoSellMode = "never";
            Color = "1, 1, 1";
            ColorGradient = "0 1 1 1 0 0.5 0.901961 0.901961 0.901961 0 1 1 1 1 0 ";
            LuckMode = "default";
            Name = "Whistle";
            NonFish = true;
            Order = 20
        };
        [21] = {
            AnnounceInChat = false;
            AutoSellMode = "never";
            Color = "1, 1, 1";
            ColorGradient = "0 1 1 1 0 0.5 0.717647 0.839216 1 0 1 1 1 1 0 ";
            LuckMode = "default";
            Name = "Mirror";
            NonFish = true;
            Order = 21
        };
        [3] = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.631373, 1, 0.662745";
            LuckMode = "default";
            Name = "Uncommon";
            Order = 3
        };
        [4] = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.752941, 0.529412, 0.776471";
            LuckMode = "default";
            Name = "Unusual";
            Order = 4
        };
        [5] = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.466667, 0.423529, 0.709804";
            LuckMode = "default";
            Name = "Rare";
            Order = 5
        };
        [6] = {
            AnglerQuestRequirement = 10;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitelegendary";
            Color = "0.941176, 0.709804, 0.427451";
            LuckMode = "always_favoring";
            Name = "Legendary";
            Order = 6
        };
        [7] = {
            AnglerQuestRequirement = 25;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitelegendary";
            Color = "1, 0.243137, 0.470588";
            LuckMode = "always_favoring";
            Name = "Mythical";
            Order = 7
        };
        [8] = {
            AnglerQuestRequirement = 50;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "biteexotic";
            Color = "1, 1, 1";
            ColorGradient = "0 1 0.5 0.5 0 0.125 1 0.875 0.5 0 0.25 0.75 1 0.5 0 0.375 0.5 1 0.625 0 0.5 0.5 1 1 0 0.625 0.5 0.625 1 0 0.75 0.75 0.5 1 0 0.875 1 0.5 0.875 0 1 1 0.5 0.5 0 ";
            LuckMode = "always_favoring";
            Name = "Exotic";
            Order = 8
        };
        [9] = {
            AnglerQuestRequirement = 75;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "biteexotic";
            Color = "1, 1, 1";
            ColorGradient = "0 0.8 0.8 0.8 0 0.5 0 0 0 0 1 0.8 0.8 0.8 0 ";
            FinalChanceDivisor = 25;
            HideInBestiary = true;
            LuckMode = "always_favoring";
            Name = "Secret";
            NoParticleLight = true;
            Order = 9
        };
    };
    Rarities = {
        Apex = {
            AnglerQuestRequirement = 100;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitecataclysmic";
            Color = "1, 0, 0";
            HideInBestiary = true;
            LuckMode = "always_favoring";
            Name = "Apex";
            Order = 14
        };
        Cataclysmic = {
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitecataclysmic";
            Color = "1, 1, 1";
            ColorGradient = "0 0.498039 0.0941176 0.109804 0 0.176 0.262745 0.0823529 0.0235294 0 0.344 0.372549 0.137255 0.0117647 0 0.49 0.619608 0.156863 0 0 0.649 0.372549 0.137255 0.0117647 0 0.83 0.294118 0.0862745 0.0313726 0 1 0.498039 0.0941176 0.109804 0 ";
            HideInBestiary = true;
            LuckMode = "always_favoring";
            Name = "Cataclysmic";
            NoParticleLight = true;
            Order = 16;
            Protected = true
        };
        Common = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.556863, 0.733333, 0.74902";
            LuckMode = "always_unfavoring";
            Name = "Common";
            Order = 2
        };
        Exotic = {
            AnglerQuestRequirement = 50;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "biteexotic";
            Color = "1, 1, 1";
            ColorGradient = "0 1 0.5 0.5 0 0.125 1 0.875 0.5 0 0.25 0.75 1 0.5 0 0.375 0.5 1 0.625 0 0.5 0.5 1 1 0 0.625 0.5 0.625 1 0 0.75 0.75 0.5 1 0 0.875 1 0.5 0.875 0 1 1 0.5 0.5 0 ";
            LuckMode = "always_favoring";
            Name = "Exotic";
            Order = 8
        };
        Extinct = {
            AnnounceInChat = false;
            AutoSellMode = "setting";
            Color = "1, 0.698039, 0.698039";
            HideInBestiary = true;
            LuckMode = "default";
            Name = "Extinct";
            NoAnglerQuest = true;
            Order = 15;
            Protected = true
        };
        Fragment = {
            AnnounceInChat = true;
            AutoSellMode = "never";
            Color = "1, 0.247059, 0.0196078";
            LuckMode = "default";
            Name = "Fragment";
            NoAnglerQuest = true;
            Order = 12
        };
        Gemstone = {
            AnnounceInChat = true;
            AutoSellMode = "setting";
            Color = "0.67451, 0.223529, 1";
            LuckMode = "default";
            Name = "Gemstone";
            NoAnglerQuest = true;
            Order = 13
        };
        Legendary = {
            AnglerQuestRequirement = 10;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitelegendary";
            Color = "0.941176, 0.709804, 0.427451";
            LuckMode = "always_favoring";
            Name = "Legendary";
            Order = 6
        };
        Limited = {
            AnnounceInChat = false;
            AutoSellMode = "setting";
            BiteSoundName = "bitelegendary";
            Color = "0.290196, 0.392157, 0.85098";
            HideInBestiary = true;
            LuckMode = "default";
            Name = "Limited";
            Order = 10
        };
        Mirror = {
            AnnounceInChat = false;
            AutoSellMode = "never";
            Color = "1, 1, 1";
            ColorGradient = "0 1 1 1 0 0.5 0.717647 0.839216 1 0 1 1 1 1 0 ";
            LuckMode = "default";
            Name = "Mirror";
            NonFish = true;
            Order = 21
        };
        Mythical = {
            AnglerQuestRequirement = 25;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitelegendary";
            Color = "1, 0.243137, 0.470588";
            LuckMode = "always_favoring";
            Name = "Mythical";
            Order = 7
        };
        Nuclear = {
            AnnounceInChat = false;
            AutoSellMode = "never";
            Color = "1, 1, 1";
            ColorGradient = "0 0.101961 0.552941 0 0 0.5 0.839216 0.768627 0 0 1 0.101961 0.552941 0 0 ";
            LuckMode = "default";
            Name = "Nuclear";
            NonFish = true;
            Order = 18
        };
        Rare = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.466667, 0.423529, 0.709804";
            LuckMode = "default";
            Name = "Rare";
            Order = 5
        };
        Relic = {
            AnglerQuestRequirement = 50;
            AnnounceInChat = true;
            AutoSellMode = "never";
            BiteSoundName = "bitelegendary";
            Color = "0.470588, 1, 0.717647";
            LuckMode = "default";
            Name = "Relic";
            Order = 11
        };
        Secret = {
            AnglerQuestRequirement = 75;
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "biteexotic";
            Color = "1, 1, 1";
            ColorGradient = "0 0.8 0.8 0.8 0 0.5 0 0 0 0 1 0.8 0.8 0.8 0 ";
            FinalChanceDivisor = 25;
            HideInBestiary = true;
            LuckMode = "always_favoring";
            Name = "Secret";
            NoParticleLight = true;
            Order = 9
        };
        Special = {
            AnnounceInChat = true;
            AutoSellMode = "setting";
            BiteSoundName = "bitespecial";
            Color = "1, 1, 1";
            ColorGradient = "0 1 0.670588 1 0 0.1 0.576471 0.490196 1 0 0.6 1 0.839216 0.458824 0 1 1 0.670588 1 0 ";
            HideInBestiary = true;
            LuckMode = "always_favoring";
            Name = "Special";
            NoParticleLight = true;
            Order = 17;
            Protected = true
        };
        Trash = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.568627, 0.568627, 0.568627";
            LuckMode = "always_unfavoring";
            Name = "Trash";
            NoAnglerQuest = true;
            Order = 1
        };
        Uncommon = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.631373, 1, 0.662745";
            LuckMode = "default";
            Name = "Uncommon";
            Order = 3
        };
        Unique = {
            AnnounceInChat = false;
            AutoSellMode = "never";
            Color = "1, 1, 1";
            ColorGradient = "0 1 1 1 0 0.5 1 1 0 0 1 1 1 1 0 ";
            LuckMode = "default";
            Name = "Unique";
            NonFish = true;
            Order = 19
        };
        Unusual = {
            AnnounceInChat = false;
            AutoSellMode = "always";
            Color = "0.752941, 0.529412, 0.776471";
            LuckMode = "default";
            Name = "Unusual";
            Order = 4
        };
        Whistle = {
            AnnounceInChat = false;
            AutoSellMode = "never";
            Color = "1, 1, 1";
            ColorGradient = "0 1 1 1 0 0.5 0.901961 0.901961 0.901961 0 1 1 1 1 0 ";
            LuckMode = "default";
            Name = "Whistle";
            NonFish = true;
            Order = 20
        };
    };
}

return module
-- Module: Rarities
-- Total items: 2
-- System fields: 0
