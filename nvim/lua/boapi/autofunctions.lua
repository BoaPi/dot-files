-- create custom auto command to run on certain buffer interactions
local name = "BoaPi custom auto commands"
local bufnr = 61
local rust_commands = {
    run = { "cargo", "run" },
    fmt = { "cargo", "fmt" },
}

Append_data = function(_, data)
    if data then
        vim.api.nvim_buf_set_lines(bufnr, -1, -1, false, data)
    end
end

-- formatting rust code before writing buffer
vim.api.nvim_create_autocmd("BufWritePre", {
    group = vim.api.nvim_create_augroup(name, { clear = true }),
    pattern = "*.rs",
    callback = function()
        vim.fn.jobstart(rust_commands["fmt"])
    end,
})

-- run "cargo run" after writing to stdout_buffer
-- getting both outputs from stdout and stderr
vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup(name, { clear = true }),
    pattern = "main.rs",
    callback = function()
        vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "output of main.rs" })
        vim.fn.jobstart(rust_commands["run"], {
            stdout_buffered = true,
            on_stdout = Append_data,
            on_stderr = Append_data,
        })
    end,
})
