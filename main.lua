function love.load()
  Object = require "libs/classic"
  require "objects/soundManager"
  soundManager = SoundManager("up", "down", "right", "left", "space")
end
function love.draw()

end
function love.update()
end

function love.keypressed(key)
  if key == "escape" then
    love.event.quit()
  end
  if key == soundManager.spacekey then
    if soundManager.sound.isPlaying then
      soundManager.sound:rewind()
    end
    love.audio.play(soundManager.sound)
  end
end
