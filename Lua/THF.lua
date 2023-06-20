local profile = {};
local sets = {
    ['Idle'] = {
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Rog. Vest +1', Augment = { [1] = '"Dual Wield"+2', [2] = '"Regen"+2' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Trotter Boots',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = 'Homam Cosciales',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Resting'] = {
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Rog. Vest +1', Augment = { [1] = '"Dual Wield"+2', [2] = '"Regen"+2' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = 'Homam Cosciales',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Mog'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Kupo Suit',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Trotter Boots',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Neck = 'Orochi Nodowa',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['TP'] = {
        -- Main = 'Vajra',
        -- Main = 'Blau Dolch',
        -- Sub = 'Mercurial Kris',
        Back = 'Amemet Mantle +1',
        Body = 'Rapparee Harness',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = 'Homam Cosciales',
        Neck = 'Love Torque',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['TH'] = {
        -- Main = 'Thief\'s Knife',
        -- Sub = 'Mercurial Kris',
        Back = 'Amemet Mantle +1',
        Body = 'Rapparee Harness',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = 'Wh. Rarab Cap +1',
        Legs = 'Homam Cosciales',
        Neck = 'Love Torque',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['TPACC'] = {
        -- Main = 'Blau Dolch',
        -- Sub = 'Mercurial Kris',
        Range = 'Fire Bomblet',
        Back = 'Amemet Mantle +1',
        Body = 'Homam Corazza',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = 'Optical Hat',
        Legs = 'Homam Cosciales',
        Neck = 'Love Torque',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['THACC'] = {
        -- Main = 'Thief\'s Knife',
        -- Sub = 'Mercurial Kris',
        Range = 'Fire Bomblet',
        Back = 'Amemet Mantle +1',
        Body = 'Homam Corazza',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = 'Wh. Rarab Cap +1',
        Legs = 'Homam Cosciales',
        Neck = 'Love Torque',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['SA'] = {
        Back = 'Commander\'s Cape',
        Body = 'Dragon Harness',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Pixie Earring',
        Feet = 'Dragon Leggings',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = 'Maat\'s Cap',
        Legs = 'Dragon Subligar',
        Neck = 'Love Torque',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Fatality Belt',
    },
    ['TA'] = {
        Back = 'Cerberus Mantle',
        Body = 'Dragon Harness',
        Ear1 = 'Suppanomimi',
        Ear2 = 'Ethereal Earring',
        Feet = 'Dragon Leggings',
        Hands = 'Dragon Mittens',
        Head = 'Maat\'s Cap',
        Neck = 'Love Torque',
        Legs = 'Rogue\'s Culottes',
        Ring1 = 'Sattva Ring',
        Ring2 = 'Blobnag Ring',
        Waist = 'Warwolf Belt',
    },
    ['MAB'] = {
        Back = 'Amemet Mantle +1',
        Body = 'Dragon Harness',
        Ear1 = 'Moldavite Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Dragon Leggings',
        Hands = 'Dragon Mittens',
        Head = 'Maat\'s Cap',
        Legs = 'Dragon Subligar',
        Neck = 'Fotia Gorget',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Thunder Ring',
        Waist = 'Warwolf Belt',
    },
    ['WSDEX'] = {
        Back = 'Commander\'s Cape',
        Body = 'Homam Corazza',
        Ear1 = 'Pixie Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Draggon Leggings',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = 'Optical Hat',
        Legs = 'Dragon Subligar',
        Neck = 'Fotia Gorget',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Fatality Belt',
    },
    ['Exenterator'] = {
        Back = 'Commander\'s Cape',
        Body = 'Dragon Harness',
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Brutal Earring',
        Feet = 'Dragon Leggings',
        Hands = 'Dragon Mittens',
        Head = 'Optical Hat',
        Legs = 'Rogue\'s Culottes',
        Neck = 'Fotia Gorget',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Blobnag Ring',
        Waist = 'Potent Belt',
    },
    ['ExenteratorTA'] = {
        Back = 'Cerberus Mantle',
        Body = 'Dragon Harness',
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Brutal Earring',
        Feet = 'Dragon Leggings',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = 'Optical Hat',
        Legs = 'Rogue\'s Culottes',
        Neck = 'Fotia Gorget',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Sattva Ring',
        Waist = 'Potent Belt',
    },
    ['CHR'] = {
        Back = 'Corse Cape',
        Body = 'Dragon Harness',
        Hands = 'Assassin\'s Armlets',
        Head = 'Maat\'s Cap',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Waist = 'Corsette',
    },
    ['Precast'] = {
        Ear2 = 'Loquac. Earring',
        Legs = 'Homam Cosciales',
    },
    ['Casting'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Rapparee Harness',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Legs = 'Homam Cosciales',
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Neck = 'Evasion Torque',
        Waist = 'Ninurta\'s Sash',
    },
    ['Sleep'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Head = 'Optical Hat',
        Neck = 'Opo-opo Necklace',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['DT'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Homam Corazza',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Head = 'Black Ribbon',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Steal'] = {
        Feet = 'Rogue\'s Poulaines',
        Hands = 'Thief\'s Kote',
        Head = 'Rogue\'s Bonnet',
        Legs = 'Assassin\'s Culottes',
        Neck = 'Rabbit Charm',
    },
    ['Hide'] = {
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Rog. Vest +1', Augment = { [1] = '"Dual Wield"+2', [2] = '"Regen"+2' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = 'Trotter Boots',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = 'Homam Cosciales',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['RA'] = {
        Back = 'Lynx Mantle',
        Body = 'Pln. Khazagand',
        Ear2 = 'Vision Earring',
        Feet = 'Homam Gambieras ',
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
    TH = true,
    DT = false,
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon reload skillchains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo THF loading!');
    gFunc.Equip('Main', 'Thief\'s Knife');
    gFunc.Equip('Sub', 'Mercurial Kris');
    gFunc.Equip('Ammo', 'Acid Bolt');
    gFunc.Equip('Range', 'Staurobow');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 7 echo') end):once(2)
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
    if (args[1] == 'dt') then
        if (Settings.Kirin == true) then
            Settings.Kirin = false;
            gFunc.Message('DT Set Off');
        else
            Settings.Kirin = true;
            gFunc.Message('DT Set On');
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

    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
    elseif (dt == 1) then
        gFunc.EquipSet(sets.DT);
    elseif (ta == 1) then
        gFunc.EquipSet(sets.TA);
    elseif (sa == 1) then
        gFunc.EquipSet(sets.SA);
    elseif (player.Status == 'Engaged') then
        if (Settings.TH == true) then
            if (Settings.Accuracy == true) then
                gFunc.EquipSet(sets.THACC);
            else
                gFunc.EquipSet(sets.TH);
            end
        else
            if (Settings.Accuracy == true) then
                gFunc.EquipSet(sets.TPACC);
            else
                gFunc.EquipSet(sets.TP);
            end
        end
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    else
        gFunc.EquipSet(sets.Idle);
        -- if (Settings.TH == false) then
        --     AshitaCore:GetChatManager():QueueCommand(-1, '/lac fwd th')
        -- end
    end
    if (para == 1) then
        gFunc.Equip('Waist', 'Flagellant\'s Rope');
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    local sneak = gData.GetBuffCount('Sneak');

    if (action.Name == 'Flee') then
        gFunc.Equip('Feet', 'Rogue\'s Poulaines');
    elseif (action.Name == 'Hide') then
        gFunc.EquipSet(sets.Hide);
    elseif (action.Name == 'Mug') then
        gFunc.Equip('Head', 'Assassin\'s Bonnet');
    elseif (action.Name == 'Steal') then
        gFunc.EquipSet(sets.Steal);
    elseif (string.contains(action.Name, 'Waltz')) then
        gFunc.EquipSet(sets.CHR);
    elseif (action.Name == 'Spectral Jig') and (sneak ~= 0) then
        gFunc.CancelAction();
        AshitaCore:GetChatManager():QueueCommand(-1, '/debuff Sneak');
        (function() AshitaCore:GetChatManager():QueueCommand(-1, '/ja "Spectral Jig" <me>') end):once(2)
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    local delay = 2.4

    gFunc.EquipSet(sets.Precast);
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

profile.HandleMidcast = function()
    gFunc.EquipSet(sets.Casting);
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.RA);
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    local ta = gData.GetBuffCount('Trick Attack');

    local DEX = T { 'Evisceration', 'Wasp Sting', 'Viper Bite', 'Mandalic Stab' };
    local MAB = T { 'Gust Slash', 'Cyclone', 'Aeolian Edge' };
    local AGI = T { 'Exenterator' };

    if (AGI:contains(action.Name)) then
        if (ta == 1) then
            gFunc.EquipSet(sets.ExenteratorTA);
        else
            gFunc.EquipSet(sets.Exenterator);
        end
    elseif (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEX);
    elseif (MAB:contains(action.Name)) then
        gFunc.EquipSet(sets.MAB);
    end
end

return profile;
