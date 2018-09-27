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

import GHC.Types as X (
    Bool
  , Char
  , Int
  , Word
  , IO
#if ( __GLASGOW_HASKELL__ >= 710 )
  , Coercible
#endif
  )

import GHC.Num as X (
    Num(..)
  , Integer
  , subtract
  )
  