#!/usr/bin/python3

entered_value =  input('Enter a single word or multiple words to see if they\'re palindromes: ').lower()
palindrome = ''.join(entered_value.split()).replace("'", "")
reversedString = palindrome[::-1]

if palindrome == reversedString:
    print("Word or phrase is a palindrome.")
else:
    print("Not a palindrome. {}".format(entered_value))    
    
