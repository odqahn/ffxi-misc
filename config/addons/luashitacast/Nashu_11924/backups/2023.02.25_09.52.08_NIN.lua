local profile = {};
local sets = {
    Idle = {
        Main = 'Fudo',
        Sub = 'Fudo',
        Ammo = 'Nokizaru Shuriken',
        Head = 'Black Ribbon',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Body = 'Scp. Harness +1',
        Hands = 'Ninja Tekko',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Potent Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Yasha Sune-Ate',
    },
    Mog = {
        Main = 'Fudo',
        Sub = 'Fudo',
        Ammo = 'Nokizaru Shuriken',
        Head = 'Black Ribbon',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Body = 'Kupo Suit',
        Hands = 'Ninja Tekko',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Potent Belt',
        Feet = 'Yasha Sune-Ate',
    },
    Damage_Haste = {
        Main = 'Fudo',
        Sub = 'Fudo',
        Ammo = 'Nokizaru Shuriken',
        Head = 'Walahra Turban',
        Neck = 'Peacock Amulet',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Body = 'Haubergeon +1',
        Hands = 'Ninja Tekko',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Yasha Sune-Ate',
    },
    Damage_Acc = {
        Main = 'Fudo',
        Sub = 'Fudo',
        Ammo = 'Nokizaru Shuriken',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Body = 'Haubergeon +1',
        Hands = 'Ninja Tekko',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Potent Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Yasha Sune-Ate',
    },
    Utsu = {
        Main = 'Fudo',
        Sub = 'Fudo',
        Ammo = 'Nokizaru Shuriken',
        Head = 'Yasha Jinpachi',
        Neck = 'Evasion Torque',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Body = 'Scp. Harness +1',
        Hands = 'Yasha Tekko',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Yasha Sune-Ate',
    },
    Jutsu = {
        Main = 'Fudo',
        Sub = 'Fudo',
        Ammo = 'Nokizaru Shuriken',
        Head = 'Ninja Hatsuburi',
        Neck = 'Ninjutsu Torque',
        Ear1 = 'Ninjutsu Earring',
        Ear2 = 'Moldavite Earring',
        Body = 'Scp. Harness +1',
        Hands = 'Yasha Tekko',
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Druid\'s Rope',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Yasha Sune-Ate',
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