local profile = {};
local sets = {
    ['idle'] = {
        Main = 'Acantha Shavers',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Legs = 'Pantin Churidars',
        Feet = 'Pantin Babouches',
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