# Guess The Number Game - Jackson Palermo
# A classic number guessing game implementation

import random

def check_answer(guess, secret):
    """
    Check if the guess matches, is larger than, or is smaller than the secret number.
    Returns True if correct, False otherwise.
    """
    if guess == secret:
        print("Correct!")
        return True
    elif guess > secret:
        print("Too large...")
        return False
    elif guess < secret:
        print("Too small...")
        return False

def validate_guess(guess):
    """
    Verifies that the player's guess is an integer and
    converts it into an integer if valid.
    """
    if guess.isnumeric():
        return int(guess)
    else:
        print('You did not type a number, try again!')
        return False

def play_game():
    """
    Main game function that runs the complete guessing game.
    """
    print("=== GUESS THE NUMBER GAME ===")
    print("I'm thinking of a number from 1 to 100.")
    
    # Generate a secret number
    secret = random.randint(1, 100)
    
    # Game loop
    game_over = False
    while not game_over:
        # Take a guess from the player
        guess = input("Please enter a guess: ")
        
        # Validate the guess
        if validate_guess(guess):
            guess = validate_guess(guess)
        else:
            continue
        
        # Check the guess against the secret
        game_over = check_answer(guess, secret)
    
    print("Congratulations! You won!")

# Test the check_answer function
if __name__ == "__main__":
    print("Testing check_answer function:")
    print("Testing correct guess (42, 42):")
    check_answer(42, 42)
    
    print("\nTesting too small guess (35, 65):")
    check_answer(35, 65)
    
    print("\nTesting too large guess (90, 80):")
    check_answer(90, 80)
    
    print("\n" + "="*50)
    # Uncomment the line below to play the full game
    # play_game() 