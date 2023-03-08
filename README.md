# AILeetcode.jl


by running the script in `test/bin.jl` I was able to automatically solve 23/50 of the problems from [this Leetcode page](https://leetcode.com/problem-list/top-interview-questions/?sorting=W3sic29ydE9yZGVyIjoiQVNDRU5ESU5HIiwib3JkZXJCeSI6IkRJRkZJQ1VMVFkifV0%3D)

note that ChatGPT often writes nonsensical tests, and I haven't personally verified the correctness of the solutions

heres the index of the problems that were solved correctly:

| prob_id |                                          prob_name |                                                                          prob_url |
|---------|----------------------------------------------------|-----------------------------------------------------------------------------------|
|       1 |                                            Two Sum |                                            https://leetcode.com/problems/two-sum/ |
|      13 |                                   Roman to Integer |                                   https://leetcode.com/problems/roman-to-integer/ |
|      14 |                              Longest Common Prefix |                              https://leetcode.com/problems/longest-common-prefix/ |
|      20 |                                  Valid Parentheses |                                  https://leetcode.com/problems/valid-parentheses/ |
|      21 |                             Merge Two Sorted Lists |                             https://leetcode.com/problems/merge-two-sorted-lists/ |
|      26 |                Remove Duplicates from Sorted Array |                https://leetcode.com/problems/remove-duplicates-from-sorted-array/ |
|      28 | Find the Index of the First Occurrence in a String | https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/ |
|      66 |                                           Plus One |                                           https://leetcode.com/problems/plus-one/ |
|      69 |                                            Sqrt(x) |                                              https://leetcode.com/problems/sqrtx/ |
|      70 |                                    Climbing Stairs |                                    https://leetcode.com/problems/climbing-stairs/ |
|      88 |                                 Merge Sorted Array |                                 https://leetcode.com/problems/merge-sorted-array/ |
|      94 |                      Binary Tree Inorder Traversal |                      https://leetcode.com/problems/binary-tree-inorder-traversal/ |
|     101 |                                     Symmetric Tree |                                     https://leetcode.com/problems/symmetric-tree/ |
|     104 |                       Maximum Depth of Binary Tree |                       https://leetcode.com/problems/maximum-depth-of-binary-tree/ |
|     108 |         Convert Sorted Array to Binary Search Tree |         https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/ |
|     118 |                                  Pascal's Triangle |                                   https://leetcode.com/problems/pascals-triangle/ |
|     121 |                    Best Time to Buy and Sell Stock |                    https://leetcode.com/problems/best-time-to-buy-and-sell-stock/ |
|     125 |                                   Valid Palindrome |                                   https://leetcode.com/problems/valid-palindrome/ |
|     136 |                                      Single Number |                                      https://leetcode.com/problems/single-number/ |
|     141 |                                  Linked List Cycle |                                  https://leetcode.com/problems/linked-list-cycle/ |
|     160 |                   Intersection of Two Linked Lists |                   https://leetcode.com/problems/intersection-of-two-linked-lists/ |
|     163 |                                     Missing Ranges |                                     https://leetcode.com/problems/missing-ranges/ |
|     169 |                                   Majority Element |                                   https://leetcode.com/problems/majority-element/ |
|     171 |                          Excel Sheet Column Number |                          https://leetcode.com/problems/excel-sheet-column-number/ |
|     190 |                                       Reverse Bits |                                       https://leetcode.com/problems/reverse-bits/ |
|     191 |                                   Number of 1 Bits |                                   https://leetcode.com/problems/number-of-1-bits/ |
|     202 |                                       Happy Number |                                       https://leetcode.com/problems/happy-number/ |
|     206 |                                Reverse Linked List |                                https://leetcode.com/problems/reverse-linked-list/ |
|     217 |                                 Contains Duplicate |                                 https://leetcode.com/problems/contains-duplicate/ |
|     234 |                             Palindrome Linked List |                             https://leetcode.com/problems/palindrome-linked-list/ |
|     242 |                                      Valid Anagram |                                      https://leetcode.com/problems/valid-anagram/ |
|     268 |                                     Missing Number |                                     https://leetcode.com/problems/missing-number/ |
|     283 |                                        Move Zeroes |                                        https://leetcode.com/problems/move-zeroes/ |
|     326 |                                     Power of Three |                                     https://leetcode.com/problems/power-of-three/ |
|     344 |                                     Reverse String |                                     https://leetcode.com/problems/reverse-string/ |
|     350 |                      Intersection of Two Arrays II |                      https://leetcode.com/problems/intersection-of-two-arrays-ii/ |
|     387 |                 First Unique Character in a String |                 https://leetcode.com/problems/first-unique-character-in-a-string/ |
|     412 |                                          Fizz Buzz |                                          https://leetcode.com/problems/fizz-buzz/ |
|       2 |                                    Add Two Numbers |                                    https://leetcode.com/problems/add-two-numbers/ |
|       3 |     Longest Substring Without Repeating Characters |     https://leetcode.com/problems/longest-substring-without-repeating-characters/ |
|       5 |                      Longest Palindromic Substring |                      https://leetcode.com/problems/longest-palindromic-substring/ |
|       7 |                                    Reverse Integer |                                    https://leetcode.com/problems/reverse-integer/ |
|       8 |                           String to Integer (atoi) |                             https://leetcode.com/problems/string-to-integer-atoi/ |
|      11 |                          Container With Most Water |                          https://leetcode.com/problems/container-with-most-water/ |
|      15 |                                               3Sum |                                               https://leetcode.com/problems/3sum/ |
|      17 |              Letter Combinations of a Phone Number |              https://leetcode.com/problems/letter-combinations-of-a-phone-number/ |
|      19 |                   Remove Nth Node From End of List |                   https://leetcode.com/problems/remove-nth-node-from-end-of-list/ |
|      22 |                               Generate Parentheses |                               https://leetcode.com/problems/generate-parentheses/ |
|      29 |                                Divide Two Integers |                                https://leetcode.com/problems/divide-two-integers/ |
|      33 |                     Search in Rotated Sorted Array |                     https://leetcode.com/problems/search-in-rotated-sorted-array/ |
