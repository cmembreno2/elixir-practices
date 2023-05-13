employee = {
  "full_name": "Carlos Membreno",
  "basic_salary": 1000,
  "skills": ["excel", "powerbi", "macros"],
  "platform_fee_percentage": 0.1
}

def calculate_fee_amount(a, b):
  return a * b

def calculate_payment_after_fee(a, b):
  return a - calculate_fee_amount(a, b)

employee_full_name = employee["full_name"]
employee_basic_salary = employee["basic_salary"]
employee_skills = employee["skills"]
platform_fee_percentage = employee["platform_fee_percentage"]

employee_payment = calculate_payment_after_fee(employee_basic_salary, platform_fee_percentage)

message = f"Hello {employee_full_name}\nSkills: {', '.join(employee_skills)}\nYour payment is for USD= {employee_payment}"
print(message.upper())
