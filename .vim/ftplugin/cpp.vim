set makeprg=g++\ -Wall\ -g\ -std=c++17\ -fsanitize=undefined\ -fvisibility=hidden\ -D_GLIBCXX_DEBUG\ -O0\ %
"=g++\ -std=c++17\ -fsanitize=undefined\ -fvisibility=default\ -D_GLIBCXX_DEBUG\ -o\ %\ %<
let g:commentout=0
command Dbg call CommentOut()

function CommentOut()
	if g:commentout == 0
		let g:commentout = 1
		execute ":% s/\\\/\\\/\\(.*\\)cerr\\(.*\\)/\\1cerr\\2/"
	else
		let g:commentout = 0
		execute ":% s/\\(.*\\)cerr\\(.*\\)/\\\/\\\/\\1cerr\\2/"
	endif
endfunction
