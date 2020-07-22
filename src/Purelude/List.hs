-- {-# LANGUAGE NoImplicitPrelude #-}

module Purelude.List () where

import Data.List.NonEmpty (NonEmpty)
import Data.List.NonEmpty (nonEmpty)
import Data.Maybe

toNonEmpty :: (NonEmpty a -> b) -> [a] -> Maybe b
toNonEmpty f = fmap f . nonEmpty
