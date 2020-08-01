-- {-# LANGUAGE NoImplicitPrelude #-}

module Purelude.List (
    toNonEmpty,
    tailMay,
) where

import Data.List.NonEmpty (NonEmpty)
import Data.List.NonEmpty (nonEmpty)
-- import Data.Maybe
import Safe
    ( tailMay
    )

-- | Transform the
toNonEmpty :: (NonEmpty a -> b) -> [a] -> Maybe b
toNonEmpty f = fmap f . nonEmpty
