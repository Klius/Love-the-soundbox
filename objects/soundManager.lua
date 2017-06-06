SoundManager = Object:extend();

function SoundManager:new(upkey, downkey, rightkey, leftkey, spacekey)
    self.upkey = upkey
    self.downkey = downkey
    self.rightkey = rightkey
    self.leftkey = leftkey
    self.spacekey = spacekey
    self.sound = love.audio.newSource("audio/guardian.wav","static")
end
--This is where it moves and is checked!
function SoundManager:update(dt)

end