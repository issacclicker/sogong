def sum_numbers():
    total = 0
    for i in range(1, 11):
        total += i
    return total

result = sum_numbers()
print("1부터 10까지의 합:", result)