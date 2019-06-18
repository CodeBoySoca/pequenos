n = 1

while n < 101:
    if n % 3 == 0 and n % 5 == 0:
        print("fizz buzz")
    elif n % 5 == 0:
        print("buzz")
    elif n % 3 == 0:
        print("fizz")
    else:
        print(n)
    n += 1
     
