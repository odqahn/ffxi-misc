local profile = {};
local sets = {
    ['TP'] = {
        Main = 'Onimaru',
        Sub = 'Pole Grip',
        Ammo = 'Tiphia Sting',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Aesir Ear Pendant',
        Body = 'Haubergeon +1',
        Hands = 'Hachiman Kote',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hmn. Sune-Ate',
    },
    ['Idle'] = {
        Main = 'Onimaru',
        Sub = 'Pole Grip',
        Ammo = 'Tiphia Sting',
        Head = 'Black Ribbon',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Dodge Earring',
        Ear2 = 'Dodge Earring',
        Body = 'Assault Jerkin',
        Hands = 'Hachiman Kote',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Swift Belt',
        Legs = 'Byakko\'s Haidate',
        Feet = 'Hmn. Sune-Ate',
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