local profile = {};
local isTargetTagged = gFunc.LoadFile('common\\tag.lua');

local sets = {
    ['Idle'] = {
        Main = 'Hades Sainti',
        Ammo = 'Astrolabe',
        Head = 'Optical Hat',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Melee Cyclas',
        Hands = 'Denali Wristbands',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = 'Melee Gaiters',
    },
    ['Mog'] = {
        Head = 'Optical Hat',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Kupo Suit',
        Hands = 'Denali Wristbands',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Feet = 'Melee Gaiters',
    },
    ['Sleep'] = {
        Head = 'Optical Hat',
        Neck = 'Opo-opo Necklace',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Melee Cyclas',
        Hands = 'Denali Wristbands',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = 'Melee Gaiters',
    },
    ['TP'] = {
        Main = 'Hades Sainti',
        Ammo = 'Astrolabe',
        Head = 'Walahra Turban',
        Neck = 'Faith Torque',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Brutal Earring',
        Body = { Name = 'Shura Togi', Augment = { [1] = 'Evasion+5', [2] = 'Haste+2', [3] = '"Subtle Blow"+3' } },
        Hands = { Name = 'Seiryu\'s Kote', Augment = { [1] = 'Crit.hit rate+3', [2] = '"Store TP"+5', [3] = 'Evasion+4' } },
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Brown Belt',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
    },
    ['WS'] = {
        Head = { Name = 'Shr.Znr.Kabuto',
            Augment = { [1] = 'Weapon skill damage +3%', [2] = '"Resist Stun"+5', [3] = '"Conserve TP"+5' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Aesir Ear Pendant',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Hands = 'Melee Gloves',
        Ring1 = 'Flame Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Potent Belt',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = 'Melee Gaiters',
    },
    ['Shijin'] = {
        Head = { Name = 'Shr.Znr.Kabuto',
            Augment = { [1] = 'Weapon skill damage +3%', [2] = '"Resist Stun"+5', [3] = '"Conserve TP"+5' } },
        Neck = 'Fotia Gorget',
        Ear1 = 'Hollow Earring',
        Ear2 = 'Aesir Ear Pendant',
        Body = { Name = 'Shura Togi', Augment = { [1] = 'Evasion+5', [2] = 'Haste+2', [3] = '"Subtle Blow"+3' } },
        Hands = 'Melee Gloves',
        Ring1 = 'Zilant Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Amemet Mantle +1',
        Waist = 'Potent Belt',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = 'Melee Gaiters',
    },
    ['Chackra'] = {
        Hands = 'Melee Gloves',
    },
    ['Counter'] = {
        Feet = 'Melee Gaiters',
    },
    ['Precast'] = {
        Ear2 = 'Loquac. Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
    },
    ['Chi'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Faith Torque',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+2', [3] = 'Evasion+4' } },
        Hands = 'Denali Wristbands',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Thunder Ring',
        Back = 'Melee Cape',
        Waist = 'Salire Belt',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
    },
    ['Utsu'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Boxer\'s Mantle',
        Body = { Name = 'Shura Togi', Augment = { [1] = 'Evasion+5', [2] = 'Haste+2', [3] = '"Subtle Blow"+3' } },
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Feet = { Name = 'Suzaku\'s Sune-Ate', Augment = { [1] = '"Fast Cast"+4', [2] = 'Haste+3' } },
        Hands = 'Denali Wristbands',
        Head = 'Optical Hat',
        Legs = { Name = 'Byakko\'s Haidate', Augment = { [1] = 'AGI+3', [2] = '"Store TP"+3', [3] = 'DEX+3' } },
        Neck = 'Evasion Torque',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Alert Ring',
        Waist = 'Ninurta\'s Sash',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    Mog = false,
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 12');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load chains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo MNK loading!');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 9 echo') end):once(2)
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
end

profile.HandleDefault = function()
    local sleep = gData.GetBuffCount('Sleep');
    local player = gData.GetPlayer();

    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
    elseif (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.TP);
        -- Tagging TH during battle
        if (not isTargetTagged()) then
            gFunc.Equip('Head', 'Wh. Rarab Cap +1');
        end
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Dodge') then
        gFunc.EquipSet(sets.Idle);
    elseif (action.Name == 'Chackra') then
        gFunc.EquipSet(sets.Chackra);
    elseif (action.Name == 'Counterstance') then
        gFunc.EquipSet(sets.Counter);
    elseif (action.Name == 'Focus') then
        gFunc.EquipSet(sets.Idle);
    elseif (action.Name == 'Chi Blast') then
        gFunc.EquipSet(sets.Chi);
    elseif (action.Name == 'Footwork') then
        gFunc.EquipSet(sets.Idle);
    elseif (action.Name == 'Boost') then
        gFunc.EquipSet(sets.Idle);
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
    gFunc.EquipSet(sets.Utsu);
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    local action = gData.GetAction();

    if (action.Name == "Shijin Spiral") then
        gFunc.EquipSet(sets.Shijin);
    else
        gFunc.EquipSet(sets.WS);
    end
end

return profile;
