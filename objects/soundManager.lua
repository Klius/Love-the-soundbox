SoundManager = Object:extend();

function SoundManager:new()
    self.currentBank = 1 
    self.soundBanks = {
                        { 
                          "Oriel",
                          love.audio.newSource("audio/guardian.wav","static"),
                          love.audio.newSource("audio/foghorn.wav","static"),
                          love.audio.newSource("audio/exterminar.wav","static"),
                          love.audio.newSource("audio/guardian.wav","static")
                        }
                      }
end
--This is where it moves and is checked!
function SoundManager:update(dt)

end

function SoundManager:play(sound)
  if self.soundBanks[self.currentBank][sound].isPlaying then
      self.soundBanks[self.currentBank][sound]:rewind()
    end
    love.audio.play(self.soundBanks[self.currentBank][sound])
end