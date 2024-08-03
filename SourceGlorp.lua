-- // Glorp | Latest Version: v1.0.0
getgenv().SecureMode = false -- change if required
if not game:IsLoaded() then 
    game.Loaded:Wait()
end

-- // Games
local rivals = {["gameId"]=17625359962,["v"]="v1.0.0"}

--// Rivals Script
if game.PlaceId == rivals.gameId then
    print("Loading Glorp | Rivals "..rivals.v)
    local lib = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local saveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
    local interfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

    local hubWindow = lib:CreateWindow({
        Title = "Glorp",
        SubTitle = "Rivals "..rivals.v,
        TabWidth = 120,
        Size = UDim2.fromOffset(500,700),
        Acrylic = true, -- Could be detectable
        Theme = "Light",
        MinimizeKey = Enum.KeyCode.Up
    })

    local tabs = {
        visuals = hubWindow:AddTab({ Title = "Visuals", Icon = "person-standing" }),
        aimbot = hubWindow:AddTab({ Title = "Aimbot", Icon = "target" }),
        exploits = hubWindow:AddTab({ Title = "Exploits", Icon = "bug" }),
        miscs = hubWindow:AddTab({ Title = "Miscs", Icon = "blocks" }),
        colours = hubWindow:AddTab({ Title = "Colours", Icon = "palette" }),
        settings = hubWindow:AddTab({ Title = "Settings", Icon = "settings" }),
    }

    local options = lib.Options

    do

        ------// Visuals Tab
        ----// Enemies Section
        local enemiesSection = tabs.visuals:AddSection("Enemies")
        --// Enable Toggle
        local e_enableToggle = enemiesSection:AddToggle("EnableEnemyESP",
        {
            Title = "Enable",
            Default = false,
            Callback = function(state)
                if state then
                   -- esp on
                else
                   -- esp off
                end
            end
        })
        --// Skeleton Toggle
        local e_skeletonToggle = enemiesSection:AddToggle("EnableEnemySkeleton",
        {
            Title = "Skeleton",
            Default = false,
            Callback = function(state)
                if state then
                   -- skeleton on
                else
                   -- skeleton off
                end
            end
        })
        --// Skeleton Thickness Slider
        local e_skeletonThicknessSlider = enemiesSection:AddSlider("EnemySkeletonThickness",
        {
            Title = "Skeleton Thickness (px)",
            Default = 2,
            Min = 0,
            Max = 5,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the aimbot DONE IN px
            end
        })
        --// Rainbow Skeleton Toggle
        local e_rainbowSkeletonToggle = enemiesSection:AddToggle("EnemyRainbowSkeleton",
        {
            Title = "Rainbow Skeleton",
            Default = false,
            Callback = function(state)
                if state then
                   -- skeleton rainbow on
                else
                   -- skeleton rainbow off
                end
            end
        })
        --// Box ESP Toggle
        local e_boxEspToggle = enemiesSection:AddToggle("EnemyBoxESP",
        {
            Title = "Box ESP",
            Default = false,
            Callback = function(state)
                if state then
                   -- box esp on
                else
                   -- box esp off
                end
            end
        })
        --// Box Style Dropdown
        local e_boxStyleDropdown = combatSection:AddDropdown("EnemyBoxStyle",
        {
            Title = "Box Style",
            Values = {"2D Default", "2D Corner", "2D Bounding"},
            Multi = false,
            Default = 1,
        })
        --// Snaplines Toggle
        local e_snaplinesToggle = enemiesSection:AddToggle("EnemySnaplines",
        {
            Title = "Snaplines",
            Default = false,
            Callback = function(state)
                if state then
                   -- snaplines on
                else
                   -- snaplines off
                end
            end
        })
        --// Snapline Style Dropdown
        local e_snaplineStyleDropdown = enemiesSection:AddDropdown("EnemySnaplineStyle",
        {
            Title = "Snapline Style",
            Values = {"Top", "Center", "Bottom"},
            Multi = false,
            Default = 2,
        })
        --// Player Information Toggle
        local e_playerInformationToggle = enemiesSection:AddToggle("EnemyPlayerInformation",
        {
            Title = "Player Information",
            Default = false,
            Callback = function(state)
                if state then
                   -- snaplines on
                else
                   -- snaplines off
                end
            end
        })
        --// SOON TO BE ADDED: PLAYER RANK
        ----// Teammates Section
        local teammatesSection = tabs.visuals:AddSection("Teammates")
        --// Enable Toggle
        local t_enableToggle = teammatesSection:AddToggle("TeammatesEnableESP",
        {
            Title = "Enable",
            Default = false,
            Callback = function(state)
                if state then
                   -- esp on
                else
                   -- esp off
                end
            end
        })
        --// Skeleton Toggle
        local t_skeletonToggle = teammatesSection:AddToggle("TeammatesEnableSkeleton",
        {
            Title = "Skeleton",
            Default = false,
            Callback = function(state)
                if state then
                   -- skeleton on
                else
                   -- skeleton off
                end
            end
        })
        --// Skeleton Thickness Slider
        local t_skeletonThicknessSlider = teammatesSection:AddSlider("TeammatesSkeletonThickness",
        {
            Title = "Skeleton Thickness (px)",
            Default = 2,
            Min = 0,
            Max = 5,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the aimbot DONE IN px
            end
        })
        --// Rainbow Skeleton Toggle
        local t_rainbowSkeletonToggle = teammatesSection:AddToggle("TeammatesRainbowSkeleton",
        {
            Title = "Rainbow Skeleton",
            Default = false,
            Callback = function(state)
                if state then
                   -- skeleton rainbow on
                else
                   -- skeleton rainbow off
                end
            end
        })
        --// Box ESP Toggle
        local t_boxEspToggle = teammatesSection:AddToggle("TeammatesBoxESP",
        {
            Title = "Box ESP",
            Default = false,
            Callback = function(state)
                if state then
                   -- box esp on
                else
                   -- box esp off
                end
            end
        })
        --// Box Style Dropdown
        local t_boxStyleDropdown = teammatesSection:AddDropdown("TeammatesBoxStyle",
        {
            Title = "Box Style",
            Values = {"2D Default", "2D Corner", "2D Bounding"},
            Multi = false,
            Default = 1,
        })
        --// Snaplines Toggle
        local t_snaplinesToggle = teammatesSection:AddToggle("TeammatesSnaplines",
        {
            Title = "Snaplines",
            Default = false,
            Callback = function(state)
                if state then
                   -- snaplines on
                else
                   -- snaplines off
                end
            end
        })
        --// Snapline Style Dropdown
        local t_snaplineStyleDropdown = teammatesSection:AddDropdown("TeammatesSnaplineStyle",
        {
            Title = "Snapline Style",
            Values = {"Top", "Center", "Bottom"},
            Multi = false,
            Default = 2,
        })
        --// Player Information Toggle
        local t_playerInformationToggle = teammatesSection:AddToggle("TeammatesPlayerInformation",
        {
            Title = "Player Information",
            Default = false,
            Callback = function(state)
                if state then
                   -- snaplines on
                else
                   -- snaplines off
                end
            end
        })
        --// SOON TO BE ADDED: PLAYER RANK
        ----// Gadget Section
        local gadgetSection = tabs.visuals:AddSection("Gadget")
        --// Enable Toggle
        local g_enableToggle = gadgetSection:AddToggle("EnableGadgetESP",
        {
            Title = "Enable",
            Default = false,
            Callback = function(state)
                if state then
                   -- esp on
                else
                   -- esp off
                end
            end
        })
        --// Throwables Toggle
        local t_throwablesToggle = gadgetSection:AddToggle("ThrowablesESP",
        {
            Title = "Throwables",
            Default = false,
            Callback = function(state)
                if state then
                   -- skeleton on
                else
                   -- skeleton off
                end
            end
        })
        --// Misc Toggle
        local t_miscToggle = gadgetSection:AddToggle("MiscESP",
        {
            Title = "Misc",
            Default = false,
            Callback = function(state)
                if state then
                   -- skeleton on
                else
                   -- skeleton off
                end
            end
        })
        --// Gadget ESP Text Size Slider
        local t_textSizeSlider = gadgetSection:AddSlider("GadgetEspTextSize",
        {
            Title = "Text Size",
            Default = 9,
            Min = 1,
            Max = 33,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the aimbot DONE IN px
            end
        })
        ----// Local Section
        local localSection = tabs.combat:AddSection("Local")
        --// Fov Changer Toggle
        local fovChangerToggle = visualsSection:AddToggle("FovChanger",
        {
            Title = "Fov Changer",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Desired FOV Slider
        local desiredFovSlider = visualsSection:AddSlider("DesiredFov",
        {
            Title = "Fov Changer",
            Default = 0,
            Min = -200,
            Max = 200,
            Rounding = 1,
            Callback = function(Value)

            end
        })
        --// Third Person Toggle
        local thirdPersonToggle = visualsSection:AddToggle("ThirdPerson",
        {
            Title = "Third Person",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Cam Distance Slider
        local camDistanceSlider = visualsSection:AddSlider("CamDistance",
        {
            Title = "Cam Distance (m)",
            Default = 0,
            Min = -20,
            Max = 20,
            Rounding = 1,
            Callback = function(Value)

            end
        })
        --// Third Person Keybind
        local thirdPersonKeybind = combatSection:AddKeybind("ThirdPersonHotkey",
        {
            Title = "Third Person Hotkey",
            Mode = "Toggle",
            Default = "B",

            Callback = function(Value)
                -- eee
            end
        })
        --//  No Smoke Toggle
        local noSmokeToggle = visualsSection:AddToggle("NoSmoke",
        {
            Title = "No Smoke",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// No Flash Toggle
        local noFlashToggle = visualsSection:AddToggle("NoFlash",
        {
            Title = "No Flash",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// No Hud Toggle
        local noHudToggle = visualsSection:AddToggle("NoHud",
        {
            Title = "No Hud",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// No Model Toggle
        local noModelToggle = visualsSection:AddToggle("NoModel",
        {
            Title = "No Model",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// No Sky Toggle
        local noSkyToggle = visualsSection:AddToggle("NoSky",
        {
            Title = "No Sky",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Hide Light Toggle
        local hideLightToggle = visualsSection:AddToggle("HideLight",
        {
            Title = "Hide Light",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Change Skybox Colour Toggle
        local changeSkyboxColourToggle = visualsSection:AddToggle("ChangeSkyboxColour",
        {
            Title = "Change Skybox Colour",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Skybox Alpha Slider
        local skyboxAlphaSlider = visualsSection:AddSlider("SkyboxAlpha",
        {
            Title = "Skybox Alpha",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)

            end
        })
        ----// World Section
        local localSection = tabs.combat:AddSection("Local")
        --// Fov Changer Toggle
        local fovChangerToggle = visualsSection:AddToggle("FovChanger",
        {
            Title = "Fov Changer",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })

        ------// COMBAT TAB
        ----// Combat Section
        local combatSection = tabs.combat:AddSection("Combat")
        --// Silent Aim Toggle
        local silentAimToggle = combatSection:AddToggle("SilentAim",
        {
            Title = "Silent Aim",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Silent Hit Chance Slider
        local silentHitChanceSlider = combatSection:AddSlider("SilentHitChance",
        {
            Title = "Silent Hit Chance",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the silent aim DONE IN %
            end
        })
        --// Silent Aim Radius Slider
        local silentAimRadiusSlider = combatSection:AddSlider("SilentAimRadius",
        {
            Title = "Silent Aim Radius",
            Default = 0,
            Min = 0,
            Max = 1000,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the silent aim fov radius DONE IN PIXELS
            end
        })
        --// Visualize FOV Toggle
        local visualizeFovToggle = combatSection:AddToggle("VisualizeFOV",
        {
            Title = "Visualize FOV",
            Default = false,
            Callback = function(state)
                if state then
                    -- Visualize FOV on
                else
                    -- Visualize FOV off
                end
            end
        })
        --// FOV Colourpicker
        local fovColourpicker = combatSection:AddColorpicker("FOVColourPicker",
        {
            Title = "FOV Colourpicker",
            Transparency = 0,
            Default = Color3.fromRGB(0, 214, 39)
        })
        --[[fovColourpicker:OnChanged(function()
            print(
                "TColorpicker changed:", TColorpicker.Value,
                "Transparency:", TColorpicker.Transparency
            )
        end)]]
        --// Closest Position
        local closestPositionToggle = combatSection:AddToggle("ClosestPosition",
        {
            Title = "Closest Position",
            Default = false,
            Callback = function(state)
                if state then
                    -- Closest Position is on
                else
                    -- Closest Position is off
                end
            end
        })
        --// Aimbot Toggle
        local aimbotToggle = combatSection:AddToggle("Aimbot",
        {
            Title = "Aimbot",
            Default = false,
            Callback = function(state)
                if state then
                    -- aimbot on in loop
                else
                    -- aimbot off in loop
                end
            end
        })
        --// Aimbot Keybind
        local aimbotKeybind = combatSection:AddKeybind("AimbotKeybind",
        {
            Title = "Aimbot Keybind",
            Mode = "Hold",
            Default = "MB1",

            Callback = function(Value)
                -- Put aimbot logic here
            end
        })
        --// Aimbot Smoothing Slider
        local aimbotSmoothingSlider = combatSection:AddSlider("AimbotSmoothing",
        {
            Title = "Aimbot Smoothing",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the aimbot DONE IN %
            end
        })
        --// Visible Check Toggle
        local visibleCheckToggle = combatSection:AddToggle("VisibleCheck",
        {
            Title = "Visible Check",
            Default = false,
            Callback = function(state)
                if state then
                    -- visible Check on
                else
                    -- visible Check off
                end
            end
        })
        --// Manipulation Toggle
        local manipulationToggle = combatSection:AddToggle("Manipulation",
        {
            Title = "Manipulation",
            Default = false,
            Callback = function(state)
                if state then
                    -- manipulation on
                else
                    -- manipulation off
                end
            end
        })
        --// Triggerbot Toggle
        local triggerbotToggle = combatSection:AddToggle("Triggerbot",
        {
            Title = "Triggerbot",
            Default = false,
            Callback = function(state)
                if state then
                -- triggerbot on
                else
                -- triggerbot off
                end
            end
        })
        --// Triggerbot Delay Slider
        local triggerbotDelaySlider = combatSection:AddSlider("TriggerbotDelay",
        {
            Title = "Triggerbot Delay",
            Default = 0,
            Min = 0,
            Max = 3000,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the aimbot DONE IN MS
            end
        })
        --// Closest Position Whitelist Multidropdown
        local closestPosWhitelistDropdown = combatSection:AddDropdown("CloestPosWhitelist",
        {
            Title = "Closest Position Whitelist",
            Values = {"Insert","Body","Parts","Here"},
            Multi = true,
            Default = {"Insert","Body","Parts","Here"},
        })
        --// Target Part Dropdown
        local targetPartDropdown = combatSection:AddDropdown("TargetPart",
        {
            Title = "Target Part",
            Values = {"Insert","Body","Parts","Here"},
            Multi = false,
            Default = 1,
        })
        ----// Gun Mods Section
        local gunModsSection = tabs.combat:AddSection("Gun Mods")
        --// Recoil Adjustment Slider
        local recoilAdjustmentSlider = gunModsSection:AddSlider("RecoilAdjustment",
        {
            Title = "Recoil Adjustment",
            Default = 100,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the recoil DONE IN %
            end
        })
        --// Spread Adjustment Slider
        local spreadAdjustmentSlider = gunModsSection:AddSlider("SpreadAdjustment",
        {
            Title = "Spread Adjustment",
            Default = 100,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the spread DONE IN %
            end
        })
        --// Fire Rate Cooldown Slider
        local fireRateCooldownSlider = gunModsSection:AddSlider("FireRateCooldown",
        {
            Title = "Fire Rate Cooldown",
            Default = 100,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the fire rate DONE IN %
            end
        })


        ------// SETTINGS TAB

        ----// Library & Config Managers
        saveManager:SetLibrary(lib)
        interfaceManager:SetLibrary(lib)
        saveManager:IgnoreThemeSettings()
        saveManager:SetIgnoreIndexes({})
        interfaceManager:SetFolder("Glorp")
        saveManager:SetFolder("Glorp/rivals")
        interfaceManager:BuildInterfaceSection(tabs.settings)
        saveManager:BuildConfigSection(tabs.settings)
        hubWindow:SelectTab(1)
        saveManager:LoadAutoloadConfig()       

        ----// Loaded Notification
        lib:Notify({
            Title = "Glorp Notification",
            Content = "Loaded Glorp | Rivals "..rivals.v,
            Duration = 8
        })
    end
end
