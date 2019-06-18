#!/usr/bin/python3

'''
    Here's a list of words you can try, courtesy of these nice chaps: 
    https://examples.yourdictionary.com/palindrome-examples.html 

    Madam
    Mom
    Noon
    Racecar
    Radar
    Redder
    Refer
    Repaper
    Rotator
    Rotor
    
    Don't nod
    I did, did I
    My gym
    Red rum, sir, is murder
    Step on no pets
    Top spot
    No lemon, no melon
 
'''

entered_value =  input('Enter a single word or multiple words to see if they\'re palindromes: ').lower()
palindrome = ''.join(entered_value.split()).replace("'", "")
reversedString = palindrome[::-1]

if palindrome == reversedString:
    print("Word or phrase is a palindrome.")
else:
    print("Not a palindrome. {}".format(entered_value))    
    
