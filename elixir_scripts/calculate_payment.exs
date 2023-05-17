# This script contains a practice of Elixir Basic Types

# Employee data
employee = {
  :full_name, "Carlos Membreno",
  :basic_salary, 1000,
  :skills, ["excel","powerbi","macros"],
  :platform_fee_percentage, 0.1
}

# Functions to calculate fee amount and payment after fee
calculate_fee_amount = fn a, b -> a * b end
calculate_payment_after_fee = fn a,b -> a - calculate_fee_amount.(a, b) end

# Using pattern matching extracts the values from the tuple into separate variables
{_, employee_full_name, _, employee_basic_salary, _, employee_skills, _, platform_fee_percentage} = employee

# Calculate employee payment
employee_payment =  calculate_payment_after_fee.(employee_basic_salary,platform_fee_percentage)

# Print payment result
message = "Hello #{employee_full_name}\nSkills: #{Enum.join(employee_skills, ", ")}\nYour payment is for USD= #{employee_payment}"
IO.puts(String.upcase(message))
