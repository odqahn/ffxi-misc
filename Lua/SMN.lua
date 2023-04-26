local profile = {};
local sets = {
    ['Normal'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Staff Strap',
        Ammo = 'Hedgehog Bomb',
        Neck = 'Smn. Torque',
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Austere Robe',
        -- Body = 'Yinyang Robe',
        Hands = 'Summoner\'s Brcr.',
        Head = 'Summoner\'s Horn',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Evoker\'s Ring',
        Back = 'Errant Cape',
        Waist = 'Jungle Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Summoner\'s Pgch.',
    },
    ['Resting'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Staff Strap',
        Ammo = 'Hedgehog Bomb',
        Neck = 'Smn. Torque',
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Vermillion Cloake',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Evoker\'s Ring',
        Back = 'Errant Cape',
        Waist = 'Jungle Rope',
        Legs = 'Summoner\'s Spats',
        Feet = 'Summoner\'s Pgch.',
    },
    ['Mog'] = {
        Main = 'Chatoyant Staff',
        Sub = 'Staff Strap',
        Ammo = 'Hedgehog Bomb',
        Neck = 'Smn. Torque',
        Ear1 = 'Star Earring',
        Ear2 = 'Loquac. Earring',
        Body = 'Kupo Suit',
        Hands = 'Summoner\'s Brcr.',
        Ring1 = 'Tamas Ring',
        Ring2 = 'Evoker\'s Ring',
        Back = 'Errant Cape',
        Waist = 'Jungle Rope',
        Feet = 'Summoner\'s Pgch.',
    },
};
profile.Sets = sets;

local Settings = {
    Mog = false,
};

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
    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 8');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/echo SMN loading!');
    Sleep(1);
    AshitaCore:GetChatManager():QueueCommand(1, '/lockstyleset 5 echo');
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
    if (args[1] == 'siphon') then
        local game = gData.GetEnvironment();
        local spirit = "unknown";
        if (game.Weather == "Fire x2") then
            spirit = "Fire Spirit";
        elseif (game.Weather == "Water x2") then
            spirit = "Water Spirit";
        elseif (game.Weather == "Earth x2") then
            spirit = "Earth Spirit";
        elseif (game.Weather == "Wind x2") then
            spirit = "Wind Spirit";
        elseif (game.Weather == "Ice x2") then
            spirit = "Ice Spirit";
        elseif (game.Weather == "Thunder x2") then
            spirit = "Thunder Spirit";
        elseif (game.Weather == "Light x2") then
            spirit = "Light Spirit";
        elseif (game.Weather == "Dark x2") then
            spirit = "Dark Spirit";
        elseif (game.DayElement == "Fire") then
            spirit = "Fire Spirit";
        elseif (game.DayElement == "Water") then
            spirit = "Water Spirit";
        elseif (game.DayElement == "Earth") then
            spirit = "Earth Spirit";
        elseif (game.DayElement == "Wind") then
            spirit = "Wind Spirit";
        elseif (game.DayElement == "Ice") then
            spirit = "Ice Spirit";
        elseif (game.DayElement == "Thunder") then
            spirit = "Thunder Spirit";
        elseif (game.DayElement == "Light") then
            spirit = "Light Spirit";
        elseif (game.DayElement == "Dark") then
            spirit = "Dark Spirit";
        end
        if (spirit ~= "unknown") then
            AshitaCore:GetChatManager():QueueCommand(1, '/ma "' .. spirit .. '" <me>');
        end
    end
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Normal);
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    else
        if (Settings.Mog == true) then
            gFunc.EquipSet(sets.Mog);
        else
            gFunc.EquipSet(sets.Normal);
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
end

return profile;
