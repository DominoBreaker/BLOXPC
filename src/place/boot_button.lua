--script at workspace.boot_button.Script

--Generate a part that will call a touched() event at BIOS

function callBIOS()
	local currentPos = script.Parent.Position
	currentPos = Vector3.new(currentPos.X - 2, currentPos.Y + 1, currentPos.Z)
	
	local caller = Instance.new("Part")
	caller.Position = currentPos
	caller.Size = Vector3.new(1, 1, 1)
	caller.Name = "Power On"
	caller.Parent = workspace
end

script.Parent.ClickDetector.MouseClick:Connect(callBIOS)
