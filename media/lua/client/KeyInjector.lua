require('keyBinding.lua');

-- The custom section which will be used as a separator in the options.
local CUSTOM_SECTION = 'RMTESTMOD';

-- The keys we want to register at the beginning of the game.
local CUSTOM_KEYS = {
    { value = 'TOGGLE_STUFF', key = 24 },
    { value = 'TOGGLE_OTHER', key = 25 },
}

---
-- Sets a custom section name and injects the custom keys into
-- the keyBinding table.
--
-- @param sectionName - The identifier of the section name in the translation file.
-- @param keys - A sequence holding all the custom keys we want to inject.
--
local function injectKeys(sectionName, keys)
    keyBinding[#keyBinding + 1] = { value = string.format('[%s]', sectionName) };
    for i = 1, #keys do
        keyBinding[#keyBinding + 1] = keys[i];
    end
end

---
-- Starts the injection script.
--
local function initKeyInjector()
    injectKeys(CUSTOM_SECTION, CUSTOM_KEYS);
end

Events.OnGameBoot.Add(initKeyInjector);
