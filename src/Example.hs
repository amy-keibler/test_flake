{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Example (HomeOccupant) where

import Data.Aeson
import Data.Bits
import GHC.Generics
import System.Random.Stateful

data HomeOccupant = Amy | Arya deriving (Eq, Show, Generic)

instance ToJSON HomeOccupant where
instance FromJSON HomeOccupant where

instance Uniform HomeOccupant where
  uniformM = fmap wordToOccupant . uniformWord8
    where wordToOccupant w
            |  w .&. 1 /= 0 = Amy
            | otherwise = Arya
