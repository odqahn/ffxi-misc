local profile = {};
local isTargetTagged = gFunc.LoadFile('common\\tag.lua');

local sets = {
    ['DefaultWeapons'] = {
        Main = 'Blau Dolch',
        Sub = 'Mercurial Kris',
    },
    ['THWeapons'] = {
        Main = 'Thief\'s Knife',
        Sub = 'Mercurial Kris',
    },
    ['Pulling'] = {
        Range = 'Staurobow',
        Ammo = 'Acid Bolt',
    },
    ['PullingNot'] = {
        Ammo = 'Fire Bomblet',
    },
    ['Idle'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Dragon Harness',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Feet = 'Trotter Boots',
        Hands = 'Denali Wristbands',
        Head = 'Black Ribbon',
        Legs = 'Homam Cosciales',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Mog'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Kupo Suit',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Feet = 'Trotter Boots',
        Hands = 'Denali Wristbands',
        Head = 'Black Ribbon',
        Neck = 'Love Torque',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['Regen'] = {
        Body = { Name = 'Rog. Vest +1', Augment = { [1] = '"Dual Wield"+2', [2] = '"Regen"+2' } },
    },
    ['TH'] = {
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = 'Wh. Rarab Cap +1',
    },
    ['TP'] = {
        Back = 'Amemet Mantle +1',
        Body = 'Rapparee Harness',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = 'Homam Cosciales',
        Neck = 'Love Torque',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['TPACC'] = {
        Back = 'Amemet Mantle +1',
        Body = 'Homam Corazza',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = 'Homam Cosciales',
        Neck = 'Love Torque',
        Ring1 = 'Toreador\'s ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['SA'] = {
        Back = 'Assassin\'s Cape',
        Body = 'Dragon Harness',
        Ear1 = 'Pixie Earring',
        Ear2 = 'Hollow Earring',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'Scythe skill +4', [3] = 'AGI+4' } },
        Hands = { Name = 'Hct. Mittens +1', Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' } },
        Head = 'Maat\'s Cap',
        Legs = 'Dragon Subligar',
        Neck = 'Love Torque',
        Ring1 = 'Zilant Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['TA'] = {
        Back = 'Assassin\'s Cape',
        Body = 'Dragon Harness',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Feet = 'Dragon Leggings',
        Hands = 'Dragon Mittens',
        Head = 'Maat\'s Cap',
        Legs = 'Rogue\'s Culottes',
        Neck = 'Love Torque',
        Ring1 = 'Sattva Ring',
        Ring2 = 'Blobnag Ring',
        Waist = 'Warwolf Belt',
    },
    ['WSDEX'] = {
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Conserve TP"+3', [2] = 'Attack+5', [3] = 'DEX+4' } },
        Ear1 = 'Pixie Earring',
        Ear2 = 'Hollow Earring',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'Scythe skill +4', [3] = 'AGI+4' } },
        Hands = { Name = 'Hct. Mittens +1', Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' } },
        Head = 'Maat\'s Cap',
        Legs = 'Dragon Subligar',
        Neck = 'Love Torque',
        Ring1 = 'Zilant Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Warwolf Belt',
    },
    ['DEXINT'] = {
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Conserve TP"+3', [2] = 'Attack+5', [3] = 'DEX+4' } },
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Hollow Earring',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'Scythe skill +4', [3] = 'AGI+4' } },
        Hands = { Name = 'Hct. Mittens +1', Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' } },
        Head = 'Maat\'s Cap',
        Legs = 'Dusk Trousers',
        Neck = 'Love Torque',
        Ring1 = 'Galdr Ring',
        Ring2 = 'Tamas Ring',
        Waist = 'Warwolf Belt',
    },
    ['Exenterator'] = {
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Conserve TP"+3', [2] = 'Attack+5', [3] = 'DEX+4' } },
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Aesir Ear Pendant',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'Scythe skill +4', [3] = 'AGI+4' } },
        Hands = { Name = 'Hct. Mittens +1', Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' } },
        Head = 'Optical Hat',
        Legs = 'Rogue\'s Culottes',
        Neck = 'Fotia Gorget',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Blobnag Ring',
        Waist = 'Potent Belt',
    },
    ['ExenteratorTA'] = {
        Back = 'Assassin\'s Cape',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Conserve TP"+3', [2] = 'Attack+5', [3] = 'DEX+4' } },
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Aesir Ear Pendant',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'Scythe skill +4', [3] = 'AGI+4' } },
        Hands = { Name = 'Hct. Mittens +1', Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' } },
        Head = 'Optical Hat',
        Legs = 'Rogue\'s Culottes',
        Neck = 'Fotia Gorget',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Sattva Ring',
        Waist = 'Potent Belt',
    },
    ['Mercy'] = {
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Hecatomb Harness', Augment = { [1] = '"Conserve TP"+3', [2] = 'Attack+5', [3] = 'DEX+4' } },
        Ear1 = 'Ethereal Earring',
        Ear2 = 'Aesir Ear Pendant',
        Feet = { Name = 'Hct. Leggings', Augment = { [1] = 'STR+3', [2] = 'Scythe skill +4', [3] = 'AGI+4' } },
        Hands = { Name = 'Hct. Mittens +1', Augment = { [1] = 'Dagger skill +6', [2] = 'Sword skill +6', [3] = 'Crit. hit damage +3%' } },
        Head = 'Maat\'s Cap',
        Legs = 'Dragon Subligar',
        Neck = 'Love Torque',
        Ring1 = 'Rajas Ring',
        Ring2 = 'Flame Ring',
        Waist = 'Warwolf Belt',
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
        Feet = 'Homam Gambieras',
        Hands = { Name = 'Rog. Armlets +1', Augment = { [1] = 'Haste+3', [2] = '"Treasure Hunter"+1' } },
        Head = { Name = 'Rog. Bonnet +1', Augment = { [1] = 'Crit.hit rate+3', [2] = 'Haste+5' } },
        Legs = 'Homam Cosciales',
        Neck = 'Evasion Torque',
        Ring1 = 'Succor Ring',
        Ring2 = 'Alert Ring',
        Waist = 'Ninurta\'s Sash',
    },
    ['Sleep'] = {
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Rog. Vest +1', Augment = { [1] = '"Dual Wield"+2', [2] = '"Regen"+2' } },
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Feet = 'Dst. Leggings +1',
        Hands = 'Denali Wristbands',
        Head = 'Black Ribbon',
        Neck = 'Opo-opo Necklace',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['DT'] = {
        Back = 'Boxer\'s Mantle',
        Body = 'Dragon Harness',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Feet = 'Trotter Boots',
        Hands = 'Denali Wristbands',
        Head = 'Black Ribbon',
        Legs = 'Homam Cosciales',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
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
        Neck = 'Evasion Torque',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Waist = 'Lieutenant\'s Sash',
    },
    ['RA'] = {
        Back = 'Lynx Mantle',
        Body = 'Pln. Khazagand',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
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
    TH = false,
    THSwapWeapons = false,
    DT = false,
    Pulling = false,
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load chains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo THF loading!');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 7 echo') end):once(2)
end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(1, '/addon unload chains');
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
    if (args[1] == 'thswap') then
        if (Settings.THSwapWeapons == true) then
            Settings.THSwapWeapons = false;
            gFunc.Message('TH weapons swap Set Off');
        else
            Settings.THSwapWeapons = true;
            gFunc.Message('TH weapons swap Set On');
        end
    end
    if (args[1] == 'dt') then
        if (Settings.DT == true) then
            Settings.DT = false;
            gFunc.Message('DT Set Off');
        else
            Settings.DT = true;
            gFunc.Message('DT Set On');
        end
    end
    if (args[1] == 'pulling') then
        if (Settings.Pulling == true) then
            Settings.Pulling = false;
            gFunc.Message('Pulling Set Off');
        else
            Settings.Pulling = true;
            gFunc.Message('Pulling Set On');
        end
    end
end

-- TODO: un set TH et un EquipSet
profile.HandleDefault = function()
    local sa = gData.GetBuffCount('Sneak Attack');
    local ta = gData.GetBuffCount('Trick Attack');
    local sleep = gData.GetBuffCount('Sleep');

    local player = gData.GetPlayer();

    -- Swap ranged
    if (Settings.Pulling == true) then
        gFunc.EquipSet(sets.Pulling);
    else
        gFunc.EquipSet(sets.PullingNot);
    end

    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
    elseif (Settings.DT == true) then
        gFunc.EquipSet(sets.DT);
    elseif (ta == 1) then
        gFunc.EquipSet(sets.TA);
    elseif (sa == 1) then
        gFunc.EquipSet(sets.SA);
    elseif (player.Status == 'Engaged') then
        if (Settings.Accuracy == true) then
            gFunc.EquipSet(sets.TPACC);
        else
            gFunc.EquipSet(sets.TP);
        end
        if (Settings.THSwapWeapons == true) then
            gFunc.EquipSet(sets.DefaultWeapons);
        end
        if (not isTargetTagged()) or (Settings.TH == true) then
            gFunc.EquipSet(sets.TH);
            if (Settings.THSwapWeapons == true) then
                gFunc.EquipSet(sets.THWeapons);
            end
        end
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
        if (player.HPP <= 95) then
            gFunc.EquipSet(sets.Regen);
        end
    else
        gFunc.EquipSet(sets.Idle);
        if (player.HPP <= 95) then
            gFunc.EquipSet(sets.Regen);
        end
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
    if (Settings.Pulling == true) then
        gFunc.EquipSet(sets.RA);
        if (not isTargetTagged()) then
            gFunc.EquipSet(sets.TH);
        end
    else
        gFunc.CancelAction();
        gFunc.Message('Pulling Set is Off!!');
    end
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();
    local ta = gData.GetBuffCount('Trick Attack');

    local DEX = T { 'Evisceration', 'Wasp Sting', 'Viper Bite', 'Mandalic Stab', 'Cyclone' };
    local DEXINT = T { 'Gust Slash', 'Aeolian Edge' };
    local AGI = T { 'Exenterator' };
    local STR = T { 'Mercy Stroke' };

    if (AGI:contains(action.Name)) then
        if (ta == 1) then
            gFunc.EquipSet(sets.ExenteratorTA);
        else
            gFunc.EquipSet(sets.Exenterator);
        end
    elseif (STR:contains(action.Name)) then
        gFunc.EquipSet(sets.Mercy);
        if(Settings.Pulling == false) then
            gFunc.Equip('Sub', 'Bomb Core');
        end
    elseif (DEX:contains(action.Name)) then
        gFunc.EquipSet(sets.WSDEX);
        if(Settings.Pulling == false) then
            gFunc.Equip('Sub', 'Bomb Core');
        end
    elseif (DEXINT:contains(action.Name)) then
        gFunc.EquipSet(sets.DEXINT);
        if(Settings.Pulling == false) then
            gFunc.Equip('Sub', 'Bomb Core');
        end
    end
end

return profile;
