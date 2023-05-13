employe_first_name = "Carlos"
employe_last_name = "Membreno"
prefix_text = "Hello"

welcome_message = prefix_text + employe_first_name + employe_last_name

print(welcome_message.upper())

employe_basic_salary_cs = 10000
platform_fee_percentage = 0.1

def calculate_fee_amount_cs(a,b):
     return a * b 

def payment_after_fee(a,b):
    return a - calculate_fee_amount_cs(a, b)

employe_payment =  payment_after_fee(employe_basic_salary_cs,platform_fee_percentage)

print(("Your basic salary is : "+ str(employe_basic_salary_cs)).upper())
print(("Your payment after fee is : "+ str(employe_payment)).upper())