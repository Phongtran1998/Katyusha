
planes = {}

planes.load = function(arg)
	planes = love.graphics.newImage('plane.png')
	--player = {x = 260, y = 350, img = planes, movementSpeed = 6, spriteName = "player"}
	--table.insert(planes, player)
end

planes.loadEnemies = function(arg)
	--[[for i = 1, 2 do 
		newEnemy = {x = 300, y = 100, img = playerImg, movementSpeed = 6, spriteName = "enemy"}
		table.insert(planes, newEnemy)
	end]]--
end

planes.draw = function(dt)
	--for i, enemy in ipairs(planes) do
			love.graphics.draw(planes, 20, 20, 0, 0.5, 0.5)
	--end
end


planes.control = function(dt)
	
end

planes.draw = function(dt)

end

return planes