SMODS.Atlas({
    key = "modicon",
    path = "ModIcon.png",
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS",
})

local function in_data_folders()
    local mod_path = SMODS.current_mod.path
    local data = mod_path .. "/bullshittery"
    local files = NFS.getDirectoryItemsInfo(data)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("bullshittery/" .. file_name))()
        end
    end
end

local function in_ids()
    local mod_path = SMODS.current_mod.path
    local data = mod_path .. "/bullshittery/ids"
    local files = NFS.getDirectoryItemsInfo(data)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("bullshittery/ids/" .. file_name))()
        end
    end
end

local function in_misc()
    local mod_path = SMODS.current_mod.path
    local data = mod_path .. "/bullshittery/misc"
    local files = NFS.getDirectoryItemsInfo(data)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("bullshittery/misc/" .. file_name))()
        end
    end
end

local function quips()
    local mod_path = SMODS.current_mod.path
    local data = mod_path .. "/bullshittery/quips"
    local files = NFS.getDirectoryItemsInfo(data)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("bullshittery/quips/" .. file_name))()
        end
    end
end

in_data_folders()
in_ids()
in_misc()
quips()