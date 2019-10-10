def Print_something():
    print("Printing something")
    
def Return_value(data):
    return data
    
def Calculate_values(*args):
    total = 0
    for number in args:
        total += int(number)
    print(total)
    
    
# def Calculate_values(value1, value2):
#     print(int(value1) + int(value2))
#     