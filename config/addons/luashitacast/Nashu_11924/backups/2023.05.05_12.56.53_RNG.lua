local profile = {};
local sets = {
    ['RNGACC'] = {
        Main = 'Fransisca',
        Range = 'Failnaught',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Vision Earring',
        Body = 'Scout\'s Jerkin',
        Hands = 'Deadeye Gloves',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Behemoth Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Precise Belt',
        Legs = 'Dusk Trousers',
        Feet = 'Scout\'s Socks',
    },
    ['TP'] = {
        Main = 'Fransisca',
        Range = 'Failnaught',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Vision Earring',
        Ear2 = 'Aesir Ear Pendant',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Hands = 'Deadeye Gloves',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Behemoth Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Precise Belt',
        Legs = 'Dusk Trousers',
        Feet = 'Scout\'s Socks',
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