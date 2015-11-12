module Elm.Basics
    ( (<|), (|>)
    , degrees, radians, turns
    , clamp
    ) where

import qualified Math as Math
import qualified Prelude as Prelude

radians :: Number -> Number
radians t = t

degrees :: Number -> Number
degrees d = d Prelude.* Math.pi Prelude./ 180.0

turns :: Number -> Number
turns t = 2.0 Prelude.* Math.pi Prelude.* t

clamp :: Number -> Number -> Number -> Number
clamp lo hi x = Math.min hi (Math.max lo x)

(|>) :: forall a b. a -> (a -> b) -> b
(|>) x f = f x

(<|) :: forall a b. (a -> b) -> a -> b
(<|) f x = f x

infixr 0 <|
infixl 0 |>
