local module = {
    ["Flimsy Spear"] = {
        Price = 150;
        Power = 3;
        Handling = 0;
        Piercing = 0;
        Icon = "rbxassetid://137259374427427";
        Color = Color3.fromRGB(154, 170, 190);
    };
    ["Steady Spear"] = {
        Price = 15000;
        Power = 6;
        Handling = 40;
        Piercing = 2.5;
        Icon = "rbxassetid://137259374427427";
        Color = Color3.fromRGB(190, 165, 131);
    };
    ["Mini Spear"] = {
        Price = 9000;
        Power = 4;
        Handling = 0;
        Piercing = 20;
        Icon = "rbxassetid://137259374427427";
        Color = Color3.fromRGB(83, 83, 83);
    };
    ["Barbed Spear"] = {
        Price = -1;
        Power = 6;
        Handling = 10;
        Piercing = 30;
        Icon = "rbxassetid://79743399121943";
        Color = Color3.fromRGB(137, 135, 190);
        Hint = "Made with hands of steel.";
        Recipe = {
            LevelRequired = 0;
            Materials = {{"Driftwood", 1, "Shrouded", "rbxassetid://114790076610770"}, {"Barbed Spearhead", 1}};
        };
    };
    ["Poison-Tipped Spear"] = {
        Price = -1;
        Power = 10;
        Handling = 30;
        Piercing = 5;
        Icon = "rbxassetid://138599452063390";
        Color = Color3.fromRGB(117, 80, 190);
        Hint = "Be careful, it's poisonous.";
        Recipe = {
            LevelRequired = 0;
            Materials = {{"Driftwood", 1, "Poisoned", "rbxassetid://103350424489790"}, {"Poisonous Spearhead", 1}};
        };
    };
    Craftable = {};
}
for i, v in module do
    if v.Recipe then
        table.insert(module.Craftable, i)
    end
end
return module