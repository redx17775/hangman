# 🎯 Hangman Game in Lua

A classic hangman word guessing game implemented in Lua with ASCII art and multiple word categories.

## 🎮 Features

- **Multiple Categories**: Choose from movies, fruits, or animals
- **ASCII Art**: Beautiful hangman ASCII art that updates with each wrong guess
- **Interactive Gameplay**: Simple command-line interface for letter guessing
- **Win/Lose Detection**: Clear victory and game over screens
- **Case Insensitive**: Works with both uppercase and lowercase input

## 🚀 How to Play

1. **Run the game**:
   - On **Windows**, set UTF-8 first to render ASCII art correctly:
     ```powershell
     chcp 65001
     lua main.lua
     ```
   - On **macOS/Linux**:
     ```bash
     lua main.lua
     ```

2. **Choose a category**:
   - Enter `1` for Movies
   - Enter `2` for Fruits  
   - Enter `3` for Animals

3. **Guess letters**:
   - Type a single letter and press Enter
   - Correct letters will be revealed in the word
   - Wrong letters will add parts to the hangman drawing

4. **Win or Lose**:
   - **Win**: Guess all letters before the hangman is complete
   - **Lose**: Make 6 wrong guesses and the hangman is drawn

## 📁 Project Structure

```
hangman/
├── main.lua          # Main game logic and flow
├── renderWord.lua    # Word rendering and letter checking utilities
├── tui.lua          # ASCII art and UI elements
├── wordBank.lua     # Word categories and selection logic
└── README.md        # This file
```

## 🔧 Technical Details

### Dependencies
- **Lua 5.1+** (or compatible interpreter)
- No external libraries required

### Game Logic
- **Maximum Tries**: 6 wrong guesses
- **Word Categories**: 3 categories with 5 words each
- **Random Selection**: Uses `math.random()` for word selection
- **Input Validation**: Case-insensitive letter input

### File Descriptions

- **`main.lua`**: Contains the main game loop, win/lose conditions, and user interaction
- **`renderWord.lua`**: Handles word display logic, letter position finding, and table utilities
- **`tui.lua`**: Stores all ASCII art including the hangman drawing stages and game messages
- **`wordBank.lua`**: Manages word categories and random word selection

## 🎯 Word Categories

### Movies
- Inception, Avatar, Titanic, Joker, Interstellar

### Fruits  
- Banana, Orange, Mango, Grapes, Papaya

### Animals
- Elephant, Giraffe, Tiger, Kangaroo, Dolphin

## 🖥️ Screenshots

The game features:
- ASCII art hangman that builds with each wrong guess
- Clean word display with underscores for unguessed letters
- Victory and game over screens with ASCII text
- Category selection menu

## 🛠️ Installation & Setup

1. **Clone or download** this repository
2. **Ensure Lua is installed** on your system
3. **Run the game**:
   - On **Windows**:
     ```powershell
     chcp 65001
     lua main.lua
     ```
   - On **macOS/Linux**:
     ```bash
     lua main.lua
     ```

### Platform Notes
- The game now auto-detects your OS and clears the screen using `cls` on Windows and `clear` on macOS/Linux.

## 🎨 Customization

### Adding New Categories
Edit `wordBank.lua` to add new word categories:

```lua
local myWord = {
    ["movies"] = {"Inception", "Avatar", "Titanic", "Joker", "Interstellar"},
    ["fruits"] = {"Banana", "Orange", "Mango", "Grapes", "Papaya"},
    ["animals"] = {"Elephant", "Giraffe", "Tiger", "Kangaroo", "Dolphin"},
    ["your_category"] = {"Word1", "Word2", "Word3", "Word4", "Word5"}
}
```

### Modifying Game Difficulty
Change the maximum tries in `main.lua`:
```lua
local tries = 6  -- Change this number
```

## 📝 License

This project is open source and available under the MIT License.

## 🤝 Contributing

Feel free to submit issues, fork the repository, and create pull requests for any improvements.

---

**Enjoy playing Hangman! 🎮**
