# scripts

# vi commands i like and often forget

move to end of line - $
copy to end of line - $y

Toggle case "HellO" to "hELLo" with g~ then a movement.
Uppercase "HellO" to "HELLO" with gU then a movement.
Lowercase "HellO" to "hello" with gu then a movement.

tex.vim goes in ~/.vim/after/syntax/tex.vim 


remove midsentance line breaks (double escape just for .md rendering)

   s/\\n\\n/#/g %save multiline breaks
   
   s/\\n/ /g    %undo single line breaks
   
   s/#/\\r/g    %redo multiline breaks
   
put long line into sentances in vi (double escape just for .md rendering)
   
   s/\\.\ /\\.\r/g


# useful tutorials

https://nikita-volkov.github.io/profiling-cabal-projects/
