local profile = {};
local sets = {
    ['nin'] = {
        Main = { Name = 'Kikoku', AugTrial=1052 },
        Sub = 'Mercurial Kris',
        Ammo = 'Fuma Shuriken',
        Head = 'Maat\'s Cap',
        Neck = 'Ninjutsu Torque',
        Ear1 = 'Ninjutsu Earring',
        Ear2 = 'Moldavite Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Hands = { Name = 'Nin. Tekko +1', Augment = { [1] = 'Haste+3', [2] = '"Dbl.Atk."+3' } },
        Ring1 = 'Snow Ring',
        Ring2 = 'Snow Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Koga Sarashi',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = { Name = 'Nin. Kyahan +1', Augment = { [1] = 'Ninjutsu skill +5', [2] = '"Mag. Atk. Bns."+10' } },
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