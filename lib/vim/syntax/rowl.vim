" Language:	Rowl
" Maintainer:	nineties <nineties48@gmail.com>
" $Id: rowl.vim 2010-04-07 08:21:34 nineties $

if exists("b:current_syntax")
    finish
endif

syn case match

syn keyword rowlCommand   goto label return type
syn keyword rowlSymbol    if else syscall while
syn keyword rowlExternal  include export import external
syn keyword rowlType      char int float double
syn match rowlIdentifier  /\<\h\w*/
syn match rowlInteger     /-\?\(0\o*\|[1-9]\d*\|0x\x\+\)\>/
syn match rowlReal        /-\?\d*\.\d\+\>/
syn match rowlEscape      /\\['"?\\abfnrtv0]/ contained
syn match rowlCharacter   /'\(\\["?\\abfnrtv0]\|[^\\\n]\)'/ contains=rowlEscape
syn match rowlString      /"\(\\['"?\\abfnrtv0]\|[^\\\"\n]\)*"/ contains=rowlEscape
syn keyword rowlTodo TODO FIXME NOTE XXX contained
syn region  rowlString start=/"/ skip=/\\"/ end=/"/
syn region  rowlComment start=/(%/ end=/%)/ contains=rowlComment,rowlTodo

syn match rowlKeyOperator ":"
syn match rowlKeyOperator "|"
syn match rowlKeyOperator "->"
syn match rowlKeyOperator "=>"
syn match rowlKeyOperator "![^=]"me=e-1
syn match rowlConstructor "\u\w*\>"

hi def link rowlComment     Comment
hi def link rowlCharacter   Character
hi def link rowlEscape      SpecialChar
hi def link rowlKeyOperator Operator
hi def link rowlString      String
hi def link rowlInteger     Number
hi def link rowlReal        Number
hi def link rowlCommand     Statement
hi def link rowlSymbol      Statement
hi def link rowlExternal    PreProc
hi def link rowlType        Type
hi def link rowlTodo        Keyword
hi def link rowlConstructor Constant

let b:current_syntax = "rowl"

" vim: ts=8
