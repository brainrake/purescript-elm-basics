module Test.Main where

import Prelude
import Elm.Basics (radians, turns, degrees, (<|), (|>))
import Data.Int (toNumber)
import Control.Monad.Eff.Console (log)

-- main :: forall eff. Eff (console :: CONSOLE | eff) Unit
main = do
  log $ show (0.0 == (radians <| (turns <| toNumber 2) - (720.0 |> degrees)))
