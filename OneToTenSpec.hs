import Test.Hspec
import Test.QuickCheck
import Control.Exception
import OneToTen

main :: IO ()
main = hspec $ do 
    describe "Exercises one to ten" $ do
        describe "myLast" $ do
            it "should throw error on empty list" $ do
                myLast [] `shouldThrow` anyException
            it "should return last element in list of integrals" $ do
                myLast [1..10] `shouldBe` (10::Int)
            it "should return last element in list of strings" $ do
                myLast ['A'..'Z'] `shouldBe` ('Z'::Char)
        describe "myButLast" $ do
            it "should throw error on empty list" $ do
                myButLast [] `shouldThrow` anyException
            it "should throw error on singleton list" $ do
                evaluate (myButLast ['A']) `shouldThrow` anyException
            it "should return one but last element in a list" $ do
                myButLast [1..10] `shouldBe` (9::Int)