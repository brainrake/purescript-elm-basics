module Elm.Basics
    ( Int(..), Float(..)
    , (<|), (|>)
    , degrees, radians, turns
    , toFloat
    , clamp
    ) where

import qualified Math as Math

type Int = Number
type Float = Number

radians :: Float -> Float
radians t = t

degrees :: Float -> Float
degrees d = d * Math.pi / 180

turns :: Float -> Float
turns t = 2 * Math.pi * t

toFloat :: Int -> Float
toFloat = id

clamp :: Float -> Float -> Float -> Float
clamp lo hi x = Math.min hi $ Math.max lo x

(|>) :: forall a b. a -> (a -> b) -> b
(|>) x f = f x

(<|) :: forall a b. (a -> b) -> a -> b
(<|) f x = f x

infixr 0 <|
infixl 0 |>
