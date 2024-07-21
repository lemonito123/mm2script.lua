-- Create a highlight object
local highlight = Instance.new("Highlight")

-- Create a text label object
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 100, 0, 20) -- adjust the size as needed
textLabel.Font = Enum.Font.SourceSans
textLabel.FontSize = Enum.FontSize.Size14
textLabel.TextColor3 = Color3.new(1, 1, 1) -- white text
textLabel.TextStrokeColor3 = Color3.new(0, 0, 0) -- black outline
textLabel.TextStrokeTransparency = 0.5
textLabel.TextXAlignment = Enum.TextXAlignment.Center

-- Set the highlight color for each team
local teamColors = {
    ["Inoccent"] = Color3.new(1, 0, 0), -- Red team
        ["Sherif"] = Color3.new(0, 0, 1), -- Blue team
            ["Murder"] = Color3.new(0, 1, 0), -- Green team
                }

                -- Loop through all players
                for _, player in pairs(game.Players:GetPlayers()) do
                    -- Get the character model
                        local character = player.Character
                            if character then
                                    -- Check the player's team
                                            local team = player.Team
                                                    if team then
                                                                -- Get the team color
                                                                            local teamColor = teamColors[team.Name]
                                                                                        if teamColor then
                                                                                                        -- Add the highlight to the character
                                                                                                                        highlight.Parent = character
                                                                                                                                        highlight.Color = teamColor

                                                                                                                                                        -- Add the text label to the character's head
                                                                                                                                                                        local head = character:FindFirstChild("Head")
                                                                                                                                                                                        if head then
                                                                                                                                                                                                            textLabel.Parent = head
                                                                                                                                                                                                                                textLabel.Text = player.Name
                                                                                                                                                                                                                                                end
                                                                                                                                                                                                                                                            end
                                                                                                                                                                                                                                                                    end
                                                                                                                                                                                                                                                                        end
                                                                                                                                                                                                                                                                        end