local profile = {};
local sets = {
    ['TP'] = {
        Ammo = 'Kabura Arrow',
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Vision Earring',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Scout\'s Socks',
        Hands = 'Deadeye Gloves',
        Head = 'Optical Hat',
        Legs = 'Dusk Trousers',
        Main = 'Fransisca',
        Neck = 'Peacock Amulet',
        Range = 'Failnaught',
        Ring1 = 'Behemoth Ring',
        Ring2 = 'Behemoth Ring',
        Waist = 'Precise Belt',
    },
    ['WS'] = {
        Ammo = 'Kabura Arrow',
        Back = 'Amemet Mantle +1',
        Body = { Name = 'Kirin\'s Osode', Augment = { [1] = 'Accuracy+4', [2] = '"Dbl.Atk."+3', [3] = 'Evasion+4' } },
        Ear1 = 'Suppanomimi',
        Ear2 = 'Aesir Ear Pendant',
        Feet = 'Scout\'s Socks',
        Hands = 'Scout\'s Bracers',
        Head = 'Maat\'s Cap',
        Legs = 'War Brais',
        Main = 'Fransisca',
        Neck = 'Fotia Gorget',
        Range = 'Failnaught',
        Ring1 = 'Breeze Ring',
        Ring2 = 'Breeze Ring',
        Waist = 'Precise Belt',
    },
};
profile.Sets = sets;

-- Sleep for lockstyleset
local clock = os.clock;
function Sleep(n)
    local t0 = clock();
    while clock() - t0 <= n do
    end
    ;
end

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo RNG loading!');
    Sleep(1);
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 6 echo');end

profile.OnUnload = function()
end

profile.HandleCommand = function(args)
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();

    if (player.Status == 'Engaged') then
        if (Settings.Accuracy == true) then
            gFunc.EquipSet(sets.TP);
        end
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
    gFunc.EquipSet(sets.WS);
end

return profile;