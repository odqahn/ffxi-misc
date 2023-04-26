local profile = {};
local sets = {
    ['Idle'] = {
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Trotter Boots',
        Hands = 'Dragon Mittens',
        Head = 'Optical Hat',
        Legs = 'Dragon Subligar',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
    ['Mog'] = {
        Body = 'Kupo Suit',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Trotter Boots',
        Hands = 'Dragon Mittens',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
    ['TP'] = {
        Back = 'Cerberus Mantle',
        Body = 'Rapparee Harness',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Walahra Turban',
        Legs = 'Dusk Trousers',
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Swift Belt',
    },
    ['TPACC'] = {
        Back = 'Cerberus Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Optical Hat',
        Legs = 'Dusk Trousers',
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Swift Belt',
    },
    ['SA'] = {
        Back = 'Commander\'s Cape',
        Body = 'Dragon Harness',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Feet = 'Dragon Leggings',
        Hands = 'Dragon Mittens',
        Head = 'Assassin\'s Bonnet',
        Legs = 'Dragon Subligar',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['TA'] = {
        Back = 'Commander\'s Cape',
        Body = 'Dragon Harness',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Suppanomimi',
        Feet = 'Dragon Leggings',
        Hands = 'Dragon Mittens',
        Head = 'Dragon Cap',
        Legs = 'War brais',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Grenadier Belt',
    },
    ['Fishing'] = {
        Body = 'Fsh. Tunica',
        Feet = 'Fisherman\'s Boots',
        Hands = 'Fsh. Gloves',
        Legs = 'Fisherman\'s Hose',
    },
    ['MAB'] = {
        Back = 'Cerberus Mantle',
        Body = 'Dragon Harness',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Moldavite Earring',
        Feet = 'Dragon Leggings',
        Hands = 'Dragon Mittens',
        Legs = 'Dragon Subligar',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Thunder Ring',
        Waist = 'Warwolf Belt',
    },
    ['WSDEX'] = {
        Back = 'Commander\'s Cape',
        Body = 'Dragon Harness',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Suppanomimi',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dragon Mittens',
        Head = 'Optical Hat',
        Legs = 'Dragon Subligar',
        Neck = 'Chivalrous Chain',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['CHR'] = {
        Head = 'Panther Mask',
        Neck = 'Orochi Nodowa',
        Body = 'Dragon Harness',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Back = 'Corse Cape',
        Waist = 'Corsette',
    },
    ['NIN'] = {
        Body = 'Rapparee Harness',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Walahra Turban',
        Neck = 'Evasion Torque',
        Waist = 'Swift Belt',
    },
    ['Sleep'] = {
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Head = 'Optical Hat',
        Neck = 'Opo-opo Necklace',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
    ['Steal'] = {
        Feet = 'Rogue\'s Poulaines',
        Hands = 'Thief\'s Kote',
        Head = 'Rogue\'s Bonnet',
        Legs = 'Assassin\'s Culottes',
        Neck = 'Rabbit Charm',
    },
    ['Mug'] = {
        Head = 'Assassin\'s Bonnet',
    },
    ['Flee'] = {
        Feet = 'Rogue\'s Poulaines',
    },
    ['Hide'] = {
        Body = 'Rogue\'s Vest',
    },
    ['Para'] = {
        Waist = 'Flagellant\'s Rope',
    },
    ['TH'] = {
        Hands = 'Assassin\'s Armlets',
        Head = 'Wh. Rarab Cap +1',
    },
    ['RA'] = {
        Back = 'Lynx Mantle',
        Body = 'Scp. Harness +1',
        Ear2 = 'Vision Earring',
        Feet = 'Dragon Leggings',
        Hands = 'Deadeye Gloves',
        Head = 'Optical Hat',
        Legs = 'Dusk Trousers',
        Neck = 'Peacock Amulet',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Behemoth Ring',
        Waist = 'Precise Belt',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    Mog = false,
    Accuracy = false,
    TH = false,
};

-- Sleep for lockstyleset
local clock = os.clock;
function Sleep(n)
    local t0 = clock();
    while clock() - t0 <= n do
    end
    ;
end

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo THF loading!');
    Sleep(1);
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 11 echo');
end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
    if (args[1] == 'mog') then
        if (Settings.Mog == true) then
            Settings.Mog = false;
            gFunc.Message('Mog Set Off');
        else
            Settings.Mog = true;
            gFunc.Message('Mog Set On');
        end
    end
    if (args[1] == 'acc') then
        if (Settings.Accuracy == true) then
            Settings.Accuracy = false;
            gFunc.Message('Accuracy Set Off');
        else
            Settings.Accuracy = true;
            gFunc.Message('Accuracy Set On');
        end
    end
    if (args[1] == 'th') then
        if (Settings.TH == true) then
            Settings.TH = false;
            gFunc.Message('TH Set Off');
        else
            Settings.TH = true;
            gFunc.Message('TH Set On');
        end
    end
end

-- TODO: un set TH et un EquipSet
profile.HandleDefault = function()
    local sa = gData.GetBuffCount('Sneak Attack');
    local ta = gData.GetBuffCount('Trick Attack');
    local sleep = gData.GetBuffCount('Sleep');
    local para = gData.GetBuffCount('Paralysis');

    local player = gData.GetPlayer();

    if (player.Status == 'Engaged') then
        if (Settings.Accuracy == true) then
            gFunc.EquipSet(sets.TPACC);
        else
            gFunc.EquipSet(sets.TP);
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Idle);
    else
        if (Settings.Mog == true) then
            gFunc.EquipSet(sets.Mog);
        else
            gFunc.EquipSet(sets.Idle);
        end
    end

    -- SA TA sets
    if (sa == 1) then
        gFunc.EquipSet(sets.SA);
    end
    if (ta == 1) then
        gFunc.EquipSet(sets.TA);
    end

    -- Add TH equip
    if (Settings.TH == true) then
        gFunc.EquipSet(sets.TH);
    end

    -- Add Opo-pop / Flagellant's in case of Sleep / Para
    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
    end
    if (para == 1) then
        gFunc.EquipSet(sets.Para);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if action.Name == 'Flee' then
        gFunc.EquipSet(sets.Flee);
    elseif action.Name == 'Hide' then
        gFunc.EquipSet(sets.Hide);
    elseif action.Name == 'Mug' then
        gFunc.EquipSet(sets.Mug);
    elseif (action.Name == 'Steal') then
        gFunc.EquipSet(sets.Steal);
    elseif (string.contains(action.Name, 'Waltz')) then
        gFunc.EquipSet(sets.CHR);
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local action = gData.GetAction();
    if (action.Skill == 'Ninjutsu') then
        gFunc.EquipSet(sets.NIN);
    end
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    local ta = gData.GetBuffCount('Trick Attack');

    local DEX = T { 'Evisceration', 'Wasp Sting', 'Viper Bite', 'Mandalic Stab' };
    local MAB = T { 'Gust Slash', 'Cyclone', 'Aeolian Edge' };
    if (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEX);
    elseif (MAB:contains(action.Name)) then
        gFunc.EquipSet(sets.MAB);
    end
end

return profile;
