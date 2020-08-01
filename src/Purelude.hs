{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE ExplicitNamespaces #-}

module Purelude (
    identity,
) where

{- 
This is because most of the user-facing programs used @id@ as the user id field name.
Inspired by protolude.
-}
identity :: a -> a
identity x = x
