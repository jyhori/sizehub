-- sizehub

local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "Size Hub V1",
   LoadingTitle = "Загрузка системы...",
   LoadingSubtitle = "от хакеров для хакеров",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "SizeHubData",
      FileName = "Config"
   },
   KeySystem = false
})

-- Вкладка Настроек (где можно менять размер/вид)
local MainTab = Window:CreateTab("Главная", 4483362458)

-- Кнопка для "Взлома системы" (Бан)
MainTab:CreateButton({
   Name = "Взломать систему",
   Callback = function()
       -- Самый реалистичный текст бана
       game.Players.LocalPlayer:Kick("\n\nYou have been permanently banned from this experience.\n\nReason: System integrity breach detected. (Error Code: 267)")
   end,
})

-- Настройка размера меню (через ползунок масштабирования)
MainTab:CreateSlider({
   Name = "Размер интерфейса",
   Range = {0.5, 1.5},
   Increment = 0.1,
   Suffix = "x",
   CurrentValue = 1,
   Flag = "SizeSlider",
   Callback = function(Value)
       -- Изменяет масштаб UI в настройках Rayfield
       game:GetService("CoreGui").RayfieldGui.Main.UIScale.Scale = Value
   end,
})

Rayfield:Notify({
   Title = "Готово!",
   Content = "Size Hub V1 успешно запущен",
   Duration = 5,
   Image = 4483362458,
})
