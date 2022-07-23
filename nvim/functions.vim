function! ToggleCommentLine()
python3 << EOF

import os

cb = vim.current.window.buffer
cl = vim.current.window.cursor[0]-1
suffix = os.path.splitext(cb.name)[1]

comments = {
	'.vim'  : "\"",
	'.py'   : "#",
	'.c'    : "//",
	'.cpp'  : "//",
	'.cc'   : "//",
	'.lua'  : "--",
}

if suffix in comments.keys():
	pattern = f"{comments[suffix]} "
	line_text = cb[cl]
	res = line_text[2:] if line_text.startswith(pattern) else f"{pattern}{line_text}" 
	cb[cl] = res

else:
	print(f"code comment doesn't exist for extension '{suffix}'")

EOF
endfunction


