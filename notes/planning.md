8 balls = 1 2 3 4 5 6 7 8
randomize the numbers eg 4 5 3 2

clues
c = correct but wrong position
C = correct with position
eg c-c-C

game eg.
code: 8-1-4-5
1st guess: 1-2-3-4
clues: c-c
2nd guess:3-5-4-6
clues: c-C
3rd guess:5-6-7-8
clues:c-c
...
9th guess:
Answer: 4-5-3-2

---------------------------------------------

Setup Game
1. set up a random number generator.
2. generate a random number 8 digits long

Play Game
1. set up guess variables (c and C)
2. set up guess loop (max 9 iterations)
3. get input (answer) from user
4. check if input contains any correct digits
5. return an out put matching the amount and position of the correct digits if any. eg c-C
6. Next iteration of loop