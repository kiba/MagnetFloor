


function findDirectiveEntities(surface,position)
  local entities = {"accelerator_charger","up","right","down","left"}
  for _, name in ipairs(entities) do
    local target = surface.find_entity(name,position)
    if target ~= nil then
      return target
    end
  end
  return nil
end

function matchTile(name)
  old_tiles = {"accelerator","up","right","down"}
  for _, t in ipairs(old_tiles) do
    if t == name then
      return true
    end
  end
end



--https://forums.factorio.com/viewtopic.php?p=195459#p195459
for _, surface in pairs(game.surfaces) do
    for chunk in surface.get_chunks() do
        for x = 0, 31 do
            for y = 0, 31 do
                local pos = {chunk.x * 32 + x, chunk.y * 32 + y}
                if surface.get_tile(pos[1], pos[2]).name == "dirt" then
                    surface.create_entity{name="inserter", position=pos} --might also want to specify a force here
                end
            end
        end
    end
end
