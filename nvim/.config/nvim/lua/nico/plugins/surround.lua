return {
    'echasnovski/mini.surround',
    version = false,
    config = function ()
        require('mini.surround').setup({
            custom_surroundings = {
                ["("] = { output = { left = "(", right = ")" } },
                ["{"] = { output = { left = "{", right = "}" } },
                ["["] = { output = { left = "[", right = "]" } },
                ["<"] = { output = { left = "<", right = ">" } },
            },
        })
    end
}
