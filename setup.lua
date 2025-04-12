local shell = require("shell")

local repo = "https://raw.githubusercontent.com/alexhrcn/test11/main"
local files = {
  "bg_colors.lua",
  "renderer.lua",
  "interface.lua"
}

for _, file in ipairs(files) do
  print("Загрузка:", file)
  shell.execute(string.format("wget -f %s/%s %s", repo, file, file))
end

print("Запуск интерфейса...")
shell.execute("interface.lua")
