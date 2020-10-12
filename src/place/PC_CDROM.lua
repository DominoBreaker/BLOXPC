--script at workspace.CDROM.Script

flag = true

function main(part)
	if part.Name == "Handle" and flag then
		flag = false
		part.Parent = workspace.BIOS
		part.Position = script.Parent.Position
		part.Anchored = true
	end
end

script.Parent.Touched:Connect(main)
