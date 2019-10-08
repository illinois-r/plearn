import random 

def generate(data):

  # Generate a numeric value
  x = round(random.uniform(1, 10), 2)
  
  data['correct_answers']['x'] = x
