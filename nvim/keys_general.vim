" VSCode settings
" $HOME/.config/VSCode/User/nvim/codium.vim


" Better indenting
vnoremap < <gv
vnoremap > >gv


" Select word
nnoremap ,w viw


" Yank from the cursor to the end of the line
nnoremap Y y$


" Within vscode
" comma shortcuts
" python (initializing self variables, with curson on the variable)
nnoremap ,ps yiwoself.<C-r>" = <C-r>"<C-[>


" single-key mapping
nnoremap <silent> <Space>x  :call VSCodeNotify('workbench.action.showCommands')<CR>
nnoremap <silent> <Space>.  :call VSCodeNotify('breadcrumbs.focusAndSelect')<CR>
nnoremap <silent> <Space>/  :.py3do return line[2:] if line.startswith("# ") else "# {}".format(line)<CR>
vnoremap <silent> <Space>/  :py3do return line[2:] if line.startswith("# ") else "# {}".format(line)<CR>

" error hopping
nnoremap <silent> [g :call VSCodeNotify('editor.action.marker.prev')<CR>
nnoremap <silent> ]g :call VSCodeNotify('editor.action.marker.next')<CR>

" error hopping
nnoremap <silent> [e :call VSCodeNotify('editor.action.marker.prev')<CR>
nnoremap <silent> ]e :call VSCodeNotify('editor.action.marker.next')<CR>

" folds
nnoremap <silent> za :call VSCodeNotify('editor.toggleFold')<CR>
nnoremap <silent> zc :call VSCodeNotify('editor.fold')<CR>
nnoremap <silent> zm :call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zo :call VSCodeNotify('editor.unfold')<CR>
nnoremap <silent> zr :call VSCodeNotify('editor.unfoldAll')<CR>
nnoremap <silent> zM :call VSCodeNotify('editor.foldAll')<CR>
nnoremap <silent> zR :call VSCodeNotify('editor.unfoldAll')<CR>

" c for {} curly-braces
nnoremap cac ca{
nnoremap cic ci{
nnoremap dac da{
nnoremap dic di{
nnoremap vac va{
nnoremap vic vi{
nnoremap yac ya{
nnoremap yic yi{

" B for [] brackets
nnoremap caB ca[
nnoremap ciB ci[
nnoremap daB da[
nnoremap diB di[
nnoremap vaB va[
nnoremap viB vi[
nnoremap yaB ya[
nnoremap yiB yi[

" d for double quotes
nnoremap cad ca"
nnoremap cid ci"
nnoremap dad da"
nnoremap did di"
nnoremap vad va"
nnoremap vid vi"
nnoremap yad ya"
nnoremap yid yi"

" q for single quotes
nnoremap caq ca'
nnoremap ciq ci'
nnoremap daq da'
nnoremap diq di'
nnoremap vaq va'
nnoremap viq vi'
nnoremap yaq ya'
nnoremap yiq yi'

" Q for double quotes
nnoremap caQ ca"
nnoremap ciQ ci"
nnoremap daQ da"
nnoremap diQ di"
nnoremap vaQ va"
nnoremap viQ vi"
nnoremap yaQ ya"
nnoremap yiQ yi"

" x for backticks
nnoremap cax ca`
nnoremap cix ci`
nnoremap dax da`
nnoremap dix di`
nnoremap vax va`
nnoremap vix vi`
nnoremap yax ya`
nnoremap yix yi`

" miscellaneous
nnoremap <silent> <Space>[( msF[mh%r)`hr(`s
nnoremap <silent> <Space>[) msF[mh%r)`hr(`s
nnoremap <silent> <Space>]( msF[mh%r)`hr(`s
nnoremap <silent> <Space>]) msF[mh%r)`hr(`s

nnoremap <silent> <Space>([ msF(mh%r]`hr[`s
nnoremap <silent> <Space>(] msF(mh%r]`hr[`s
nnoremap <silent> <Space>)[ msF(mh%r]`hr[`s
nnoremap <silent> <Space>)] msF(mh%r]`hr[`s

" +action
nnoremap <silent> <Space>ao :call VSCodeNotify('workbench.output.action.clearOutput')<CR>
nnoremap <silent> <Space>a/ :call VSCodeNotify('editor.action.commentLine')<CR>
vnoremap <silent> <Space>alb di\textbf{}<Esc>hp
vnoremap <silent> <Space>ali di\emph{}<Esc>hp
vnoremap <silent> <Space>alt di\texttt{}<Esc>hp
vnoremap <silent> <Space>alu di\underline{}<Esc>hp


" +buffer
nnoremap <silent> <Space>bb :call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <silent> <Space>bk :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <silent> <Space>bN :call VSCodeNotify('workbench.action.files.newUntitledFile')<CR>


nnoremap <silent> <Space>cd :call VSCodeNotify('editor.action.revealDefinition')<CR>
" +code
nnoremap <silent> <Space>ch :call VSCodeNotify('editor.action.showHover')<CR>
nnoremap <silent> <Space>ci :call VSCodeNotify('editor.action.revealDefinitionAside')<CR>
nnoremap <silent> <Space>cr :call VSCodeNotify('editor.action.goToReferences')<CR>
nnoremap <silent> <Space>cR :call VSCodeNotify('editor.action.rename')<CR>
nnoremap <silent> <Space>c, :call VSCodeNotify('editor.action.marker.previous')<CR>
nnoremap <silent> <Space>c. :call VSCodeNotify('editor.action.marker.next')<CR>
nnoremap <silent> <Space>c[ :call VSCodeNotify('editor.action.marker.previousInFiles')<CR>
nnoremap <silent> <Space>c] :call VSCodeNotify('editor.action.marker.nextInFiles')<CR>


" +dired
nnoremap <silent> <Space>db :call VSCodeNotify('extension.dired.goUpDir')<CR>
nnoremap <silent> <Space>dc :call VSCodeNotify('extension.dired.copy')<CR>
nnoremap <silent> <Space>dC :call VSCodeNotify('extension.dired.createDir')<CR>
nnoremap <silent> <Space>dd :call VSCodeNotify('extension.dired.open')<CR>
nnoremap <silent> <Space>de :call VSCodeNotify('extension.dired.enter')<CR>
nnoremap <silent> <Space>dq :call VSCodeNotify('extension.dired.close')<CR>
nnoremap <silent> <Space>dr :call VSCodeNotify('extension.dired.refresh')<CR>
nnoremap <silent> <Space>dR :call VSCodeNotify('extension.dired.rename')<CR>
nnoremap <silent> <Space>ds :call VSCodeNotify('extension.dired.select')<CR>
nnoremap <silent> <Space>du :call VSCodeNotify('extension.dired.unselect')<CR>


" +evaluate/edit
nnoremap <silent> <Space>ec :call VSCodeNotify('code-runner.run')<CR>
nnoremap <silent> <Space>ee : !<right>  
nnoremap <silent> <Space>el :call VSCodeNotify('code-runner.run')<CR>
nnoremap <silent> <Space>ep :call VSCodeNotify('code-runner.run')<CR>
nnoremap <silent> <Space>eq :call VSCodeNotify('code-runner.stop')<CR>


" +file
nnoremap <silent> <Space>fp :vs $HOME/.config/Code/User/nvim/codium.vim<CR>
nnoremap <silent> <Space>fs :call VSCodeNotify('workbench.action.files.save')<CR>
nnoremap <silent> <Space>fz :call VSCodeNotify('workbench.action.toggleZenMode')<CR>


" +git
" b - Magit switch branch
" B - Magit blame
" c - +create
" cb - Branch
" cc - Commit
" cf - Fixup
" ci - issue
" cp - Pull request
" cr - Initialize repo
" cR - Clone repo
" C - Clone
" D - Magit file delete
" f - +find
" F - Magit fetch
" g - Magit status
" G - Magit status here
" l - +list
" L - Magit buffer log
" o - +open in browser
" r - Revert hunk
" R - Revert file
" s - Git stage hunk
" S - Git stage file
" t - Git time machine
" U - Git unstage file
" y - Copy link to remote
" Y - Copy link to homepage
nnoremap <silent> <Space>gB :call VSCodeNotify('magit.blame-file')<CR>
nnoremap <silent> <Space>gg :call VSCodeNotify('magit.status')<CR>
nnoremap <silent> <Space>gS :call VSCodeNotify('magit.stage')<CR>
nnoremap <silent> <Space>gF :call VSCodeNotify('magit.fetching')<CR>
nnoremap <silent> <Space>gL :call VSCodeNotify('magit.logging')<CR>
nnoremap <silent> <Space>gb :call VSCodeNotify('magit.branching')<CR>
nnoremap <silent> <Space>gy :call VSCodeNotify('magit.remoting')<CR>
nnoremap <silent> <Space>gh :call VSCodeNotify('magit.help')<CR>
nnoremap <silent> <Space>gg :call VSCodeNotify('magit.status')<CR>


" +help
nnoremap <silent> <Space>hk :call VSCodeNotify('workbench.action.openGlobalKeybindings')<CR>
nnoremap <silent> <Space>hK :call VSCodeNotify('workbench.action.openGlobalKeybindingsFile')<CR>
nnoremap <silent> <Space>hs :call VSCodeNotify('workbench.action.openGlobalSettings')<CR>
nnoremap <silent> <Space>ht :call VSCodeNotify('workbench.action.selectTheme')<CR>


" +info
nnoremap <silent> <Space>ib :! battery<CR>  
nnoremap <silent> <Space>ic :! clock<CR>  
nnoremap <silent> <Space>id :! date<CR>
nnoremap <silent> <Space>if :r %f<CR>
nnoremap <silent> <Space>il :! pwd; ls -la<CR>
nnoremap <silent> <Space>im i$$<CR><CR>$$<Esc>ki
nnoremap <silent> <Space>it :! clock<CR>  
nnoremap <silent> <Space>iu :! upt<CR>
nnoremap <silent> <Space>iv :! volume<CR>


" +lsp
nnoremap <silent> <Space>lr :call VSCodeNotify('editor.action.rename')<CR>
nnoremap <silent> <Space>lp :call VSCodeNotify('editor.action.revealDefinition')<CR>


" +latex(m)
nnoremap <silent> <Space>mb :call VSCodeNotify('latex-workshop.build')<CR>
nnoremap <silent> <Space>mc :call VSCodeNotify('latex-workshop.clean')<CR>
nnoremap <silent> <Space>mv :call VSCodeNotify('latex-workshop.view')<CR>
vnoremap <silent> <Space>mlb di\textbf{}<Esc>hp
vnoremap <silent> <Space>mli di\emph{}<Esc>hp
vnoremap <silent> <Space>mlm di$$<Esc>hp
nnoremap <silent> <Space>mlM i$$<CR><CR>$$<Esc>ki
vnoremap <silent> <Space>mlt di\texttt{}<Esc>hp
vnoremap <silent> <Space>mlu di\underline{}<Esc>hp


" +open
nnoremap <silent> <Space>ot :call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>


" +project
" ++ cmake
nnoremap <silent> <Space>pcb :call VSCodeNotify('cmake.build')<CR>
nnoremap <silent> <Space>pcc :call VSCodeNotify('cmake.configure')<CR>
nnoremap <silent> <Space>pcC :call VSCodeNotify('cmake.cleanConfigure')<CR>
nnoremap <silent> <Space>pch :call VSCodeNotify('cmake.onlineHelp')<CR>
nnoremap <silent> <Space>pcl :call VSCodeNotify('cmake.launchTarget')<CR>
nnoremap <silent> <Space>pcL :call VSCodeNotify('cmake.viewLog')<CR>
nnoremap <silent> <Space>pcq :call VSCodeNotify('cmake.outline.stop')<CR>
nnoremap <silent> <Space>pcs :call VSCodeNotify('cmake.selectActiveFolder')<CR>
nnoremap <silent> <Space>pcS :call VSCodeNotify('cmake.selectKit')<CR>
nnoremap <silent> <Space>pct :call VSCodeNotify('cmake.ctest')<CR>


" nnoremap <silent> <Space>pcb :! cmake -S $dir -B $dir/build/<CR>
" nnoremap <silent> <Space>pcm :! make -C $dir/build/<CR>
" nnoremap <silent> <Space>pcl :! ls $dir/build/<CR>

" ++ docker


" +quit
nnoremap <silent> <Space>qa :call VSCodeNotify('workbench.action.closeAllEditors')<CR>
nnoremap <silent> <Space>qr :call VSCodeNotify('workbench.action.reloadWindow')<CR>


" +register/reload
nnoremap <silent> <Space>rr :call VSCodeNotify('workbench.action.reloadWindow')<CR>



" +search
nnoremap <silent> <Space>sw  :call VSCodeNotify('search.action.openNewEditorToSide')<CR>
nnoremap <silent> <Space>ss  :%s/\v
vnoremap <silent> <Space>ss  :s/\v


" +toggle
nnoremap <silent> <Space>tF :call VSCodeNotify('workbench.action.toggleFullScreen')<CR>
nnoremap <silent> <Space>tG :%norm! g??<CR>
nnoremap <silent> <Space>th :set hls!<CR>
nnoremap <silent> <Space>tm :call VSCodeNotify('workbench.action.toggleMenuBar')<CR>
nnoremap <silent> <Space>to :call VSCodeNotify('C_Cpp.SwitchHeaderSource')<CR>
nnoremap <silent> <Space>tp :call VSCodeNotify('workbench.actions.view.toggleProblems')<CR>
nnoremap <silent> <Space>tl :call VSCodeNotify('workbench.action.toggleEditorGroupLayout')<CR>
nnoremap <silent> <Space>tw :call VSCodeNotify('workbench.action.toggleWordWrap')<CR>


" +window
" nnoremap <silent> <Space>wb <C-^>
nnoremap <silent> <Space>wc :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nnoremap <silent> <Space>wm :call VSCodeNotify('workbench.action.maximizeEditor')<CR>
nnoremap <silent> <Space>ws :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
nnoremap <silent> <Space>wt :call VSCodeNotify('workbench.action.toggleEditorGroupLayout')<CR>
nnoremap <silent> <Space>wv :call VSCodeNotify('workbench.action.splitEditorRight')<CR>
" nnoremap <silent> <Space>wh <C-W>h
" nnoremap <silent> <Space>wj <C-W>j
" nnoremap <silent> <Space>wk <C-W>k
" nnoremap <silent> <Space>wl <C-W>l
" nnoremap <silent> <Space>ws <C-W>s
" nnoremap <silent> <Space>wv <C-W>v
" nnoremap <silent> <Space>ww <C-W>w
" nnoremap <silent> <Space>w- <C-W>s
" nnoremap <silent> <Space>w| <C-W>v
" nnoremap <silent> <Space>w= <C-W>=
" nnoremap <silent> <Space>w2 <C-W>v




" xsel commands
nnoremap <Space>avv "+p
nnoremap <Space>acc V"+y
nnoremap <Space>axx V"+d
vnoremap <Space>avv "+p
vnoremap <Space>acc "+y
vnoremap <Space>axx "+d

nnoremap <Space>acq V"qy
nnoremap <Space>acw V"wy
nnoremap <Space>ace V"ey
nnoremap <Space>acr V"ry
nnoremap <Space>act V"ty
nnoremap <Space>acy V"yy
nnoremap <Space>acu V"uy
nnoremap <Space>aci V"iy
nnoremap <Space>aco V"oy
nnoremap <Space>acp V"py
nnoremap <Space>aca V"ay
nnoremap <Space>acs V"sy
nnoremap <Space>acd V"dy
nnoremap <Space>acf V"fy
nnoremap <Space>acg V"gy
nnoremap <Space>ach V"hy
nnoremap <Space>acj V"jy
nnoremap <Space>ack V"ky
nnoremap <Space>acl V"ly

nnoremap <Space>acQ V"Qy
nnoremap <Space>acW V"Wy
nnoremap <Space>acE V"Ey
nnoremap <Space>acR V"Ry
nnoremap <Space>acT V"Ty
nnoremap <Space>acY V"Yy
nnoremap <Space>acU V"Uy
nnoremap <Space>acI V"Iy
nnoremap <Space>acO V"Oy
nnoremap <Space>acP V"Py
nnoremap <Space>acA V"Ay
nnoremap <Space>acS V"Sy
nnoremap <Space>acD V"Dy
nnoremap <Space>acF V"Fy
nnoremap <Space>acG V"Gy
nnoremap <Space>acH V"Hy
nnoremap <Space>acJ V"Jy
nnoremap <Space>acK V"Ky
nnoremap <Space>acL V"Ly

vnoremap <Space>acq "qy
vnoremap <Space>acw "wy
vnoremap <Space>ace "ey
vnoremap <Space>acr "ry
vnoremap <Space>act "ty
vnoremap <Space>acy "yy
vnoremap <Space>acu "uy
vnoremap <Space>aci "iy
vnoremap <Space>aco "oy
vnoremap <Space>acp "py
vnoremap <Space>aca "ay
vnoremap <Space>acs "sy
vnoremap <Space>acd "dy
vnoremap <Space>acf "fy
vnoremap <Space>acg "gy
vnoremap <Space>ach "hy
vnoremap <Space>acj "jy
vnoremap <Space>ack "ky
vnoremap <Space>acl "ly

vnoremap <Space>acQ "Qy
vnoremap <Space>acW "Wy
vnoremap <Space>acE "Ey
vnoremap <Space>acR "Ry
vnoremap <Space>acT "Ty
vnoremap <Space>acY "Yy
vnoremap <Space>acU "Uy
vnoremap <Space>acI "Iy
vnoremap <Space>acO "Oy
vnoremap <Space>acP "Py
vnoremap <Space>acA "Ay
vnoremap <Space>acS "Sy
vnoremap <Space>acD "Dy
vnoremap <Space>acF "Fy
vnoremap <Space>acG "Gy
vnoremap <Space>acH "Hy
vnoremap <Space>acJ "Jy
vnoremap <Space>acK "Ky
vnoremap <Space>acL "Ly

nnoremap <Space>axq V"qd
nnoremap <Space>axw V"wd
nnoremap <Space>axe V"ed
nnoremap <Space>axr V"rd
nnoremap <Space>axt V"td
nnoremap <Space>axy V"yd
nnoremap <Space>axu V"ud
nnoremap <Space>axi V"id
nnoremap <Space>axo V"od
nnoremap <Space>axp V"pd
nnoremap <Space>axa V"ad
nnoremap <Space>axs V"sd
nnoremap <Space>axd V"dd
nnoremap <Space>axf V"fd
nnoremap <Space>axg V"gd
nnoremap <Space>axh V"hd
nnoremap <Space>axj V"jd
nnoremap <Space>axk V"kd
nnoremap <Space>axl V"ld

nnoremap <Space>axQ V"Qd
nnoremap <Space>axW V"Wd
nnoremap <Space>axE V"Ed
nnoremap <Space>axR V"Rd
nnoremap <Space>axT V"Td
nnoremap <Space>axY V"Yd
nnoremap <Space>axU V"Ud
nnoremap <Space>axI V"Id
nnoremap <Space>axO V"Od
nnoremap <Space>axP V"Pd
nnoremap <Space>axA V"Ad
nnoremap <Space>axS V"Sd
nnoremap <Space>axD V"Dd
nnoremap <Space>axF V"Fd
nnoremap <Space>axG V"Gd
nnoremap <Space>axH V"Hd
nnoremap <Space>axJ V"Jd
nnoremap <Space>axK V"Kd
nnoremap <Space>axL V"Ld

vnoremap <Space>axq "qd
vnoremap <Space>axw "wd
vnoremap <Space>axe "ed
vnoremap <Space>axr "rd
vnoremap <Space>axt "td
vnoremap <Space>axy "yd
vnoremap <Space>axu "ud
vnoremap <Space>axi "id
vnoremap <Space>axo "od
vnoremap <Space>axp "pd
vnoremap <Space>axa "ad
vnoremap <Space>axs "sd
vnoremap <Space>axd "dd
vnoremap <Space>axf "fd
vnoremap <Space>axg "gd
vnoremap <Space>axh "hd
vnoremap <Space>axj "jd
vnoremap <Space>axk "kd
vnoremap <Space>axl "ld

vnoremap <Space>axQ "Qd
vnoremap <Space>axW "Wd
vnoremap <Space>axE "Ed
vnoremap <Space>axR "Rd
vnoremap <Space>axT "Td
vnoremap <Space>axY "Yd
vnoremap <Space>axU "Ud
vnoremap <Space>axI "Id
vnoremap <Space>axO "Od
vnoremap <Space>axP "Pd
vnoremap <Space>axA "Ad
vnoremap <Space>axS "Sd
vnoremap <Space>axD "Dd
vnoremap <Space>axF "Fd
vnoremap <Space>axG "Gd
vnoremap <Space>axH "Hd
vnoremap <Space>axJ "Jd
vnoremap <Space>axK "Kd
vnoremap <Space>axL "Ld

nnoremap <Space>avq "qp
nnoremap <Space>avw "wp
nnoremap <Space>ave "ep
nnoremap <Space>avr "rp
nnoremap <Space>avt "tp
nnoremap <Space>avy "yp
nnoremap <Space>avu "up
nnoremap <Space>avi "ip
nnoremap <Space>avo "op
nnoremap <Space>avp "pp
nnoremap <Space>ava "ap
nnoremap <Space>avs "sp
nnoremap <Space>avd "dp
nnoremap <Space>avf "fp
nnoremap <Space>avg "gp
nnoremap <Space>avh "hp
nnoremap <Space>avj "jp
nnoremap <Space>avk "kp
nnoremap <Space>avl "lp

nnoremap <Space>avQ "Qp
nnoremap <Space>avW "Wp
nnoremap <Space>avE "Ep
nnoremap <Space>avR "Rp
nnoremap <Space>avT "Tp
nnoremap <Space>avY "Yp
nnoremap <Space>avU "Up
nnoremap <Space>avI "Ip
nnoremap <Space>avO "Op
nnoremap <Space>avP "Pp
nnoremap <Space>avA "Ap
nnoremap <Space>avS "Sp
nnoremap <Space>avD "Dp
nnoremap <Space>avF "Fp
nnoremap <Space>avG "Gp
nnoremap <Space>avH "Hp
nnoremap <Space>avJ "Jp
nnoremap <Space>avK "Kp
nnoremap <Space>avL "Lp

vnoremap <Space>avq "qp
vnoremap <Space>avw "wp
vnoremap <Space>ave "ep
vnoremap <Space>avr "rp
vnoremap <Space>avt "tp
vnoremap <Space>avy "yp
vnoremap <Space>avu "up
vnoremap <Space>avi "ip
vnoremap <Space>avo "op
vnoremap <Space>avp "pp
vnoremap <Space>ava "ap
vnoremap <Space>avs "sp
vnoremap <Space>avd "dp
vnoremap <Space>avf "fp
vnoremap <Space>avg "gp
vnoremap <Space>avh "hp
vnoremap <Space>avj "jp
vnoremap <Space>avk "kp
vnoremap <Space>avl "lp

vnoremap <Space>avQ "Qp
vnoremap <Space>avW "Wp
vnoremap <Space>avE "Ep
vnoremap <Space>avR "Rp
vnoremap <Space>avT "Tp
vnoremap <Space>avY "Yp
vnoremap <Space>avU "Up
vnoremap <Space>avI "Ip
vnoremap <Space>avO "Op
vnoremap <Space>avP "Pp
vnoremap <Space>avA "Ap
vnoremap <Space>avS "Sp
vnoremap <Space>avD "Dp
vnoremap <Space>avF "Fp
vnoremap <Space>avG "Gp
vnoremap <Space>avH "Hp
vnoremap <Space>avJ "Jp
vnoremap <Space>avK "Kp
vnoremap <Space>avL "Lp


