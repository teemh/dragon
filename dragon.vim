

" Dragon Color Scheme for VIM

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = 'dragon'

let s:mono1     = ['#1c1c1c', '234'] 
let s:mono2     = ['#262626', '235']
let s:mono3     = ['#303030', '236']
let s:mono4     = ['#444444', '238']
let s:mono8     = ['#808080', '244']
let s:monob     = ['#bcbcbc', '250']
let s:monod     = ['#dadada', '253']
let s:monoe     = ['#eeeeee', '255']
    
let s:tan       = ['#dfdfaf', '187']
let s:darktan   = ['#afaf87', '144'] 
let s:tomato    = ['#d75f5f', '167'] 
let s:brick     = ['#875f5f', '095'] 
let s:jade      = ['#87afaf', '109'] 
let s:slate     = ['#5f8787', '066'] 
let s:malachite = ['#5faf87', '072'] 
let s:sand      = ['#ffffaf', '229'] 
let s:seafoam   = ['#87d7af', '115'] 

let s:red       = ['#ff0000', '009'] 
let s:blue      = ['#0000ff', '012']

let s:none      =  ['NONE', 'NONE']

" Highlight Function
function! s:hi (name, fg, bg, gui)
    let l:string = "hi ".a:name
    let l:string .= " guifg=".a:fg[0]." ctermfg=".a:fg[1]
    let l:string .= " guibg=".a:bg[0]." ctermbg=".a:bg[1]
    if !empty(a:gui)
        let l:string .= " gui=".a:gui." cterm=".a:gui." term=".a:gui
    endif
    return l:string
endfunction
"}}}

" General Text Highlighting {{{
" NonText: area at the bottom of window. Also some list characters.
" Normal: Default Text Color and Background Color
" SpecialKey: Some list characters
exe s:hi('NonText',     s:mono2,    s:none,     'none')
exe s:hi('Normal',      s:monob,    s:mono1,    'none')
exe s:hi('SpecialKey',  s:mono4,    s:none,     'none')
exe s:hi('Title',       s:monob,    s:none,     'bold')

" NOTE: The cursorline highlighting needs to overrule the SPECIALKEY and
" NONTEXT highlighting, otherwise it would disappear in several 
" situations.

"}}}
"" Search {{{
"" IncSearch: Incremental Search. Highlighted as you type.
"" Search: Highlights search match.
"exe s:hi('IncSearch',   s:color7,    s:base1,    'reverse')
"exe s:hi('Search',      s:color5,    s:base1,    'reverse')
"" }}}
"" Visual Mode {{{
"" Visual: Selected text in Visual mode
"" VisualNOS: Selected text in visual mode when 'Not Owning the Selection'
"exe s:hi('Visual',      s:base2,    s:base9,    'none')
"exe s:hi('VisualNOS',   s:base2,    s:base9,    'none')
""}}}
"" Cursor {{{
"" Cursor: Normal/Visual/Block Cursor
"" CursorIM: Insert Windows Console
"" CursorLine: Cursor Line
"" CursorLineNR: Highlight Line Number according to Cursor Line
"" iCursor: Insert Cursor Linux Console
"" lCursor: Change cursor when keymap is activated
exe s:hi('Cursor',      s:tan,    s:mono1,   'none')
"exe s:hi('CursorIM',    s:none,     s:color4,   'none')
exe s:hi('CursorLine',    s:none,     s:mono3,    'none')
exe s:hi('CursorLineNR',  s:tan,      s:mono3,    'none')
"exe s:hi('iCursor',     s:color6,   s:base1,    'none')
"exe s:hi('lCursor',     s:color1,   s:base1,    'none')
""}}}
"" Messages {{{
"" ErrorMsg: Error Messages that appear in command box. 
"" ModeMsg: 'showmode' message (e.g., -- INSERT --).
"" MoreMsg: more-prompt (e.g., -- MORE --)
"" Question: :ls! (hit-enter prompt and yes/no questions)
"" WarningMsg: Warning Messages that appear in command box.
"exe s:hi('ErrorMsg',    s:color1,   s:none,     'italic')
"exe s:hi('ModeMsg',     s:color6,   s:none,     'none')
"exe s:hi('MoreMsg',     s:color6,   s:none,     'none')
"exe s:hi('Question',    s:color6,   s:none,     'italic')
"exe s:hi('WarningMsg',  s:color8,   s:none,     'italic')
""}}}
"" General Interface {{{
"" ColorColumn: Used for the columns set with 'colorcolumn'
"" Directory: Directory names (and other special names in listings)
"" LineNr: Line Number
"" SignColumn: Column where |signs| are displaye
"" VertSplit: Column that sperates vertical splits.
"" WildMenu: Current match in 'wildmenu' completion
"exe s:hi('ColorColumn', s:none,     s:base2,    'none')
"exe s:hi('Directory',   s:color9,   s:none,     'none')
exe s:hi('LineNr',      s:darktan,    s:mono2,    'none')
"exe s:hi('SignColumn',  s:base8,    s:base2,    'none')
exe s:hi('VertSplit',   s:darktan,    s:darktan,    'none')
"exe s:hi('WildMenu',    s:base1,    s:color6,   'none')
""}}}
"" Folds {{{
"" FoldColumn: When enabled shows length of open fold in margin.
"" Folded: Line used for closed folds.
exe s:hi('FoldColumn',  s:mono8,    s:mono3,    'none')
exe s:hi('Folded',      s:mono8,    s:mono4,    'none')
""}}}
"" Diffs {{{
"" DiffAdd: Added lines.
"" DiffChange: Changed lines.
"" DiffDelete: Deleted lines.
"" DiffText: Changed text within a changed line.
"exe s:hi('DiffAdd',     s:color7,   s:base0,    'none')
"exe s:hi('DiffChange',  s:color9,   s:base0,    'none')
"exe s:hi('DiffDelete',  s:color1,   s:base0,    'none')
"exe s:hi('DiffText',    s:color5,   s:base0,    'none')
""}}}
"" Tabs {{{
"exe s:hi('TabLine',     s:base8,    s:base4,    'none')
"exe s:hi('TabLineSel',  s:base8,    s:base9,    'none')
"exe s:hi('TabLineFill', s:base8,    s:base4,    'none')
""}}}
"" Completion Menu (Pmenu) {{{
exe s:hi('Pmenu',       s:monob,    s:mono3,    'none')
exe s:hi('PmenuSel',    s:monoe,    s:slate,    'none')
exe s:hi('PmenuSbar',   s:none,     s:mono4,    'none')
exe s:hi('PmenuThumb',  s:none,     s:mono8,    'none')
""}}}
"" Status Line {{{
exe s:hi('StatusLine',  s:mono1,    s:jade,    'none')
exe s:hi('StatusLineNC',s:mono1,    s:slate,    'none')
""}}}
"" Spellchecking {{{
"exe s:hi('SpellBad',    s:color1,   s:none,     'underline')
"exe s:hi('SpellCap',    s:color5,   s:none,     'underline')
"exe s:hi('SpellRare',   s:color2,   s:none,     'underline')
"exe s:hi('SpellLocal',  s:color7,   s:none,     'underline')
""}}}
"" Syntax Highlighting {{{
""   *Comment any comment
exe s:hi('Comment',     s:mono8,   s:none,      'none')
"
""   *Constant       any constant
exe s:hi('Constant',    s:brick,   s:none,     'none')
""   String         a string constant: 'this is a string'
""   Character      a character constant: 'c', '\n'
exe s:hi('String',      s:brick,   s:none,     'none')
exe s:hi('Character',   s:brick,   s:none,     'none')
""   Number         a number constant: 234, 0xff
""   Boolean        a boolean constant: TRUE, false
""   Float          a floating point constant: 2.3e10
exe s:hi('Number',  s:tomato,    s:none, 'none')
exe s:hi('Boolean', s:tomato,    s:none, 'none')
exe s:hi('Float',   s:malachite, s:none, 'none')
""
""   *Identifier     any variable name
exe s:hi('Identifier',  s:tan,   s:none,     'none')
""   Function       function name (also: methods for classes)
exe s:hi('Function',    s:tan,   s:none,     'none')
""
""   *Statement      any statement
exe s:hi('Statement',   s:jade,   s:none,     'bold')
""   Conditional    if, then, else, endif, switch, etc.
""   Repeat         for, do, while, etc.
""   Label          case, default, etc.
""   Operator       'sizeof', '+', '*', etc.
""   Keyword        any other keyword
exe s:hi('Keyword',     s:jade,   s:none,     'bold')
""   Exception      try, catch, throw
""
"""  *PreProc        generic Preprocessor
"exe s:hi('Include',     s:color4,   s:none,     'none')
""   Include        preprocessor #include
exe s:hi('PreProc',     s:darktan,   s:none,     'none')
""   Define         preprocessor #define
""   Macro          same as Define
""   PreCondit      preprocessor #if, #else, #endif, etc.
""
""   *Type           int, long, char, etc.
exe s:hi('Type',        s:slate,   s:none,     'none')
""   StorageClass   static, register, volatile, etc. CSS attribute.
"exe s:hi('StorageClass',s:color0,   s:none,     'none')
""   Structure      struct, union, enum, etc.
"exe s:hi('Structure',   s:color6,   s:none,     'none')
""   Typedef        A typedef
"exe s:hi('TypeDef',     s:color7,   s:none,     'none')
""
""   *Special        any special symbol
exe s:hi('Special',     s:seafoam,   s:none,     'none')
""   SpecialChar    special character in a constant
""   Tag            you can use CTRL-] on this
""   Delimiter      character that needs attention
""   SpecialComment special things inside a comment
""   Debug          debugging statements
""
""   *Underlined     text that stands out, HTML links
"exe s:hi('Underlined',  s:none,     s:none,     'underline')
""
""   *Ignore         left blank, hidden  |hl-Ignore|
""
""   *Error          any erroneous construct
"exe s:hi('Error',       s:error,    s:none,     'italic')
"
""   *Todoanything   that needs extra attention; mostly the
""                   keywords TODO FIXME and XXX
"exe s:hi('Todo',        s:color9,   s:none,     'none')
"
""   *MatchParen     Matches {} [] () etc.
"exe s:hi('MatchParen',  s:color4,   s:base3,    'none')
""}}}
"" StatusLine {{{
"" ----------------------------------------------------------------------------
"exe s:hi('User1',       s:base0,    s:color1,   'none')
"exe s:hi('User2',       s:base0,    s:color2,   'none')
"exe s:hi('User3',       s:base0,    s:color3,   'none')
"exe s:hi('User4',       s:base0,    s:color4,   'none')
"exe s:hi('User5',       s:base0,    s:color5,   'none')
"exe s:hi('User6',       s:base0,    s:color6,   'none')
"exe s:hi('User7',       s:base0,    s:color7,   'none')
"exe s:hi('User8',       s:base0,    s:color8,   'none')
"exe s:hi('User9',       s:base0,    s:color9,   'none')
"
"" }}}
"
"" Links {{{
"" HTML
""-----------------------------------------------------------------------------
"hi link htmltagname         Identifier
"hi link htmltag             StorageClass
"hi link htmlendtag          StorageClass
"
"" Javascript
""-----------------------------------------------------------------------------
"hi link javascript          Normal
"hi link javaScriptParens    Special
"
"" Other
""-----------------------------------------------------------------------------
"hi link cppSTL              Function
"hi link cppSTLType          Type
"hi link pythonFunction      Identifier
"hi link xmlTag              Identifier
"hi link xmlTagName          Identifier
"hi link shDeref             Identifier
"hi link shVariable          Function
"hi link rubySharpBang       Special
"hi link perlSharpBang       Special
"hi link schemeFunc          Statement
"hi link TagListFileName     Statement
""}}}

