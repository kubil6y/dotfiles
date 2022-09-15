local counter = 0

function _G.__dot_repeat(motion) -- 4.
    if motion == nil then
        vim.o.operatorfunc = "v:lua.__dot_repeat" -- 3.
        return "g@" -- 2.
    end

    print("counter:", counter, "motion:", motion)
    counter = counter + 1
end

vim.keymap.set("n", "gt", _G.__dot_repeat, { expr = true }) -- 1.
