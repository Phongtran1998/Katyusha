
function love.load()
	love.graphics.setBackgroundColor(54, 172, 248)
	map = {
		{ 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
		{ 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
		{ 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
		{ 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
		{ 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1 },
		{ 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
		{ 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1 },
		{ 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
		{ 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
		{ 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1 },
		{ 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
		{ 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
		{ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }
	}
	plane = love.graphics.newImage("plane.png")
	x = 375
	y = 360
	speed = 55
end

function love.update(dt)

	if love.keyboard.isDown("k") then
		love.event.quit(0)
	end
	if love.keyboard.isDown("up") or love.keyboard.isDown("w") then
			y = y - (speed * dt)
	end
	if love.keyboard.isDown("down") or love.keyboard.isDown("s") then
			y = y + (speed * dt)
	end
	if love.keyboard.isDown("left") or love.keyboard.isDown("a") then
			x = x - (speed * dt)
	end	
	if love.keyboard.isDown("down") or love.keyboard.isDown("d") then
			x = x + (speed * dt)
	end
end

function love.draw()
	for y=1, #map do
		for x=1, #map[y] do
			if map[y][x] == 1 then
				love.graphics.rectangle("line", x * 32, y * 32, 32, 32)
				love.graphics.setBackgroundColor(0,255,0,100)
			end
		end
	end

	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(plane, x, y, 0.0, 0.6, 0.6)
	love.graphics.setColor(128, 128, 128)
end

function testMap(x, y)
	if map[(x / 32) + y][(x / 32) + x] == 1 then
		return false
	end
	return true
end
