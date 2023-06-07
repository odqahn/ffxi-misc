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