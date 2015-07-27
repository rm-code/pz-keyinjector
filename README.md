# Project Zomboid Key Injector

An example of how to add custom keybindings to [Project Zomboid](http://projectzomboid.com/).

![poster](https://raw.githubusercontent.com/rm-code/pz-keyinjector/develop/poster.png)

## Usage Instructions

To add custom keys for your own mod you will need to modify the constants _CUSTOM_SECTION_ and _CUSTOM_KEYS_ in [_KeyInjector.lua_](https://raw.githubusercontent.com/rm-code/pz-keyinjector/develop/media/lua/client/KeyInjector.lua):

```
-- The custom section which will be used as a separator in the options.
local CUSTOM_SECTION = 'RMTESTMOD';

-- The keys we want to register at the beginning of the game.
local CUSTOM_KEYS = {
    { value = 'TOGGLE_STUFF', key = 24 },
    { value = 'TOGGLE_OTHER', key = 25 },
    -- Add more keys here
}

```

These need to correspond with the entries in your translation files:

```
UI_DE = {
    UI_optionscreen_binding_RMTESTMOD = "Custom Mod",
    UI_optionscreen_binding_TOGGLE_STUFF = "Toggle some functionality",
    UI_optionscreen_binding_TOGGLE_OTHER = "Toggle other functionality",
};

```

To avoid conflicts with other mods you should try to choose unique identifiers for your translation files / strings.

If you need a "real-world" example, check out the [Better Shouts](https://github.com/rm-code/Better-Shouts) mod, which adds a custom key code for shouting.
