fun! Basic()
	lua for k in pairs(package.loaded) do if k:match("^basic") then package.loaded[k] = nil end end
	lua require("basic").create_floating_window()
endfun

let g:basic_value = 42

augroup Basic
	autocmd!
  command! Basic lua require'basic'.create_floating_window()
augroup END
