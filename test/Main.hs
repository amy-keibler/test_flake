module Main where

import Test.Hspec 
import Test.Tasty
import Test.Tasty.Hspec as HS

main = do
  hspecTests <- HS.testSpec "Hspec Tests" hspecTestSuite
  defaultMain hspecTests

hspecTestSuite :: Spec
hspecTestSuite = do
  describe "First test" $ do
    it "should fail" $ do
      1 `shouldBe` 2
