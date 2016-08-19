function getTile(index)
  return game.players[index].surface.get_tile(game.players[index].position.x,game.players[index].position.y)
end

function getEntity(index)
  position = {game.players[index].position.x, game.players[index].position.y}
  return game.players[index].surface.find_entity("up",position)
end

function tileCheck(index)
  local tile = getTile(index)
  local walk = game.players[index].walking_state.walking
  local entity = getEntity(index)
  if entity ~= nil then
    if entity.name == "up" then
      game.players[index].walking_state = {walking = walk, direction = defines.direction.north}
    elseif entity.name == "down" then
      game.players[index].walking_state = {walking = walk, direction = defines.direction.south}
    elseif entity.name == "left" then
      game.players[index].walking_state = {walking = walk, direction = defines.direction.west}
    elseif entity.name == "right" then
      game.players[index].walking_state = {walking = walk, direction = defines.direction.east}
    end
  end
  if tile.name == "accelerator" then
    charge_hoverboard(index,tile)
  elseif inboundTile(tile.name) == false then
    global.hoverboard[index].charge = 0
  end
end
