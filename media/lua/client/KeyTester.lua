---
-- Shows a modal window that informs the player about something and only has
-- an okay button to be closed.
--
-- @param txt - The text to display on the modal.
-- @param centered - If set to true the modal will be centered (optional).
-- @param w - The width of the window (optional).
-- @param h - The height of the window (optional).
-- @param x - The x position of the modal (optional).
-- @param y - The y position of the modal (optional).
--
local function showOkModal(txt, centered, w, h, x, y)
    local x, y = x or 0, y or 0;
    local w, h = w or 230, h or 120;
    local core = getCore();

    -- center the modal if necessary
    if centered then
        x = core:getScreenWidth() * 0.5 - w * 0.5;
        y = core:getScreenHeight() * 0.5 - h * 0.5;
    end

    local modal = ISModalDialog:new(x, y, w, h, txt);
    modal.backgroundColor = { r = 0.0, g = 0.0, b = 0.0, a = 0.5 };
    modal:initialise();
    modal:addToUIManager();
end

---
-- Tests our custom keys.
--
local function testCustomKey(key)
    if key == getCore():getKey('TOGGLE_STUFF') then
        showOkModal(getText('UI_optionscreen_binding_TOGGLE_STUFF'));
    elseif key == getCore():getKey('TOGGLE_OTHER') then
        showOkModal(getText('UI_optionscreen_binding_TOGGLE_OTHER'));
    end
end

Events.OnKeyPressed.Add(testCustomKey)
