local Camera = workspace.CurrentCamera
local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

function MoveMouseToObj(obj)
   local ObjVector = Camera:WorldToScreenPoint(obj.Position)
   mousemoverel(ObjVector.X - Mouse.X, ObjVector.Y - Mouse.Y)
end
