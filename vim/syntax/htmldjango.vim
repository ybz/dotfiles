" Vim syntax file
" Language:	Django HTML template
" Maintainer:	Dave Hodder <dmh@dmh.org.uk>
" Last Change:	2007 Jan 26

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'html'
endif

if version < 600
  so <sfile>:p:h/django.vim
  so <sfile>:p:h/html.vim
else
  runtime! syntax/django.vim
  runtime! syntax/html.vim
  unlet b:current_syntax
endif


syn cluster djangoBlocks add=djangoTagBlock,djangoVarBlock,djangoComment,djangoComBlock

syn region djangoArgument contained start=/'/ skip=/\\'/ end=/'/

syn region djangoTagBlock start="{%" end="%}" contains=djangoStatement,djangoFilter,djangoArgument,djangoTagError display containedin=ALLBUT,@djangoBlocks
syn region djangoVarBlock start="{{" end="}}" contains=djangoFilter,djangoArgument,djangoVarError display containedin=ALLBUT,@djangoBlocks
syn region djangoComment start="{%\s*comment\s*%}" end="{%\s*endcomment\s*%}" contains=djangoTodo containedin=ALLBUT,@djangoBlocks
syn region djangoComBlock start="{#" end="#}" contains=djangoTodo containedin=ALLBUT,@djangoBlocks
syn region djangoComment start="{%\s*comment\s*%}" end="{%\s*endcomment\s*%}" contains=djangoTodo containedin=ALLBUT,@djangoBlocks

syn region  javaScript matchgroup=djangoTagBlock start="{% relocate javascript %}" keepend end="{% endrelocate %}"me=s-1 contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
syn region cssStyle matchgroup=djangoTagBlock start="{% relocate css %}" keepend end="{% endrelocate %}" contains=@htmlCss,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc

syn include @htmlCoffee syntax/coffee.vim
syn region coffee matchgroup=djangoTagBlock start="{% relocate coffee %}" keepend end="{% endrelocate %}" contains=@htmlCoffee
syn region coffee matchgroup=djangoTagBlock start="{% call coffee() %}" keepend end="{% endcall %}" contains=@htmlCoffee

syn include @jstTemplate syntax/jst.vim
syn region jst start=+<script[^>]*type="text/template"\s*>+ keepend end=+</script>+ contains=@jstTemplate,htmlTag,htmlEndTag containedin=ALLBUT,@jstTemplate

let b:current_syntax = "htmldjango"
