local profile = {};
local sets = {
    ['Idle'] = {
        Main = 'Dabo',
        Sub = 'Pole Grip',
        Ammo = 'Tiphia Sting',
        Head = 'Optical Hat',
        Neck = 'Orochi Nodowa',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Body = 'Wyrm Mail',
        Hands = 'Wyrm Fng.Gnt.',
        Ring1 = 'Succor Ring',
        Ring2 = 'Coral Ring',
        Back = 'Boxer\'s Mantle',
        Waist = 'Lieutenant\'s Sash',
        Legs = 'Wyrm Brais',
        Feet = 'Wyrm Greaves',
    },
    ['TP'] = {
        Main = 'Dabo',
        Sub = 'Pole Grip',
        Ammo = 'Tiphia Sting',
        Head = 'Homam Zucchetto',
        Neck = 'Love Torque',
        Ear1 = 'Brutal Earring',
        Ear2 = 'Pixie Earring',
        Body = 'Homam Corazza',
        Hands = 'Wyrm Fng.Gnt.',
        Ring1 = 'Toreador\'s Ring',
        Ring2 = 'Rajas Ring',
        Back = 'Cerberus Mantle',
        Waist = 'Ninurta\'s Sash',
        Legs = 'Homam Cosciales',
        Feet = 'Homam Gambieras',
    },
    ['Sleep'] = {
        Ammo = 'Goblin Cracker',
        Back = 'Boxer\'s Mantle',
        Body = 'Scp. Harness +1',
        Ear1 = 'Musical Earring',
        Ear2 = 'Ethereal Earring',
        Neck = 'Opo-opo Necklace',
        Ring1 = 'Coral Ring',
        Ring2 = 'Coral Ring',
        Waist = 'Lieutenant\'s Sash',
    },
};
profile.Sets = sets;

local Settings = {
    Mog = false,
    TH = false,
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    -- AshitaCore:GetChatManager():QueueCommand(1, '/macro book 7');
    -- AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon reload skillchains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo DRG loading!');
    -- (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 4 echo') end):once(2)
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

profile.HandleDefault = function()
    if (player.Status == 'Engaged') then
        if (sleep == 1) then
            gFunc.EquipSet(sets.Sleep);
        else
            gFunc.EquipSet(sets.TP);
        end
        -- Equip TH set during battle
        if (Settings.TH == true) then
            gFunc.Equip('Head', 'Wh. Rarab Cap +1');
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

    --  Flagellant's in case of para
    if (para == 1) then
        gFunc.Equip('Waist', 'Flagellant\'s Rope');
    end
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