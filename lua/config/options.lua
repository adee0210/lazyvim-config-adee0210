-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.number = true -- hiển thị số dòng
vim.opt.relativenumber = false -- không hiển thị số dòng tương đối
vim.opt.wrap = false -- hiển thị dòng văn bản như một dòng duy nhất

vim.opt.backup = false -- vô hiệu hóa việc tạo file sao lưu
vim.opt.writebackup = false -- ngăn chặn việc chỉnh sửa các file đang được chỉnh sửa ở nơi khác
vim.o.swapfile = false -- Tắt tính năng tạo file swap
