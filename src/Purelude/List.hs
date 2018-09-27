{-# LANGUAGE NoImplicitPrelude #-}

module Purelude.List (
    head,
    list,
    map,
    empty,
    (++),
    concat,
    sum,
    product,
) where

import Data.Functor (Functor, fmap)
import Data.Monoid (Monoid, mappend, mempty, mconcat)
import Data.Maybe (Maybe(..))
import Data.Foldable (Foldable, foldr, foldl')
import Control.Applicative (pure)
import GHC.Num (Num, (+), (*))

head :: (Foldable f) => f a -> Maybe a
head = foldr (\x _ -> pure x) Nothing

list :: [b] -> (a -> b) -> [a] -> [b]
list def f xs = case xs of
    [] -> def
    _  -> fmap f xs

map :: (Functor f) => (a -> b) -> f a -> f b
map = fmap

{-# DEPRECATED empty "Use mempty" #-}
empty :: Monoid w => w
empty = mempty

infixr 5 ++
(++) :: Monoid w => w -> w -> w
(++) = mappend

concat :: Monoid w => [w] -> w
concat = mconcat

{-# INLINE sum #-}
sum :: (Foldable f, Num a) => f a -> a
sum = foldl' (+) 0

{-# INLINE product #-}
product :: (Foldable f, Num a) => f a -> a
product = foldl' (*) 1
