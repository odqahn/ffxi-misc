local profile = {};
local sets = {
    ['Town'] = {
        Main = 'Dagger of Trials',
        Sub = 'Mercurial Kris',
        Range = 'Staurobow',
        Ammo = 'Acid Bolt',
        Neck = 'Peacock Amulet',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Body = 'Kupo Suit',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Potent Belt',
        Feet = 'Trotter Boots',
    },
    ['TP'] = {
        Main = 'Dagger of Trials',
        Sub = 'Mercurial Kris',
        Range = 'Staurobow',
        Ammo = 'Acid Bolt',
        Head = 'Walahra Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Body = 'Scorpion Harness',
        Hands = 'Dusk Gloves',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Potent Belt',
        Legs = 'Dragon Subligar',
        Feet = 'Dragon Leggings',
    },
    ['SATA'] = {
        Main = 'Dagger of Trials',
        Sub = 'Mercurial Kris',
        Range = 'Staurobow',
        Ammo = 'Acid Bolt',
        Head = 'Emperor Hairpin',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Body = 'Dragon Harness',
        Hands = 'Dragon Mittens',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Thunder Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dragon Subligar',
        Feet = 'Dragon Leggings',
    },
    ['Steal'] = {
        Main = 'Dagger of Trials',
        Sub = 'Mercurial Kris',
        Range = 'Staurobow',
        Ammo = 'Acid Bolt',
        Head = 'Emperor Hairpin',
        Neck = 'Rabbit Charm',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Body = 'Dragon Harness',
        Hands = 'Thief\'s Kote',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Thunder Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Warwolf Belt',
        Legs = 'Dragon Subligar',
        Feet = 'Dragon Leggings',
    },
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;