# Vim

Cheat Sheet - https://vim.rtorr.com/

Basic movements - jk hl
Horizontal moves by word - w e (forward) b ge gE (backward)
Beginning and the end of line - 0 and $, also ^
Jump to the character - t[character] f[character], the same for TF - backwards

Copy line - yy
Paste below or above - p, P
Delete line - dd, S
Delete the rest of the line - D, C 
Delete word - dw, or cw (to go to the insert mode after), diw/ciw will delete work completely
Delete character - x or s
Delete until character - dt[character]
Delete everything in braces - di{ or di[ or di(, the same works with c, ci{ ci[ ci( and also with y and v, i can be replaced with a

Start editin - i, I (at the beginig of the line)
             - a and A (at the end of the line)
             - o, O (at the line below or above)

Search word - / then n, N
Next occurance of what is under the cursor - *, # 
Move to the matching brace - % (from { to } for example)

