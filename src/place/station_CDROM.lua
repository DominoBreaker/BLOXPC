--script at workspace.disk_station.CDROM.Script

flag = true

function main(part)
	if part.Name == "Handle" and flag then
		flag = false
		part.Parent = script.Parent
		part.Position = script.Parent.Position
		part.Anchored = true
	end
end

script.Parent.Touched:Connect(main)
