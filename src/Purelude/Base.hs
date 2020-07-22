{-# LANGUAGE CPP #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE ExplicitNamespaces #-}

module Purelude.Base (
    module X,
) where

-------------------------------------------- [ Print utilities ]
import System.IO as X (
    print
  , putStr
  , putStrLn
  )
  