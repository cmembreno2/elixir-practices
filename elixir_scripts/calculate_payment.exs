employe_first_name = :carlos
employe_last_name = :membreno
employe_names = [employe_first_name,employe_last_name]
prefix_text = "Hello"

welcome_message = "#{prefix_text} #{employe_first_name} #{employe_last_name}"

IO.puts(String.upcase(welcome_message))

employe_basic_salary_cs = 10000
platform_fee_percentage = 0.1

calculate_fee_amount_cs = fn a, b -> a * b end

payment_after_fee = fn a,b -> a - calculate_fee_amount_cs.(a, b) end

employe_payment =  payment_after_fee.(employe_basic_salary_cs,platform_fee_percentage)


IO.puts(String.upcase("Your basic salary is : #{employe_basic_salary_cs}"))
IO.puts(String.upcase("Your payment after fee is : #{employe_payment}"))
