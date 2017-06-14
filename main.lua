function love.load()
  Object = require "libs/classic"
  require "objects/soundManager"
  soundManager = SoundManager()
end
function love.draw()

end
function love.update()
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end
  if key == "up" then
    soundManager:play(1)
  end
  if key == "right" then
    soundManager:play(2)
  end
  if key == "down" then
    soundManager:play(3)
  end
  if key == "left" then
    soundManager:play(4)
  end

end
