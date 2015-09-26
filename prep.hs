{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}
{-# OPTIONS_GHC -fno-warn-type-defaults #-}
import Shelly
import qualified Data.Text as T

import Control.Monad

default (T.Text)


main = do
  f <- shelly prep
  print f

prep = do
  cd "HW1"
  allhere <- ls =<< pwd
  here <- filterM test_d allhere
  mapM_ grade here
  return "test"

grade f = do
  cd f
  cd  "Submission attachment(s)"
  fs <- ls =<< pwd
  let hasFile xs = 
        if null xs 
        then echo "fail" 
        else let fn = toTextIgnore $ head xs
             in mapM_ ((flip $ run_) [fn]) ["python","cat"]
  mapM_ ((flip $ run_) []) ((replicate 5 "echo")++["pwd","echo"])
  hasFile $ filter (hasExt "py") fs

