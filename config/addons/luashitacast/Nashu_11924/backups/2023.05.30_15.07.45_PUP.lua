local profile = {};
local sets = {
    ['str'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Hands = 'Pup. Dastanas',
        Ear1 = 'Bushinomimi',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Flame Ring',
        Waist = 'Potent Belt',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['dex'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Ear1 = 'Pixie Earring',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Flagellant\'s Rope',
    },
    ['agi'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Ear1 = 'Suppanomimi',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Flagellant\'s Rope',
    },
    ['chr'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Back = 'Birdman Cape',
        Waist = 'Corsette',
        Legs = 'Pup. Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['int'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Snow Ring',
        Ring2 = 'Tamas Ring',
        Waist = 'Jungle Rope',
        Legs = 'Magic Slacks',
        Feet = 'Pantin Babouches',
    },
    ['mnd'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Tamas Ring',
        Waist = 'Druid\'s Rope',
        Legs = 'Magic Slacks',
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