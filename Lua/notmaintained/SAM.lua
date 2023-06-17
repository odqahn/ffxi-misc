-- TODO refaire les sets - profile non maintenu
local profile = {};
local sets = {
    ['TP'] = {
        Ammo = 'Tiphia Sting',
        Back = 'Cerberus Mantle',
        Body = 'Haubergeon +1',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Walahra Turban',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Swift Belt',
    },
    ['TPACC'] = {
        Ammo = 'Tiphia Sting',
        Back = 'Cerberus Mantle',
        Body = 'Haubergeon +1',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Bushinomimi',
        Feet = 'Dusk Ledelsens',
        Hands = 'Dusk Gloves',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Peacock Amulet',
        Ring1 = 'Ecphoria Ring',
        Ring2 = 'Sniper\'s Ring',
        Waist = 'Swift Belt',
    },
    ['Idle'] = {
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Hmn. Sune-Ate',
        Hands = 'Hachiman Kote',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = '"Store TP"+2', [2] = 'Crit. hit damage +2%' } },
        Neck = 'Orochi Nodowa',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
    ['WS'] = {
        Ammo = 'Bomb Core',
        Back = 'Cerberus Mantle',
        Body = 'Haubergeon +1',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Bushinomimi',
        Feet = 'Hmn. Sune-Ate',
        Hands = 'Alkyoneus\'s Brc.',
        Head = 'Maat\'s Cap',
        Legs = 'Sipahi Zerehs',
        Neck = 'Fotia Gorget',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['Meditate'] = {
        Hands = 'Saotome Kote',
        Head = 'Myochin Kabuto',
    },
    ['ThirdEye'] = {
        Ammo = 'Goblin Cracker',
        Body = 'Scp. Harness +1',
        Head = 'Optical Hat',
        Ear1 = 'Ocl. Earring',
        Legs = 'Saotome Haidate',
        Neck = 'Evasion Torque',
    },
    ['Precast'] = {
        Ear2 = 'Loquac. Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' } },
    },
    ['Utsu'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Boxer\'s Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+2', [2] = '"Mag.Def.Bns."+4', [3] = 'Haste+2' } },
        Head = { Name = 'Nin. Hatsuburi +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Evasion Torque',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['Mog'] = {
        Body = 'Kupo Suit',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Feet = 'Hmn. Sune-Ate',
        Hands = 'Hachiman Kote',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
    ['Sleep'] = {
        Ammo = 'Goblin Cracker',
        Body = 'Scp. Harness +1',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Head = 'Optical Hat',
        Neck = 'Opo-opo Necklace',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
    },
    ['Para'] = {
        Waist = 'Flagellant\'s Rope',
    },
    ['RA'] = {
        Back = 'Amemet Mantle +1',
        Body = 'Scp. Harness +1',
        Ear2 = 'Vision Earring',
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
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 4');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 10');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon reload skillchains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo SAM loading!');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 1 echo') end):once(2)
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
end

profile.HandleDefault = function()
    local thirdeye = gData.GetBuffCount('Third Eye');
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

    if (thirdeye == 1) then
        gFunc.EquipSet(sets.ThirdEye);
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
    local sneak = gData.GetBuffCount('Sneak');

    if (action.Name == 'Meditate') then
        gFunc.EquipSet(sets.Meditate);
    elseif (action.Name == 'Third Eye') then
        gFunc.EquipSet(sets.ThirdEye);
    elseif (action.Name == 'Spectral Jig') and (sneak ~= 0) then
        gFunc.CancelAction();
        AshitaCore:GetChatManager():QueueCommand(-1, '/debuff Sneak');
        (function() AshitaCore:GetChatManager():QueueCommand(-1, '/ja "Spectral Jig" <me>') end):once(2)
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local action = gData.GetAction()

    gFunc.EquipSet(sets.Precast);
    if (action.Name == 'Utsusemi: Ichi') then
        local delay = 2.2
        if (gData.GetBuffCount(66) == 1) then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 66') end):once(delay)
        elseif (gData.GetBuffCount(444) == 1) then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 444') end):once(delay)
        elseif (gData.GetBuffCount(445) == 1) then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 445') end):once(delay)
        elseif (gData.GetBuffCount(446) == 1) then
            (function() AshitaCore:GetChatManager():QueueCommand(-1, '/debuff 446') end):once(delay)
        end
    end
end

profile.HandleMidcast = function()
    local action = gData.GetAction();

    if action.Skill == 'Ninjutsu' then
        gFunc.EquipSet(sets.Utsu);
    end
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleWeaponskill = function()
    gFunc.EquipSet(sets.WS);
end

return profile;
