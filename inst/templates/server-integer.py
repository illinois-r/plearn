import random 

def generate(data):

  # Generate an integer
  x = random.randint(1, 10)
  
  data['correct_answers']['x'] = x
