if has("gui_running")
	set guioptions=-t
  set Monaco:h12
endif

colorscheme lanai

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

