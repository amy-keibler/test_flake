module Main where

import Data.Aeson
import Example
import System.Random
import System.Random.Stateful


main :: IO ()
main = do
  occupant <- chooseHomeOccupant
  putStrLn $ "Hello, " <> show occupant <> "!"

chooseHomeOccupant :: IO HomeOccupant
chooseHomeOccupant = do
  stdGen <- getStdGen
  g <- newIOGenM stdGen
  uniformM g
