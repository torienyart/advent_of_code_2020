# --- Day 2: Password Philosophy ---
# Your flight departs in a few days from the coastal airport; the easiest way down to the coast from here is via toboggan.

# The shopkeeper at the North Pole Toboggan Rental Shop is having a bad day. "Something's wrong with our computers; we can't log in!" You ask if you can take a look.

# Their password database seems to be a little corrupted: some of the passwords wouldn't have been allowed by the Official Toboggan Corporate Policy that was in effect when they were chosen.

# To try to debug the problem, they have created a list (your puzzle input) of passwords (according to the corrupted database) and the corporate policy when that password was set.

# For example, suppose you have the following list:

# 1-3 a: abcde
# 1-3 b: cdefg
# 2-9 c: ccccccccc
# Each line gives the password policy and then the password. The password policy indicates the lowest and highest number of times a given letter must appear for the password to be valid. For example, 1-3 a means that the password must contain a at least 1 time and at most 3 times.

# In the above example, 2 passwords are valid. The middle password, cdefg, is not; it contains no instances of b, but needs at least 1. The first and third passwords are valid: they contain one a or nine c, both within the limits of their respective policies.

# How many passwords are valid according to their policies?

# # 

# 1. Read in the file information in "day_2.txt" and store policy number, policy letter, and password as separate values in nested arrays

file = File.read("./info/day_2.txt")

strings_array = file.split("\n")


policy_pass_array = strings_array.map do |string|
  policy, password = string.split(": ")
  policy.split(" ") + [password]
end


# 2. Use a method to check to make sure if the correct amount of the required policy letter exists within the password
  # a. probably want to use an include? method or something of the like to count the amount of required letters in the associated password

  # b. use a map function to put a true or false into a new array for if the password is valid or not


t_f_array = policy_pass_array.map do |pass_array|
  min, max = pass_array.first.split("-")
  required_letter_count = pass_array.last.count(pass_array[1])
  required_letter_count >= min.to_i && required_letter_count <= max.to_i
end

# 3. Count the number of true elements in the mapped array to return the number of valid passwords

puts valid_password_count = t_f_array.count(true)


