module Main where

import Data.List ((\\),sort,nub)
import Test.QuickCheck
import Sortedtree

propInsert :: [Int] -> Bool
propInsert xs = null (nub xs \\ toList (fromList xs))

propSorted :: [Int] -> Bool
propSorted xs = toList (fromList xs) == sort (nub xs)

main :: IO ()
main = do
  quickCheck propSorted
  quickCheck propInsert
