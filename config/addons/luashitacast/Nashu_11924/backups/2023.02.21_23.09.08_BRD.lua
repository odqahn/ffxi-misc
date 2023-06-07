local profile = {};
local sets = {
    ['Singing'] = {
        Range = 'Cornette +2',
        Head = 'Sha\'ir Turban',
        Neck = 'Piper\'s Torque',
        Ear1 = 'Singing Earring',
        Ear2 = 'Wind Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Bricta\'s Cuffs',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Back = 'Birdman Cape',
        Waist = 'Gleeman\'s Belt',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Sha\'ir Crackows',
    },
    ['Minuet'] = {
        Range = 'Cornette +2',
        Head = 'Sha\'ir Turban',
        Neck = 'Piper\'s Torque',
        Ear1 = 'Singing Earring',
        Ear2 = 'Wind Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Bricta\'s Cuffs',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Back = 'Birdman Cape',
        Waist = 'Gleeman\'s Belt',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Sha\'ir Crackows',
    },
    ['Mazurka'] = {
        Range = 'Harlequin\'s Horn',
        Head = 'Sha\'ir Turban',
        Neck = 'Piper\'s Torque',
        Ear1 = 'Singing Earring',
        Ear2 = 'Wind Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Bricta\'s Cuffs',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Back = 'Birdman Cape',
        Waist = 'Gleeman\'s Belt',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Sha\'ir Crackows',
    },
    ['Threnody'] = {
        Range = 'Sorrowful Harp',
        Head = 'Sha\'ir Turban',
        Neck = 'Piper\'s Torque',
        Ear1 = 'Singing Earring',
        Ear2 = 'Wind Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Bricta\'s Cuffs',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Back = 'Birdman Cape',
        Waist = 'Gleeman\'s Belt',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Sha\'ir Crackows',
    },
    ['Paeon'] = {
        Range = 'Ebony Harp +2',
        Head = 'Sha\'ir Turban',
        Neck = 'Piper\'s Torque',
        Ear1 = 'Singing Earring',
        Ear2 = 'Wind Earring',
        Body = 'Sha\'ir Manteel',
        Hands = 'Bricta\'s Cuffs',
        Ring1 = 'Trumpet Ring',
        Ring2 = 'Trumpet Ring',
        Back = 'Birdman Cape',
        Waist = 'Gleeman\'s Belt',
        Legs = 'Sha\'ir Seraweels',
        Feet = 'Sha\'ir Crackows',
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