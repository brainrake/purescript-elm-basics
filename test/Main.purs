module Test.Main where

import Elm.Basics
import Debug.Trace

main = do
  print (0 == (radians <| (turns <| toFloat 2) - (720 |> degrees)))
