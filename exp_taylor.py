
def exp_taylor(x, terms=20):
    result = 1.0
    term = 1.0
    for i in range(1, terms):
        term *= x / i
        result += term
    return result

# Example usage
print(exp_taylor(1))  # Approximate value of e^1
