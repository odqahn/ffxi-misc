local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Acantha Shavers',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Back = 'Pantin Cape',
        Waist = 'Lieutenant\'s Sash',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Resting'] = {
        Main = 'Chatoyant Staff',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Mog'] = {
        Main = 'Acantha Shavers',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Body = 'Kupo Suit',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Meele'] = {
        Main = 'Acantha Shavers',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Pixie Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Pantin Cape',
        Waist = 'Swift Belt',
        Legs = 'Pantin Churidars',
        Feet = 'Pantin Babouches',
    },
    ['DT'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Staff Strap',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj',
        Neck = 'Bfn. Collar +1',
        Ear1 = 'Coral Earring',
        Ear2 = 'Coral Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Back = 'Pantin Cape',
        Waist = 'Selemnus belt',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Cure'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Staff Strap',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Maat\'s Cap',
        Neck = 'Fylgja Torque +1',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Vivian Ring',
        Back = 'Dew Silk Cape +1',
        Waist = 'Swift Belt',
        Legs = 'Pantin Churidars',
        Feet = { Name = 'Pup. Babouches +1', Augment = { [1] = '"Repair" potency +2%', [2] = 'Pet: "Regen"+2' } },
    },
    ['Sleep'] = {
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj',
        Neck = 'Opo-opo Necklace',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
    },
    ['WS'] = {
        Main = 'Acantha Shavers',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Optical Hat',
        Neck = 'Fotia Gorget',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Aesir Ear Pendant',
        Body = 'Pln. Khazagand',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Sniper\'s Ring',
        Back = 'Pantin Cape',
        Waist = 'Potent Belt',
        Legs = 'Pantin Churidars',
        Feet = 'Pantin Babouches',
    },
    ['Precast'] = {
        Back = 'Veela cape',
        Ear2 = 'Loquac. Earring',
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
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Selemnus belt',
        Legs = 'Pantin Churidars',
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
        Waist = 'Druid\'s Rope',
        Legs = 'Magic Slacks',
        Feet = 'Pantin Babouches',
    },
    ['WindManeuver'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Ear1 = 'Suppanomimi',
        Hands = 'Pup. Dastanas',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Flagellant\'s Rope',
    },
    ['IceManeuver'] = {
        Head = 'Maat\'s Cap',
        Neck = 'Bfn. Collar +1',
        Hands = 'Pup. Dastanas',
        Body = 'Errant Hpl.',
        Ring1 = 'Snow Ring',
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
        Ring1 = 'Thunder Ring',
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
    TH = false,
    Cure = false,
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 9');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load petinfo');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load pupsets');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 3 echo') end):once(2)
end

profile.OnUnload = function()
    AshitaCore:GetChatManager():QueueCommand(1, '/addon unload pupsets');
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
    if (args[1] == 'whm') then
        if (Settings.Cure == true) then
            Settings.Cure = false;
            gFunc.Message('PUP cure Set Off');
        else
            Settings.Cure = true;
            AshitaCore:GetChatManager():QueueCommand(1, '/pupsets load WHM');
            gFunc.Message('PUP cure Set On');
        end
        local pet = gData.GetPet() 
    end
end

profile.HandleDefault = function()
    local sleep = gData.GetBuffCount('Sleep');
    local para = gData.GetBuffCount('Paralysis');
    local player = gData.GetPlayer();

    if (sleep == 1) then
        gFunc.EquipSet(sets.Sleep);
    elseif (Settings.DT == true) then
        gFunc.EquipSet(sets.DT);
    elseif (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Meele);
        if (Settings.TH == true) then
            gFunc.Equip('Head', 'Wh. Rarab Cap +1');
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
    else
        gFunc.EquipSet(sets.Idle);
    end
    if (Settings.Cure == true) and (Settings.Mog == false) then
        gFunc.Equip('Legs', 'Pup. Churidars');
    end
    if (para == 1) then
        gFunc.Equip('Waist', 'Flagellant\'s Rope');
    end
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
    end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.Precast);
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    if (string.contains(spell.Name, 'Cure')) then
        gFunc.EquipSet(sets.Cure);
    elseif (spell.Name == 'Stoneskin') then
        gFunc.Equip('Neck', 'Stone Gorget');
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    gFunc.EquipSet(sets.WS);
end

return profile;
