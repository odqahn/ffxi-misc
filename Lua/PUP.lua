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
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Legs = 'Pantin Churidars',
        Feet = 'Pantin Babouches',
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
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Feet = 'Pantin Babouches',
    },
    ['Meele'] = {
        Main = 'Acantha Shavers',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Optical Hat',
        Neck = 'Peacock Amulet',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Aesir Ear Pendant',
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
        Main = 'Terra\'s Staff',
        Sub = 'Staff Strap',
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Optical Hat',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Body = 'Pantin Tobe',
        Hands = 'Pantin Dastanas',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Legs = 'Pantin Churidars',
        Feet = 'Pantin Babouches',
    },
    ['Sleep'] = {
        Range = 'Turbo Animator',
        Ammo = 'Automat. Oil +2',
        Head = 'Pantin Taj',
        Neck = 'Opo-opo Necklace',
        Ear1 = 'Ocl. Earring',
        Ear2 = 'Ocl. Earring',
        Ring1 = 'Coral Ring',
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
        Back = 'Boxer\'s Mantle',
        Waist = 'Potent Belt',
        Legs = 'Pantin Churidars',
        Feet = 'Pantin Babouches',
    },
    ['Precast'] = {
        Back = 'Veela cape',
        Ear2 = 'Loquac. Earring',
    },
};
profile.Sets = sets;

profile.Packer = {
};

local Settings = {
    Mog = false,
    DT = false,
    TH = false,
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
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
    else
        gFunc.EquipSet(sets.Idle);
    end

    if (para == 1) then
        gFunc.Equip('Waist', 'Flagellant\'s Rope');
    end
end

profile.HandleAbility = function()
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
    gFunc.EquipSet(sets.Precast);
end

profile.HandleMidcast = function()
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
    gFunc.EquipSet(sets.WS);
end

return profile;
