# Character Cords (Back End)

Introducing a new app that combines the fun of taking a personality test with the joy of music exploration. Discover new music that resonates with you and explore the fictional world of your favorite characters through music - and who knows, you might even uncover some real-life kindred spirits along the way!

## Table of Contents
- [Getting Started](#getting-started) 
- [Endpoints](#endpoints)
- [Goals](#goals)
- [Database and Schema](#database-and-schema)
- [Contributors](#contributors)

## Getting Started
Character Chords is a full-stack Ruby on Rails app that requires you to clone and set up both the [frontend](https://github.com/sandfortw/character_chords_fe) and backend repositories. You will need to ensure all required gems are installed and that environment variables are properly configured in order to run the app locally. Additionally, the app establishes API endpoints for use with the [Character Cords Front End](https://github.com/sandfortw/character_chords_fe) repository.

To get started, install all gems by running:
``` 
bundle install
```
Next, run this command to make sure the database is properly created and migrated:
```
rails db:{create,migrate}
```
After running that command, inspect `/db/schema` in the application to make sure the database was properly created. If you're unsure, you can compare with our [Schema](#database-and-schema)
## Endpoints
  - ### Endpoint for all the characters for a given quiz theme (should return 9 characters): 
  ```
  GET /chordsapi/v1/themes/:theme_id/characters
  ```
  ![all_characters](https://user-images.githubusercontent.com/116698937/232592597-2c95c81d-68a8-42df-afcd-4b154829f62f.png)
  - ### Endpoint for a specific character for a given quiz theme (insert numeric values for good/evil and lawful/chaotic scores):
  ```
  GET /chordsapi/v1/themes/3/characters/find_character?good_evil="#{:good_evil_score}"&lawful_chaotic="#{lawful_chaotic_score}"
  ```
  ![Screenshot 2023-04-17 at 2 41 49 PM](https://user-images.githubusercontent.com/116698937/232593468-b7fd2133-9059-4ed5-b1b0-00e15df12a05.png)
  - ### Endpoint for a given quiz themes' questions (should return 12 questions):
  ```
  GET /chordsapi/v1/themes/:theme_is/questions
  ```
  ![Screenshot 2023-04-17 at 2 50 36 PM](https://user-images.githubusercontent.com/116698937/232595246-a3041dfb-5ef3-4efd-befc-ce557779f1bb.png)
  - ### Endpoint for all quiz themes:
  ```
  GET /chordsapi/v1/themes/
  ```
  ![Screenshot 2023-04-17 at 2 58 29 PM](https://user-images.githubusercontent.com/116698937/232596852-6a3f92fc-8d8e-486d-aae2-51d4923efaf5.png)

## Goals
- list learning goals
- list future goals (whatever extensions we don't get to)

## Database and Schema
- Create db diagram and upload it to ![Screenshot 2023-04-17 at 2 29 43 PM](https://user-images.githubusercontent.com/116698937/232591202-c84bd797-0614-48b2-91df-4ab882c31f4c.png)
## Contributors
- list all of us and any other acknowledgments