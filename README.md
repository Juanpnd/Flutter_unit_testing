# Game Market App

A simple Flutter application using MVVM architecture to demonstrate unit testing.

## Features
- Add a game to the list
- Mark a game as bought
- Remove a game from the list
- Find a game by ID

## Unit Testing
Unit tests are available in `test/game_view_model_test.dart`.

### Tested Functions (Each with 1 sentence explanation):
1. **addGame** – Tests adding a new game to the list and checking its presence.
2. **markAsBought** – Tests whether a game can be marked as bought by its ID.
3. **removeGame** – Tests the removal of a game from the list by ID.
4. **findGameById** – Tests whether a game can be retrieved correctly by ID.

## Running the Tests
```bash
flutter test
```
