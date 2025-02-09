local executor = "Unknown"

if identifyexecutor then
    executor = identifyexecutor()
elseif syn then
    executor = "Synapse X"
elseif KRNL_LOADED then
    executor = "KRNL"
elseif fluxus then
    executor = "Fluxus"
elseif xeno then
    executor = "Xeno"
elseif delta then
    executor = "Delta"
elseif cryptik then
    executor = "Cryptik"
elseif awp_gg then
    executor = "AWP.gg"
elseif swift then
    executor = "Swift"
elseif solara then
    executor = "Solara"
elseif wave then
    executor = "Wave"
elseif macsploit then
    executor = "Macsploit"
elseif codex then
    executor = "Codex"
elseif cryptic then
    executor = "Cryptic"
elseif trigon_evo then
    executor = "Trigon Evo"
elseif synapse_z then
    executor = "Synapse Z"
end

print("Executor detected: " .. executor)
