function WTS(obj)
   local objVector = Camera:WorldToScreenPoint(obj.Position)
   return Vector2.new(objVector.X, objVector.Y)
end

function getClosestPlayerFromMouse()
   local ClosestPlayer = nil
   local ClosestDistance = math.huge

   for i,  v in next, Players:GetPlayers() do
      if v ~= LocalPlayer and v.TeamColor ~= LocalPlayer.TeamColor then
         if v.Character and v.Character:FindFirstChild("Head") then
            local magnitude = (WTS(v.Character.Head) - Vector2.new(Mouse.X, Mouse.Y)).magnitude
            if magnitude < ClosestDistance then
               ClosestPlayer = v
               ClosestDistance = magnitude
            end
         end
      end
   end

   return ClosestPlayer
end
