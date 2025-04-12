local colors = require("bg_colors")
local renderer = require("renderer")

local gpu = require("component").gpu
gpu.setResolution(160, 50)

renderer.drawBackground(colors)

gpu.setForeground(0xFFFFFF)
gpu.set(55, 48, "Фон интерфейса загружен")
