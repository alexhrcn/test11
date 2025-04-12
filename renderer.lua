local gpu = require("component").gpu

local function drawBackground(colors)
  for y = 1, #colors do
    for x = 1, #colors[y] do
      local color = tonumber(colors[y][x])
      if color then
        gpu.setBackground(color)
        gpu.set(x, y, " ")
      end
    end
  end
end

return {
  drawBackground = drawBackground
}
