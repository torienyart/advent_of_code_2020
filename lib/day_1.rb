# --- Day 1: Report Repair ---
# After saving Christmas five years in a row, you've decided to take a vacation at a nice resort on a tropical island. Surely, Christmas will go on without you.

# The tropical island has its own currency and is entirely cash-only. The gold coins used there have a little picture of a starfish; the locals just call them stars. None of the currency exchanges seem to have heard of them, but somehow, you'll need to find fifty of these coins by the time you arrive so you can pay the deposit on your room.

# To save your vacation, you need to get all fifty stars by December 25th.

# Collect stars by solving puzzles. Two puzzles will be made available on each day in the Advent calendar; the second puzzle is unlocked when you complete the first. Each puzzle grants one star. Good luck!

# Before you leave, the Elves in accounting just need you to fix your expense report (your puzzle input); apparently, something isn't quite adding up.

# Specifically, they need you to find the two entries that sum to 2020 and then multiply those two numbers together.

# For example, suppose your expense report contained the following:

# 1721
# 979
# 366
# 299
# 675
# 1456
# In this list, the two entries that sum to 2020 are 1721 and 299. Multiplying them together produces 1721 * 299 = 514579, so the correct answer is 514579.

# Of course, your expense report is much larger. Find the two entries that sum to 2020; what do you get if you multiply them together?

# --- Psuedocode ---
# input: a file of numbers separated by new lines
# output: a single number that multiplies two numbers that sum to 2020

# - read in the file and put each line into an array
# - iterate through the array to find the numbers that sum to 2020
#   - start an iteration through the array, take 2020 minus each element to find the necessary pair 
#   - search the array for the necessary pair
#   - if found, multiply the two together for a final answer


# --- Code ---
numbers_array = File.readlines("./info/day_1.txt", chomp: true)

numbers_array.each do |number|
  necessary_pair = 2020 - number.to_i
  if numbers_array.include?(necessary_pair.to_s)
    p necessary_pair * number.to_i
    return
  end
end


