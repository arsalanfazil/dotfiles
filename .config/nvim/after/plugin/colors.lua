function SetColor(color)
	color = color or "onedark_dark"
	vim.cmd([[colorscheme ]] .. color)
end

SetColor()
