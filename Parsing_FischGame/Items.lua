local module = {
    Items = {
        ["1000-Year-Old Wood"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        ["Advanced Diving Gear"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 15000;
            Rarity = "Unusual"
        };
        ["Advanced Glider"] = {
            OnlyBuyOne = true;
            Price = 10000;
            Rarity = "Legendary"
        };
        ["Advanced Oxygen Tank"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 25000;
            Rarity = "Legendary"
        };
        ["All Season Potion"] = {
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Alpaca Plushie"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        Amulet = {
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Ancient Thread"] = {
            Price = math.huge;
            Rarity = "Legendary";
            SellValue = 700
        };
        ["Angler's Glove"] = {
            CustomDescription = "Boosts all bait stats, 50% chance to not consume bait";
            Equippable = true;
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Atomic Nuke"] = {
            Price = math.huge;
            Rarity = "Nuclear"
        };
        ["Aurora Totem"] = {
            Price = 500000;
            Rarity = "Mythical"
        };
        ["Avalanche Totem"] = {
            Price = 150000;
            Rarity = "Mythical"
        };
        ["Back Fins"] = {
            Price = math.huge;
            Rarity = "Rare"
        };
        ["Bag of Presents"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Barbed Spearhead"] = {
            CustomDescription = "A spearhead with sharp barbs.";
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Basic Diving Gear"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 3000;
            Rarity = "Uncommon"
        };
        ["Basic Oxygen Tank"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 1000;
            Rarity = "Uncommon"
        };
        ["Bat Glider"] = {
            OnlyBuyOne = true;
            Rarity = "Limited"
        };
        ["Beach Ball"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Beginner Oxygen Tank"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 3500;
            Rarity = "Unusual"
        };
        ["Blazed Handle"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Blizzard Totem"] = {
            Price = 150000;
            Rarity = "Mythical"
        };
        ["Blue Frightful Skull"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Blue Moon Totem"] = {
            Price = 120000;
            Rarity = "Legendary"
        };
        ["Bunch of Balloons"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Bunker Key"] = {
            Icon = "rbxassetid://102236530041956";
            Price = math.huge;
            Rarity = "Legendary"
        };
        Cake = {
            CustomDescription = "A toast to Fisch's anniversary!";
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Candy Bucket"] = {
            CustomDescription = "Trick or Treat!";
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Celestial Waders"] = {
            CustomDescription = "Celestial Speed";
            Equippable = true;
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Unique";
            Unpurchasable = true
        };
        ["Cepo's Fragment"] = {
            CustomDescription = "A fragment you got from Cepo.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Chocolate Milk"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Cliff Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Conception Conch"] = {
            Price = 444;
            Rarity = "Rare"
        };
        ["Consumable XP"] = {
            Price = math.huge;
            Rarity = "Exotic"
        };
        ["Cosmetic Egg"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        ["Crab Cage"] = {
            Price = 45;
            Rarity = "Unusual"
        };
        ["Crossbow Arrow"] = {
            NonPersistent = true;
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Crossbow Base"] = {
            NonPersistent = true;
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Crossbow Bow"] = {
            NonPersistent = true;
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Cuddly Cat"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Cursed Egg"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        ["Cursed Nuke"] = {
            Price = math.huge;
            Rarity = "Nuclear"
        };
        ["Cursed Storm Totem"] = {
            DataInstanceRequiriment = {"Cache.CanPurchaseCursedTotem", true, "You need to unlock the item before purchasing!"};
            Price = 1000000;
            Rarity = "Limited"
        };
        ["Dreamer's Amulet"] = {
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        Drill = {
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Rare"
        };
        ["Dusky Thread"] = {
            CustomDescription = "Woven from dusk's immortal glow...";
            Price = math.huge;
            Rarity = "Secret"
        };
        ["Eclipse Totem"] = {
            Price = 200000;
            Rarity = "Mythical"
        };
        ["Eldran's Amulet Fragment"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Elite Glider"] = {
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Elite Token"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Eternal Fuel"] = {
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Ethereal Glass"] = {
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Evil Sigil"] = {
            CustomDescription = "A Sigil from the Crimson King.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Faberge Egg"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        Fillionaire = {
            Price = math.huge;
            Rarity = "Unusual"
        };
        Firework = {
            Price = 130;
            Rarity = "Common"
        };
        ["Fish Radar"] = {
            Icon = "rbxassetid://132119413174655";
            OnlyBuyOne = true;
            Price = 8000;
            Rarity = "Legendary"
        };
        Flippers = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 9000;
            Rarity = "Unusual"
        };
        ["Fossil Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Frightful Mirror"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Frightful Pool Totem"] = {
            Icon = "rbxassetid://106831363999140";
            Price = math.huge;
            Rarity = "Limited"
        };
        GPS = {
            Icon = "rbxassetid://92660360174055";
            OnlyBuyOne = true;
            Price = 100;
            Rarity = "Uncommon"
        };
        ["Ghost Elixir"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        Glider = {
            OnlyBuyOne = true;
            Price = 900;
            Rarity = "Rare"
        };
        ["GlimmerSuit Boots"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Exotic"
        };
        ["Glimmerfin Suit Lvl 1"] = {
            Equippable = true;
            Icon = "rbxassetid://107405457740294";
            OnlyBuyOne = true;
            Price = 7500;
            Rarity = "Uncommon"
        };
        ["Glimmerfin Suit Lvl 2"] = {
            Equippable = true;
            Icon = "rbxassetid://120382468340755";
            OnlyBuyOne = true;
            Price = 7500;
            Rarity = "Rare"
        };
        ["Glimmerfin Suit Lvl 3"] = {
            Equippable = true;
            Icon = "rbxassetid://137334347694202";
            OnlyBuyOne = true;
            Price = 7500;
            Rarity = "Exotic"
        };
        ["Glitched Potion"] = {
            Price = math.huge;
            Rarity = "Exotic"
        };
        ["Glyph Rune"] = {
            CustomDescription = "A rune earned from a puzzle.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Golden Egg Trophy Bobber"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Gravity Coil"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Green Frightful Skull"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Halloween Roped"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Halloween Sparkler"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Handwritten Note"] = {
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Haunted Candle"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Heart Of Zeus"] = {
            Price = math.huge;
            Rarity = "Mythical";
            purchasable = false
        };
        ["Holiday Ham"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Hourglass Hull"] = {
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Hourglass Lantern"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        Hyperbike = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Ice Cream"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Ice Crystal"] = {
            Icon = "rbxassetid://87113404726717";
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Intermediate Oxygen Tank"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 10000;
            Rarity = "Rare"
        };
        ["Jack's Treads"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Kareth's Amulet Fragment"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Keepers Torch"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Kraken Egg"] = {
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Kraken Egg Premium"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        ["Kraken Hunt Totem"] = {
            Icon = "rbxassetid://133450882930307";
            Price = math.huge;
            Rarity = "Unique"
        };
        ["Lava Crystal"] = {
            Icon = "rbxassetid://94081558964669";
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Lightblox Jar"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Lightning Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Lobster Roll"] = {
            Price = math.huge;
            Rarity = "Rare"
        };
        ["Lucid Reel"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Luck Potion"] = {
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Lunar Lander"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Lunar Thread"] = {
            Price = math.huge;
            Rarity = "Exotic";
            SellValue = 1250
        };
        ["Lure Speed Potion"] = {
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Maelira's Amulet Fragment"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Magic Conch"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Magic Mirror"] = {
            OnlyBuyOne = true;
            Price = 50000;
            Rarity = "Mirror"
        };
        ["Magic Thread"] = {
            Price = math.huge;
            Rarity = "Unusual";
            SellValue = 250
        };
        ["Magnifying Glass"] = {
            Icon = "rbxassetid://127487029816682";
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Megalodon Egg"] = {
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Megalodon Egg Premium"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        ["Megalodon Hunt Totem"] = {
            Icon = "rbxassetid://74841041569222";
            Price = math.huge;
            Rarity = "Unique"
        };
        ["Megalodon Mask"] = {
            CustomDescription = "Boosts trick or treat candy by 20%";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Mermaid’s Favor"] = {
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Metal Panels"] = {
            Price = math.huge;
            Rarity = "Rare"
        };
        ["Meteor Shard"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Meteor Totem"] = {
            Price = 75000;
            Rarity = "Legendary"
        };
        Moneybag = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Moonwalk Dance Potion"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Mossy Core"] = {
            CustomDescription = "Ancient power buried in mossy growth.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Mr. Bones"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Murky Thread"] = {
            CustomDescription = "A line that reeks of murk and time.";
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Mushroom Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Mutation Totem"] = {
            Price = math.huge;
            Rarity = "Unique"
        };
        ["Mystic Mirror"] = {
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Mirror"
        };
        ["Mythical Essence"] = {
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        Nuke = {
            Price = math.huge;
            Rarity = "Nuclear"
        };
        ["Orange Frightful Skull"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Orca Egg"] = {
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Orca Egg Premium"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        ["Physpax Gun"] = {
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        Pickaxe = {
            OnlyBuyOne = true;
            Price = 5000;
            Rarity = "Rare"
        };
        Pizza = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Poisonous Spearhead"] = {
            CustomDescription = "A spearhead covered in poison.";
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Portable Photobooth"] = {
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Poseidon Wrath Totem"] = {
            Price = 150000;
            Rarity = "Legendary"
        };
        ["Purple Frightful Skull"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Race the Sunset"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        Radio = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Unique";
            Unpurchasable = true
        };
        ["Rainbow Totem"] = {
            Icon = "rbxassetid://122276989950222";
            Price = math.huge;
            Rarity = "Exotic"
        };
        ["Red Frightful Skull"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Regular Token"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Ro-torcycle"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Rokko's Fragment"] = {
            CustomDescription = "A fragment you got from Rokko.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Sand Of Time"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Scylla Hunt Totem"] = {
            Icon = "rbxassetid://92270118461292";
            Price = math.huge;
            Rarity = "Unique"
        };
        ["Scylla Mask"] = {
            CustomDescription = "Boosts 'Treat' in trick or treat by 20%";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Sea 1 Conch"] = {
            Price = 200000;
            Rarity = "Exotic"
        };
        ["Sea Traveler Note"] = {
            CustomDescription = "Leads to a secret during foggy nights";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Semi-Speed Coil"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Shard of Embers"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Shard of Nebulas"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Shard of Roots"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Shard of Tides"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Shard of Time"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Shark Whistle"] = {
            Price = math.huge;
            Rarity = "Whistle"
        };
        ["Shiny Totem"] = {
            Icon = "rbxassetid://106831363999140";
            Price = math.huge;
            Rarity = "Unique"
        };
        ["Shop Key"] = {
            CustomDescription = "Grants 1 random paid item!\n[UNIQUE]";
            Price = math.huge;
            Rarity = "Unique";
            Unpurchasable = true
        };
        ["Shrimp Slinger"] = {
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Side Fins"] = {
            Price = math.huge;
            Rarity = "Rare"
        };
        ["Silver Egg Trophy Bobber"] = {
            Price = math.huge;
            Rarity = "Limited"
        };
        ["Skin Crate"] = {
            Price = math.huge;
            Rarity = "Exotic"
        };
        ["Skipper Seal"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Skull Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Slateskin Potion"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Smokescreen Totem"] = {
            Price = 2000;
            Rarity = "Rare"
        };
        ["Snowflake Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Sparkling Totem"] = {
            Icon = "rbxassetid://79683245166829";
            Price = math.huge;
            Rarity = "Unique"
        };
        ["Spike Rune"] = {
            CustomDescription = "A rune earned from a puzzle.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Sporey's Soup"] = {
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["Starfall Totem"] = {
            Icon = "rbxassetid://76652003542297";
            Price = math.huge;
            Rarity = "Exotic"
        };
        ["Submarine Top"] = {
            Price = math.huge;
            Rarity = "Rare"
        };
        ["Sun Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Sundial Totem"] = {
            Price = 2000;
            Rarity = "Rare"
        };
        ["Super Flippers"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 30000;
            Rarity = "Legendary"
        };
        ["Sythra's Amulet Fragment"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Sythra’s Wick"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        TNT = {
            Price = math.huge;
            Rarity = "Rare";
            purchasable = false
        };
        ["Tasty Turkey Leg"] = {
            CustomDescription = "Eating will grant +50% Lure Speed";
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Teddy Bear"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Tempest Totem"] = {
            Price = 2000;
            Rarity = "Rare"
        };
        ["Temple Eye"] = {
            CustomDescription = "Used to return to the center of the Forgotten Temple.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["The Cut Gem"] = {
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Legendary"
        };
        ["The Rough Geode"] = {
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Legendary"
        };
        Tidebreaker = {
            OnlyBuyOne = true;
            Price = 40000;
            Rarity = "Mythical"
        };
        ["Tilli's Fragment"] = {
            CustomDescription = "A fragment you got from Tilli.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Timeless Threading"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        ["Toxic Core"] = {
            CustomDescription = "A corrupted core, pulsing with venom.";
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Toxic Rune"] = {
            CustomDescription = "A rune earned from a puzzle.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Traveler's Whistle"] = {
            OnlyBuyOne = true;
            Price = 250000;
            Rarity = "Whistle"
        };
        ["Treasure Map"] = {
            Equippable = true;
            MaxCount = 10;
            Price = math.huge;
            Rarity = "Rare"
        };
        ["Turtle Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Varn's Amulet Fragment"] = {
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Vimble's Fragment"] = {
            CustomDescription = "A fragment you got from Vimble.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Vine Line"] = {
            CustomDescription = "Roots of age hardened into thread.";
            Price = math.huge;
            Rarity = "Legendary";
            Unpurchasable = true
        };
        ["Vine Rune"] = {
            CustomDescription = "A rune earned from a puzzle.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Voided Glove"] = {
            CustomDescription = "Rarely Duplicates Fish";
            Equippable = true;
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Unique";
            Unpurchasable = true
        };
        ["Volcano Keystone"] = {
            CustomDescription = "A keystone of unknown purpose.";
            Price = math.huge;
            Rarity = "Unusual";
            Unpurchasable = true
        };
        ["Water Bubble"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 25000;
            Rarity = "Legendary"
        };
        ["Water Rune"] = {
            CustomDescription = "A rune earned from a puzzle.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Weather Matrix"] = {
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Unique";
            Unpurchasable = true
        };
        ["Whale Egg"] = {
            Price = math.huge;
            Rarity = "Mythical";
            Unpurchasable = true
        };
        ["Whale Egg Premium"] = {
            Price = math.huge;
            Rarity = "Exotic";
            Unpurchasable = true
        };
        Windows = {
            Price = math.huge;
            Rarity = "Rare"
        };
        ["Windset Totem"] = {
            Price = 2000;
            Rarity = "Rare"
        };
        ["Winter Cloak"] = {
            Equippable = true;
            OnlyBuyOne = true;
            Price = 7500;
            Rarity = "Unusual"
        };
        Wisp = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Witches Brew"] = {
            CustomDescription = "[Black Market Exclusive]";
            OnlyBuyOne = true;
            Price = math.huge;
            Rarity = "Special";
            Unpurchasable = true
        };
        ["Witches Ingredient"] = {
            Price = math.huge;
            Rarity = "Limited";
            Unpurchasable = true
        };
        ["Wixie's Fragment"] = {
            CustomDescription = "A fragment you got from Wixie.";
            Price = math.huge;
            Rarity = "Secret";
            Unpurchasable = true
        };
        ["Zeus Storm Totem"] = {
            Price = 150000;
            Rarity = "Legendary"
        };
    };
    Rarities = {
        [1] = "Trash";
        [10] = "Limited";
        [11] = "Developer";
        [12] = "Mirror";
        [2] = "Common";
        [3] = "Uncommon";
        [4] = "Unusual";
        [5] = "Rare";
        [6] = "Legendary";
        [7] = "Mythical";
        [8] = "Exotic";
        [9] = "Secret";
    };
    RarityColours = {
        Cataclysmic = "1, 1, 1";
        Common = "0.556863, 0.733333, 0.74902";
        Exotic = "1, 1, 1";
        Extinct = "1, 0.698039, 0.698039";
        Legendary = "0.941176, 0.709804, 0.427451";
        Limited = "0.211765, 0.286275, 0.623529";
        Mirror = "0.717647, 0.839216, 1";
        Mythical = "1, 0.243137, 0.470588";
        Nuclear = "1, 1, 1";
        Rare = "0.466667, 0.423529, 0.709804";
        Relic = "0.470588, 1, 0.717647";
        Secret = "1, 1, 1";
        Special = "1, 1, 1";
        Trash = "0.568627, 0.568627, 0.568627";
        Uncommon = "0.631373, 1, 0.662745";
        Unusual = "0.752941, 0.529412, 0.776471";
        Whistle = "0.901961, 0.901961, 0.901961";
    };

    -- Системные поля
    ToHex = "function: 0xbee163b9547ecd97";
    ToInteger = "function: 0x4248bba1b8e559d7";
}

return module
-- Module: Items
-- Total items: 3
-- System fields: 0
