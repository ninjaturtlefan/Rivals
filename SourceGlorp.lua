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
            Default = 3,
            Min = 2,
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
        local e_boxStyleDropdown = enemiesSection:AddDropdown("EnemyBoxStyle",
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
            Title = "Text Size (px)",
            Default = 9,
            Min = 1,
            Max = 33,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the aimbot DONE IN px
            end
        })
        ----// Local Section
        local localSection = tabs.visuals:AddSection("Local")
        --// Fov Changer Toggle
        local fovChangerToggle = localSection:AddToggle("FovChanger",
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
        local desiredFovSlider = localSection:AddSlider("DesiredFov",
        {
            Title = "Desired FOV (°)",
            Default = 0,
            Min = -100,
            Max = 300,
            Rounding = 1,
            Callback = function(Value)

            end
        })
        --// Third Person Toggle
        local thirdPersonToggle = localSection:AddToggle("ThirdPerson",
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
        local camDistanceSlider = localSection:AddSlider("CamDistance",
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
        local thirdPersonKeybind = localSection:AddKeybind("ThirdPersonHotkey",
        {
            Title = "Third Person Hotkey",
            Mode = "Toggle",
            Default = "B",

            Callback = function(Value)
                -- eee
            end
        })
        --//  No Smoke Toggle
        local noSmokeToggle = localSection:AddToggle("NoSmoke",
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
        local noFlashToggle = localSection:AddToggle("NoFlash",
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
        local noHudToggle = localSection:AddToggle("NoHud",
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
        local noModelToggle = localSection:AddToggle("NoModel",
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
        local noSkyToggle = localSection:AddToggle("NoSky",
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
        local hideLightToggle = localSection:AddToggle("HideLight",
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
        local changeSkyboxColourToggle = localSection:AddToggle("ChangeSkyboxColour",
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
        local skyboxAlphaSlider = localSection:AddSlider("SkyboxAlpha",
        {
            Title = "Skybox Alpha",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)

            end
        })
        ----// Hit Effects Section
        local hitEffectsSection = tabs.visuals:AddSection("Hit Effects")
        --// Hit Sounds Toggle
        local hitSoundsToggle = hitEffectsSection:AddToggle("HitSounds",
        {
            Title = "Hit Sounds",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Bullet Tracers Colourpicker
        local bulletTracersColourpicker = hitEffectsSection:AddColorpicker("BulletTracerColour",
        {
            Title = "Bullet Tracers",
            Transparency = 0,
            Default = Color3.fromRGB(0, 0, 0)
        })
        --// No Hitmarker Toggle
        local noHitmarkerToggle = hitEffectsSection:AddToggle("HitMarker",
        {
            Title = "Hit Marker",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Tracer Thickness Slider
        local tracerThicknessSlider = hitEffectsSection:AddSlider("TracerThickness",
        {
            Title = "Tracer Thickness",
            Default = 2,
            Min = 1,
            Max = 5,
            Rounding = 1,
            Callback = function(Value)

            end
        })
        --// Volume Slider
        local hitVolumeSlider = hitEffectsSection:AddSlider("HitVolume",
        {
            Title = "Hit Volume",
            Default = 0.4,
            Min = 0,
            Max = 2,
            Rounding = 1,
            Callback = function(Value)

            end
        })

        --[[
 





        

        HIT SOUND DROPDOWN








        ]]

        ----// World Section
        local worldSection = tabs.visuals:AddSection("World")
        --// Chage World Colour Toggle
        local changeWorldColourToggle = worldSection:AddToggle("WorldColour",
        {
            Title = "Change World Colour",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Rainbow World Colour Toggle
        local changeWorldColourToggle = worldSection:AddToggle("RainbowWorldColour",
        {
            Title = "Rainbow World Colour",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Colour Intensity Slider
        local colourIntensitySlider = worldSection:AddSlider("ColourIntensity",
        {
            Title = "Colour Intensity",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the silent aim DONE IN %
            end
        })
        --// Skybox Intensity Slider
        local skyboxIntensitySlider = worldSection:AddSlider("SkyboxIntensity",
        {
            Title = "Skybox Intensity",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the silent aim DONE IN %
            end
        })
        ------// AIMBOT
        ----// Ragebot Section
        local ragebotSection = tabs.aimbot:AddSection("Ragebot")
        --// Enable Ragebot Toggle
        local enableRagebotToggle = ragebotSection:AddToggle("EnableRagebot",
        {
            Title = "Enable Ragebot",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Rage Type Dropdown
        local rageMethodDropdown = ragebotSection:AddDropdown("RageMethod",
        {
            Title = "Rage Method",
            Values = {"Player Detection","Backstab (checks for knife)"},
            Multi = false,
            Default = 1,
        })
        --// Ragebot Weapon Dropdown
        local ragebotWeaponDropdown = ragebotSection:AddDropdown("RagebotWeapon",
        {
            Title = "Ragebot Weapon",
            Values = {"Primary", "Secondary"},
            Multi = false,
            Default = 1,
        })
        --// Manipulation Toggle
        local manipulationToggle = ragebotSection:AddToggle("Manipulation",
        {
            Title = "Manipulation",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Projectile Teleport Toggle
        local projectileTeleportToggle = ragebotSection:AddToggle("ProjectileTeleport",
        {
            Title = "Project Teleport",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Triggerbot Toggle
        local triggerbotToggle = ragebotSection:AddToggle("Triggerbot",
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
        --// Swap Weapon On Reload Toggle
        local swapWeaponOnReloadToggle = ragebotSection:AddToggle("SwapWeaponOnReload",
        {
            Title = "Swap Weapon On Reload",
            Default = false,
            Callback = function(state)
                if state then
                -- triggerbot on
                else
                -- triggerbot off
                end
            end
        })
        --// Rainbow Coloured Tracer Toggle
        local rainbowColouredTracerToggle = ragebotSection:AddToggle("RainbowColouredTracer",
        {
            Title = "Rainbow Coloured Tracer",
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
        local triggerbotDelaySlider = ragebotSection:AddSlider("TriggerbotDelay",
        {
            Title = "Triggerbot Delay (ms)",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the silent aim DONE IN %
            end
        })
        ----// Legitbot Section
        local legitbotSection = tabs.aimbot:AddSection("Legitbot (Silent)")
        --// Emable Legitbot Toggle
        local enableLegitbotToggle = legitbotSection:AddToggle("EnableLegitbot",
        {
            Title = "Enable",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Visualize FOV Toggle
        local visualizeFovToggle = legitbotSection:AddToggle("VisualizeFov",
        {
            Title = "Visualize FOV",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// FOV Colourpicker
        local fovColourpicker = legitbotSection:AddColorpicker("FovColourpicker",
        {
            Title = "FOV Colourpicker",
            Transparency = 0,
            Default = Color3.fromRGB(0, 200, 100)
        })
        --// Closest Position Toggle
        local closestPositionToggle = legitbotSection:AddToggle("ClosestPosition",
        {
            Title = "Closest Position",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Visible Check Toggle
        local visibleCheckToggle = legitbotSection:AddToggle("VisibleCheck",
        {
            Title = "Visible Check",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Team Check Toggle
        local teamCheckToggle = legitbotSection:AddToggle("TeamCheck",
        {
            Title = "Team Check",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Legitbot Hit Chance Slider
        local legitbotHitChanceSlider = legitbotSection:AddSlider("LegitbotHitChance",
        {
            Title = "Legitbot Hit Chance (%)",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the silent aim DONE IN %
            end
        })
        --// Legitbot Aim Radius Slider
        local legitbotAimRadiusSlider = legitbotSection:AddSlider("LegitbotAimRadius",
        {
            Title = "Legitbot Aim Radius (px)",
            Default = 0,
            Min = 0,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)
                -- interact with the silent aim DONE IN %
            end
        })
        --// Closest Position Whitelist Multidropdown
        local closestPosWhitelistDropdown = legitbotSection:AddDropdown("CloestPosWhitelist",
        {
            Title = "Closest Position Whitelist",
            Values = {"Head","UpperTorso","LowerTorso","LeftFoot","LeftLowerLeg","LeftUpperLeg","RightFoot","RightLowerLeg","RightUpperLeg","LeftHand","LeftLowerArm","LeftUpperArm","RightHand","RightHand","RightLowerArm","RightUpperArm","HumanoidRootPart"},
            Multi = true,
            Default = {"Head","UpperTorso","LowerTorso","LeftFoot","LeftLowerLeg","LeftUpperLeg","RightFoot","RightLowerLeg","RightUpperLeg","LeftHand","LeftLowerArm","LeftUpperArm","RightHand","RightHand","RightLowerArm","RightUpperArm","HumanoidRootPart"},
        })
        --//  Target Part Dropdown
        local targetPartDropdown = legitbotSection:AddDropdown("TargetPart",
        {
            Title = "Target Part",
            Values = {"Head","UpperTorso","LowerTorso","LeftFoot","LeftLowerLeg","LeftUpperLeg","RightFoot","RightLowerLeg","RightUpperLeg","LeftHand","LeftLowerArm","LeftUpperArm","RightHand","RightHand","RightLowerArm","RightUpperArm","HumanoidRootPart"},
            Multi = false,
            Default = 1,
        })
        
        ----// Misc Section
        local miscSection = tabs.exploits:AddSection("Misc")
        --// Fly Toggle
        local flyToggle = miscSection:AddToggle("Fly",
        {
            Title = "Fly",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Fly Speed Slider
        local flySpeedSlider = miscSection:AddSlider("FlySpeed",
        {
            Title = "Fly Speed",
            Default = 16,
            Min = 1,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)

            end
        })
        --// Noclip Toggle
        local noclipToggle = miscSection:AddToggle("Noclip",
        {
            Title = "Noclip",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Noclip Keybind
        local noclipKeybind = miscSection:AddKeybind("NoclipKeybind",
        {
            Title = "Noclip Keybind",
            Mode = "Toggle",
            Default = "Z",

            Callback = function(Value)
                -- Put aimbot logic here
            end
        })
        ----// Movement Section
        local movementSection = tabs.exploits:AddSection("Movement")
        --//  slideMultiplerToggle
        local slideMultiplerToggle = movementSection:AddToggle("SlideMultipler",
        {
            Title = "Slide Multipler",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Fly Speed Slider
        local flySpeedSlider = movementSection:AddSlider("FlySpeed",
        {
            Title = "Fly Speed",
            Default = 0,
            Min = 1,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)

            end
        })
        --//  Run and Shoot Toggle
        local runAndShootToggle = movementSection:AddToggle("RunAndShoot",
        {
            Title = "Run and Shoot",
            Default = false,
            Callback = function(state)
                if state then
                   -- silent aim on in loop
                else
                   -- silent aim off in loop
                end
            end
        })
        --// Fly Speed Slider
        local flySpeedSlider = movementSection:AddSlider("FlySpeed",
        {
            Title = "Fly Speed",
            Default = 16,
            Min = 1,
            Max = 100,
            Rounding = 1,
            Callback = function(Value)

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
            Duration = 15
        })
        ----// Update Announcement
        hubWindow:Dialog({
            Title = "📢 Glorp Dev Build | Rivals "..rivals.v.." 📢",
            Content = "Visuals Window + v1.0.0 Content | Aimbot Window + v1.0.0 Content | Exploits Window + v1.0.0 Content | Colours Window & v1.0.0 Content | Settings Window + v1.0.0 Content",
            Buttons = {
                { 
                    Title = "Cheer the devs!",
                    Callback = function()

                    end 
                }
            }
        })
    end
end
