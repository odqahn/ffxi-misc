local profile = {};
local sets = {
    ['Idle'] = {
        Ammo = 'Hedgehog Bomb',
        Back = 'Astute Cape',
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+3' } },
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Summoner\'s Pgch.',
        Hands = 'Summoner\'s Brcr.',
        Head = { Name = 'Evk. Horn +1', Augment = { [1] = 'MP recovered while healing +4', [2] = '"Refresh"+1' } },
        Legs = 'Goliard Trews',
        Main = 'Terra\'s Staff',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Evoker\'s Ring',
        Sub = 'Staff Strap',
        Waist = 'Jungle Rope',
    },
    ['Summoned'] = {
        Ammo = 'Hedgehog Bomb',
        Back = 'Astute Cape',
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+3' } },
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Summoner\'s Pgch.',
        Hands = 'Summoner\'s Brcr.',
        Head = { Name = 'Evk. Horn +1', Augment = { [1] = 'MP recovered while healing +4', [2] = '"Refresh"+1' } },
        Legs = 'Oracle\'s Braconi',
        Main = 'Chatoyant Staff',
        Neck = 'Smn. Torque',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Evoker\'s Ring',
        Sub = 'Staff Strap',
        Waist = 'Jungle Rope',
    },
    ['Casting'] = {
        Ammo = 'Hedgehog Bomb',
        Back = 'Errant Cape',
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+3' } },
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Summoner\'s Pgch.',
        Hands = 'Summoner\'s Brcr.',
        Head = { Name = 'Evk. Horn +1', Augment = { [1] = 'MP recovered while healing +4', [2] = '"Refresh"+1' } },
        Legs = 'Summoner\'s Spats',
        Main = 'Chatoyant Staff',
        Neck = 'Smn. Torque',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Evoker\'s Ring',
        Sub = 'Staff Strap',
        Waist = 'Jungle Rope',
    },
    ['Resting'] = {
        Ammo = 'Hedgehog Bomb',
        Back = 'Errant Cape',
        Body = { Name = 'Dalmatica', Augment = { [1] = 'Occ. quickens spellcasting +1%', [2] = '"Fast Cast"+3' } },

        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Summoner\'s Pgch.',
        Hands = 'Summoner\'s Brcr.',
        Head = { Name = 'Evk. Horn +1', Augment = { [1] = 'MP recovered while healing +4', [2] = '"Refresh"+1' } },
        Legs = 'Oracle\'s Braconi',
        Main = 'Chatoyant Staff',
        Neck = 'Smn. Torque',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Evoker\'s Ring',
        Sub = 'Staff Strap',
        Waist = 'Jungle Rope',
    },
    ['BP'] = {
        Ammo = 'Hedgehog Bomb',
        Back = 'Astute Cape',
        Body = 'Yinyang Robe',
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Summoner\'s Pgch.',
        Hands = 'Summoner\'s Brcr.',
        Head = { Name = 'Evk. Horn +1', Augment = { [1] = 'MP recovered while healing +4', [2] = '"Refresh"+1' } },
        Legs = 'Oracle\'s Braconi',
        Main = 'Chatoyant Staff',
        Neck = 'Smn. Torque',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Evoker\'s Ring',
        Sub = 'Staff Strap',
        Waist = 'Jungle Rope',
    },
    ['Cure'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Staff Strap',
        Ammo = 'Hedgehog Bomb',
        Back = 'Dew Silk Cape +1',
        Body = 'Errant Hpl.',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Head = 'Maat\'s Cap',
        Neck = 'Fylgja Torque +1',
        Ring2 = 'Tamas Ring',
        Waist = 'Salire Belt',
    },
    ['Stoneskin'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Staff Strap',
        Ammo = 'Hedgehog Bomb',
        Back = 'Dew Silk Cape +1',
        Body = 'Errant Hpl.',
        Ear1 = 'Star Earring',
        Ear2 = 'Star Earring',
        Head = 'Maat\'s Cap',
        Neck = 'Stone Gorget',
        Ring2 = 'Tamas Ring',
        Waist = 'Salire Belt',
    },
    ['Mog'] = {
        Ammo = 'Hedgehog Bomb',
        Back = 'Astute Cape',
        Body = 'Kupo Suit',
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Feet = 'Summoner\'s Pgch.',
        Head = { Name = 'Evk. Horn +1', Augment = { [1] = 'MP recovered while healing +4', [2] = '"Refresh"+1' } },
        Hands = 'Summoner\'s Brcr.',
        Main = 'Terra\'s Staff',
        Neck = 'Orochi Nodowa',
        Ring1 = 'Vivian Ring',
        Ring2 = 'Evoker\'s Ring',
        Sub = 'Staff Strap',
        Waist = 'Jungle Rope',
    },
};
profile.Sets = sets;

local Settings = {
    Mog = false,
};

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 8');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon load petinfo');
    AshitaCore:GetChatManager():QueueCommand(1, '/addon reload skillchains');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo SMN loading!');
    (function() AshitaCore:GetChatManager():QueueCommand(-1, '/lockstyleset 5 echo') end):once(2)
end

profile.OnUnload = function()
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
    if (args[1] == 'siphon') then
        local environment = gData.GetEnvironment();
        local spirit = "unknown";
        if (environment.Weather == "Fire x2") then
            spirit = "Fire Spirit";
        elseif (environment.Weather == "Water x2") then
            spirit = "Water Spirit";
        elseif (environment.Weather == "Earth x2") then
            spirit = "Earth Spirit";
        elseif (environment.Weather == "Wind x2") then
            spirit = "Wind Spirit";
        elseif (environment.Weather == "Ice x2") then
            spirit = "Ice Spirit";
        elseif (environment.Weather == "Thunder x2") then
            spirit = "Thunder Spirit";
        elseif (environment.Weather == "Light x2") then
            spirit = "Light Spirit";
        elseif (environment.Weather == "Dark x2") then
            spirit = "Dark Spirit";
        elseif (environment.DayElement == "Fire") then
            spirit = "Fire Spirit";
        elseif (environment.DayElement == "Water") then
            spirit = "Water Spirit";
        elseif (environment.DayElement == "Earth") then
            spirit = "Earth Spirit";
        elseif (environment.DayElement == "Wind") then
            spirit = "Wind Spirit";
        elseif (environment.DayElement == "Ice") then
            spirit = "Ice Spirit";
        elseif (environment.DayElement == "Thunder") then
            spirit = "Thunder Spirit";
        elseif (environment.DayElement == "Light") then
            spirit = "Light Spirit";
        elseif (environment.DayElement == "Dark") then
            spirit = "Dark Spirit";
        end
        if (spirit ~= "unknown") then
            AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. spirit .. '" <me>');
        end
    end
end

profile.HandleDefault = function()
    local pet = gData.GetPet()
    local player = gData.GetPlayer();
    local environment = gData.GetEnvironment();

    if (pet ~= nil) then
        gFunc.EquipSet(sets.Summoned);
        if (environment.WeatherElement == "Fire") and (pet.Name == 'Ifrit') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        elseif (environment.WeatherElement == "Water") and (pet.Name == 'Leviathan') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        elseif (environment.WeatherElement == "Earth") and (pet.Name == 'Titan') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        elseif (environment.WeatherElement == "Wind") and (pet.Name == 'Garuda') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        elseif (environment.WeatherElement == "Ice") and (pet.Name == 'Shiva') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        elseif (environment.WeatherElement == "Thunder") and (pet.Name == 'Ramuh') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        elseif (environment.WeatherElement == "Light") and (pet.Name == 'Carbuncle') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        elseif (environment.WeatherElement == "Dark") and (pet.Name == 'Fenrir') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        elseif (environment.WeatherElement == "Dark") and (pet.Name == 'Diabolos') then
            gFunc.Equip('Head', 'Summoner\'s Horn');
        end

        if (environment.DayElement == "Fire") and (pet.Name == 'Ifrit') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        elseif (environment.DayElement == "Water") and (pet.Name == 'Leviathan') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        elseif (environment.DayElement == "Earth") and (pet.Name == 'Titan') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        elseif (environment.DayElement == "Wind") and (pet.Name == 'Garuda') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        elseif (environment.DayElement == "Ice") and (pet.Name == 'Shiva') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        elseif (environment.DayElement == "Thunder") and (pet.Name == 'Ramuh') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        elseif (environment.DayElement == "Light") and (pet.Name == 'Carbuncle') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        elseif (environment.DayElement == "Dark") and (pet.Name == 'Fenrir') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        elseif (environment.DayElement == "Dark") and (pet.Name == 'Diabolos') then
            gFunc.Equip('Body', 'Summoner\'s Dblt.');
        end

        if (pet.Name == 'Carbuncle') then
            gFunc.Equip('Hands', 'Carbuncle Mitts');
        end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (Settings.Mog == true) then
        gFunc.EquipSet(sets.Mog);
    else
        gFunc.EquipSet(sets.Idle);
    end
end

profile.HandleAbility = function()
    local ability = gData.GetAction();
    if (ability.Name == 'Release') or (ability.Name == 'Avatar\'s Favor') or (ability.Name == 'Assault') or (ability.Name == 'Retreat') or (ability.Name == 'Apogee') then return end

    gFunc.EquipSet(sets.BP);

    -- if (ability.Name == 'Elemental Siphon') then
    --     gFunc.EquipSet(sets.Idle);
    -- else
    --     gFunc.EquipSet(sets.BP);
    -- end
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    if (string.contains(spell.Name, 'Cure')) then
        gFunc.EquipSet(sets.Cure);
    elseif (spell.Name == 'Stoneskin') then
        gFunc.EquipSet(sets.Stoneskin);
    else
        gFunc.EquipSet(sets.Casting);
    end
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
end

return profile;
