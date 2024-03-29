local profile = {};
local isTargetTagged = gFunc.LoadFile('common\\tag.lua');

local sets = {
    ['Idle'] = {
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Cheviot Cape',
        Waist = 'Lieutenant\'s Sash',
        Legs = 'Goliard Trews',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Resting'] = {
        -- Main = 'Chatoyant Staff',
        Head = 'Pantin Taj',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Cheviot Cape',
        Waist = 'Lieutenant\'s Sash',
        Legs = 'Goliard Trews',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Mog'] = {
        Head = 'Pantin Taj',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Kupo Suit',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Cheviot Cape',
        Waist = 'Lieutenant\'s Sash',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Meele'] = {
        Head = { Name = 'Puppetry Taj +1', Augment = { [1] = 'Haste+4', [2] = 'Pet: Haste+4' } },
        Neck = 'Faith Torque',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Hollow Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Pantin Cape',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Enmity'] = {
        Main = 'Hades Sainti',
        Ring2 = 'Sattva Ring',
    },
    ['DT'] = {
        Main = 'Terra\'s Staff',
        Sub = 'Staff Strap',
        Head = { Name = 'Puppetry Taj +1', Augment = { [1] = 'Haste+4', [2] = 'Pet: Haste+4' } },
        Neck = 'Beguiling Collar',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Pantin Cape',
        Waist = 'Selemnus belt',
        Legs = 'Goliard Trews',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Cure'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Fylgja Torque +1',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Naji\'s Loop',
        Back = 'Dew Silk Cape +1',
        Waist = 'Salire Belt',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Stoneskin'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Stone Gorget',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Vivian Ring',
        Back = 'Dew Silk Cape +1',
        Waist = 'Salire Belt',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Sleep'] = {
        Head = 'Pantin Taj',
        Neck = 'Opo-opo Necklace',
        Ear1 = 'Merman\'s Earring',
        Ear2 = 'Merman\'s Earring',
        Ring1 = 'Succor Ring',
        Ring2 = 'Merman\'s Ring',
        Back = 'Cheviot Cape',
        Waist = 'Selemnus belt',
    },
    ['WS'] = {
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Aesir Ear Pendant',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Pantin Cape',
        Waist = 'Potent Belt',
        Legs = 'Pantin Churidars',
        Feet = 'Agrona\'s Leggings',
    },
    ['Shijin'] = {
        Head = 'Optical Hat',
        Neck = 'Faith Torque',
        Ear1 = 'Aesir Ear Pendant',
        Ear2 = 'Brutal Earring',
        Body = 'Pantin Tobe +1',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Zilant Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Pantin Cape',
        Waist = 'Potent Belt',
        Legs = 'Pantin Churidars',
        Feet = 'Agrona\'s Leggings',
    },
    ['Precast'] = {
        Back = 'Veela cape',
        Ear2 = 'Loquac. Earring',
        Ring2 = 'Naji\'s Loop',
    },
    ['FireManeuver'] = {
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
    ['EarthManeuver'] = {
        Hands = 'Pup. Dastanas',
        Head = 'Maat\'s Cap',
        Legs = 'Pantin Churidars',
        Neck = 'Bfn. Collar +1',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Sattva Ring',
        Waist = 'Selemnus belt',
    },
    ['WaterManeuver'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Body = 'Errant Hpl.',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Thunder Ring',
        Ring2 = 'Tamas Ring',
        Waist = 'Salire Belt',
        Legs = 'Magic Slacks',
        Feet = 'Pantin Babouches',
    },
    ['WindManeuver'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Ear1 = 'Altdorf\'s Earring',
        Ear2 = 'Wilhelm\'s Earring',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Blobnag Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Flagellant\'s Rope',
    },
    ['IceManeuver'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Hands = 'Pup. Dastanas',
        Body = 'Errant Hpl.',
        Ring1 = 'Galdr Ring',
        Ring2 = 'Tamas Ring',
        Waist = 'Jungle Rope',
        Legs = 'Magic Slacks',
        Feet = 'Pantin Babouches',
    },
    ['ThunderManeuver'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Ear1 = 'Pixie Earring',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Zilant Ring',
        Ring2 = 'Rajas Ring',
        Waist = 'Flagellant\'s Rope',
    },
    ['LightManeuver'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Body = 'Errant Hpl.',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Light Ring',
        Ring2 = 'Light Ring',
        Back = 'Birdman Cape',
        Waist = 'Corsette',
        Legs = 'Pup. Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['DarkManeuver'] = {
        Head = 'Walahra Turban',
        Neck = 'Bfn. Collar +1',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Succor Ring',
        Back = 'Errant Cape',
        Waist = 'Jungle Rope',
    },
    ['Repair'] = {
        Ear1 = 'Guignol Earring',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    Mog = false,
    DT = false,
    Tanking = false,
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 9');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load petinfo');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load chains');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load pupsets');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 3 echo') end):once(2)
end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(1, '/addon unload pupsets');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon unload chains');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon unload petinfo');
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
    if (args[1] == 'dt') then
        if (Settings.DT == true) then
            Settings.DT = false;
            gFunc.Message('DT Set Off');
        else
            Settings.DT = true;
            gFunc.Message('DT Set On');
        end
    end
    if (args[1] == 'deact') then
        local pet = gData.GetPet()
        if (pet.HPP ~= 100) then
            gFunc.Message('!Heal your pet!');
        else
            AshitaCore:GetChatManager():QueueCommand(1, '/pet Deactivate <me>');
        end
    end
    if (args[1] == 'tank') then
        if (Settings.Cure == true) then
            Settings.Cure = false;
            gFunc.Message('PUP tank mode Off');
        else
            Settings.Cure = true;
            AshitaCore:GetChatManager():QueueCommand(1, '/pupsets load tank');
            gFunc.Message('PUP tank mode On');
        end
    end
end

profile.HandleDefault = function()
    local sleep = gData.GetBuffCount('Sleep');
    local player = gData.GetPlayer();
    local pet = gData.GetPet();

    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
    elseif (Settings.DT == true) then
        gFunc.EquipSet(sets.DT);
    elseif (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Meele);
        -- Tagging TH during battle
        if (not isTargetTagged()) then
            gFunc.Equip('Head', 'Wh. Rarab Cap +1');
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
        if (pet == nil) then
            gFunc.Equip('Feet', 'Hermes\' Sandals');
        elseif (pet.HPP >= 99) then
            gFunc.Equip('Feet', 'Hermes\' Sandals');
        end
    else
        gFunc.EquipSet(sets.Idle);
        if (pet == nil) then
            gFunc.Equip('Feet', 'Hermes\' Sandals');
        elseif (pet.HPP >= 99) then
            gFunc.Equip('Feet', 'Hermes\' Sandals');
        end
    end

    -- if (Settings.Cure == true) and (Settings.Mog == false) then
    --     gFunc.Equip('Legs', 'Pup. Churidars');
    -- end
end

profile.HandleAbility = function()
    local action = gData.GetAction();
    if (action.Name == 'Fire Maneuver') then
        gFunc.EquipSet(sets.FireManeuver);
    elseif (action.Name == 'Earth Maneuver') then
        gFunc.EquipSet(sets.EarthManeuver);
    elseif (action.Name == 'Water Maneuver') then
        gFunc.EquipSet(sets.WaterManeuver);
    elseif (action.Name == 'Wind Maneuver') then
        gFunc.EquipSet(sets.WindManeuver);
    elseif (action.Name == 'Ice Maneuver') then
        gFunc.EquipSet(sets.IceManeuver);
    elseif (action.Name == 'Thunder Maneuver') then
        gFunc.EquipSet(sets.ThunderManeuver);
    elseif (action.Name == 'Light Maneuver') then
        gFunc.EquipSet(sets.LightManeuver);
    elseif (action.Name == 'Dark Maneuver') then
        gFunc.EquipSet(sets.DarkManeuver);
    elseif (action.Name == 'Repair') then
        gFunc.EquipSet(sets.Repair);
    elseif (Settings.Tanking == true) then
        gFunc.Equip('Neck', 'Harmonia\'s Torque');
    end

    if (Settings.Tanking == true) then
        gFunc.EquipSet(sets.Enmity);
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
    local spell = gData.GetAction();
    if (string.contains(spell.Name, 'Cure')) then
        gFunc.EquipSet(sets.Cure);
    elseif (spell.Name == 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin);
    end
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
