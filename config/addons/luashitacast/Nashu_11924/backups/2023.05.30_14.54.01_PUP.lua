local profile = {};
local sets = {
    ['str'] = {
        Main = 'Acantha Shavers',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Optical Hat',
        Neck = 'Chivalrous Chain',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Ocl. Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['dex'] = {
        Main = 'Acantha Shavers',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Optical Hat',
        Neck = 'Love Torque',
        Ear1 = 'Bushinomimi',
        Ear2 = 'Pixie Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
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