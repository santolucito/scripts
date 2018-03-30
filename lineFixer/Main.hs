{-# LANGUAGE MultiWayIf #-}

module Main where

import System.IO
import System.Environment
import Data.Char
import Data.List.Utils
import Debug.Trace

main = do
  args <- getArgs
  let targetFile = head args
  fContents <- readFile targetFile
  putStrLn $ reformat fContents


reformat :: String -> String
reformat txt = let
  in
    foldl joinLines "" $ lines txt

joinLines :: String -> String -> String
joinLines accumText nextLine = if
  -- start condidtion
  | accumText == "" -> accumText++nextLine
  -- if the next line is blank, just add a newline
  | null nextLine || all isSpace nextLine -> accumText++"\n"
  -- if we have a % at the start of the prev line, dont join
  | lastLineWasComment accumText -> accumText++"\n"++nextLine
  -- if this line is a comment, dont join anything
  | (not $ null nextLine) && ((head $ dropWhile isSpace nextLine) =='%' || (head $ dropWhile isSpace nextLine) =='\\') -> accumText++"\n"++nextLine
  -- dont move indented lines
  | isSpace $ head nextLine -> accumText++"\n"++nextLine
  -- if we ended with a period, dont move anything
  | (not $ null accumText) && last accumText == '.' -> accumText++"\n"++nextLine
  -- otherwise join the lines and split the next line on periods
  | otherwise -> accumText ++ (replace ". " ".\n" nextLine)

lastLineWasComment accumText = let
   prevLine = last $ lines accumText
 in
  (not $ null $ dropWhile isSpace $ prevLine) && 
  ((head $ dropWhile isSpace prevLine) =='%' ||
   (head $ dropWhile isSpace prevLine) =='\\' ||
   any (=='%') prevLine)

traceMe x= traceShow x x 
