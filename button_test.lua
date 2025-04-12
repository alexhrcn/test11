local event = require("event")
local component = require("component")
local term = require("term")
local gpu = component.gpu

gpu.setResolution(40, 10) -- уменьшенное тестовое окно
term.clear()

-- Рисуем две кнопки
gpu.setBackground(0x444444)
gpu.setForeground(0xFFFFFF)
gpu.fill(5, 3, 10, 3, " ") -- кнопка "Привет"
gpu.set(7, 4, "Привет")

gpu.fill(25, 3, 10, 3, " ") -- кнопка "Пока"
gpu.set(28, 4, "Пока")

-- Обработка кликов
while true do
  local _, _, x, y = event.pull("touch")

  if x >= 5 and x <= 14 and y >= 3 and y <= 5 then
    term.setCursor(1, 8)
    term.clearLine()
    print("👋 Привет, игрок!")
  elseif x >= 25 and x <= 34 and y >= 3 and y <= 5 then
    term.setCursor(1, 8)
    term.clearLine()
    print("👋 Пока, игрок!")
  end
end
