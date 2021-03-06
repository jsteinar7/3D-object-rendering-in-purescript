module Data.Functor.Contravariant where

import Prelude

-- | A `Contravariant` functor can be seen as a way of changing the input type
-- | of a consumer of input, in contrast to the standard covariant `Functor`
-- | that can be seen as a way of changing the output type of a producer of
-- | output.
-- |
-- | `Contravariant` instances should satisfy the following laws:
-- |
-- | - Identity `(>$<) id = id`
-- | - Composition `(f >$<) <<< (g >$<) = (>$<) (g <<< f)`
class Contravariant f where
  cmap :: forall a b. (b -> a) -> f a -> f b

infixl 4 cmap as >$<

-- | `cmapFlipped` is `cmap` with its arguments reversed.
cmapFlipped :: forall a b f. Contravariant f => f a -> (b -> a) -> f b
cmapFlipped x f = f >$< x

infixl 4 cmapFlipped as >#<

coerce :: forall f a b. Contravariant f => Functor f => f a -> f b
coerce a = absurd <$> (absurd >$< a)
