module OneToTen
(myLast, myButLast)

where

-- Problem 1: Find the last element of a list.
myLast :: [a] -> a
myLast [] = error "Cannot get last element on empty list"
myLast xs = xs !! (length xs - 1)

-- Problem 2: Find the last but one element of a list.

myButLast :: [a] -> a
myButLast [] = error "Cannot get but one last element on empty list"
myButLast (a:[]) = error "Cannot get but one last element on list containing only one element"
myButLast x = (last . init) x

-- Find the K'th element of a list. The first element in the list is number 1.

elementAt list_ index = list_ !! (index - 1)