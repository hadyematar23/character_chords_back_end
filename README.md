# Character Chords (Back End)

Introducing a new app that combines the fun of taking a personality test with the joy of music exploration. Discover new music that resonates with you and explore the fictional world of your favorite characters through music - and who knows, you might even uncover some real-life kindred spirits along the way!

## Table of Contents
- [Getting Started](#getting-started) 
- [Endpoints](#endpoints)
- [Database and Schema](#database-and-schema)
- [Photo Storage](#photo-rights-and-storage)
- [Goals](#goals)
- [Contributors](#contributors)

## Getting Started
Character Chords is a full-stack Ruby on Rails app that requires you to clone and set up both the [frontend](https://github.com/sandfortw/character_chords_fe) and backend repositories. You will need to ensure all required gems are installed and that environment variables are properly configured in order to run the app locally. Additionally, this app establishes API endpoints for use with the [Character Chords Front End](https://github.com/sandfortw/character_chords_fe) repository.

To get started, clone this repo down and install all gems by running:
``` 
bundle install
```
Next, run this command to make sure the database is properly created and migrated:
```
rails db:{create,migrate}
```
After running that command, inspect `/db/schema` in the application to make sure the database was properly created. This is what the schema [should look like.](#database-and-schema)
## Endpoints
  ### Endpoint 1: *Endpoint for all the characters for a given quiz theme* 
  Example response using the `lawyer` quiz theme: 

  `GET /chordsapi/v1/themes/:theme_id/characters` is the setup 
  
  `GET /chordsapi/v1/themes/2/characters` is a bonafide query that should return the following: 
  
  ```bash
  [
    {
      "links": {
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Thurgood-marshall-2.jpg/220px-Thurgood-marshall-2.jpg"
      },
      "data": {
        "type": "character",
        "theme_id": 2,
        "attributes": {
          "name": "Thurgood Marshall",
          "quiz": "lawyer",
          "alignment": "Lawful Good",
          "character_id": 10,
          "description": "You are Thurgood Marshall, the legendary civil rights attorney and Supreme Court Justice..."
        }
      }
    },
    {
      "links": {
        "image": "https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Amal_Clooney_02.jpg/1280px-Amal_Clooney_02.jpg"
      },
      "data": {
        "type": "character",
        "theme_id": 2,
        "attributes": {
          "name": "Amal Clooney",
          "quiz": "lawyer",
          "alignment": "Neutral Good",
          "character_id": 11,
          "description": "You are Amal Clooney, a lawyer and activist who..."
        }
      }
    }, etc.
  ]
  ```
  *NOTE:* Response should return `9 Characters`
  
  ### Endpoint 2: *Endpoint for a specific character for a given quiz theme*
  Example response from the `lawyer` quiz theme using `.5` for `GOOD_EVIL_SCORE` and `.5` for `LAWFUL_CHAOTIC_SCORE`

  `GET /chordsapi/v1/themes/3/characters/find_character?good_evil=GOOD_EVIL_SCORE&lawful_chaotic=LAWFUL_CHAOTIC_SCORE` is a sample query. 
  
  `GET /chordsapi/v1/themes/3/characters/find_character?good_evil=0.5&lawful_chaotic=0.5`is a bonafide query which whoudl produce the following results: 
  
  ```bash
  {
    "links": {
      "image": "https://upload.wikimedia.org/wikipedia/commons/b/b4/Robert-shapiro.jpg"
    },
    "data": {
      "type": "character",
      "theme_id": 2,
      "attributes": {
        "name": "Robert Shapiro",
        "quiz": "lawyer",
        "alignment": "True Neutral",
        "character_id": 14,
        "description": "You are Robert Shapiro (O.J. Simpson's lawyer), a true neutral..."
      }
    }
  }
  ```
  *NOTE:* Pass numeric decimal values (1.0 - 0.0) for `GOOD_EVIL_SCORE` and `LAWFUL_CHAOTIC_SCORE` 
  
  
  
  ### Endpoint 3: *Endpoint for a given quiz themes' questions*
  Each theme is made up of 12 questions; this endpoint will provide the 12 questions for the `theme_id` passed through.  
  Example using the `lawyer` quiz theme id:
  
  `GET /chordsapi/v1/themes/:theme_id/questions` is the format. 
  
  `GET /chordsapi/v1/themes/2/questions` is a bonafide query that should result in the following response: 
  
  ```bash
  {
    "links": {
      "image": "http://image.com"
    },
    "data": [
      {
        "type": "question",
        "id": 1,
        "attributes": {
          "name": "A high-profile client offers you a significant sum of money to represent them in a case where they are clearly guilty. What do you do?",
          "quiz": "lawyer",
          "spectrum": "good_evil",
          "answers": {
            "A": {
              "text": "Reject the case outright on moral grounds.",
              "value": 1
            },
            "B": {
              "text": "Accept the case but donate the earnings to charity",
              "value": 2
            },
            "C": {
              "text": "Accept the case and do your best to defend the client.",
              "value": 3
            },
            "D": {
              "text": "Accept the case and use any means necessary to win, even if it involves bending the truth.",
              "value": 4
            },
            "E": {
              "text": "Accept the case and actively participate in covering up the client's crimes.",
              "value": 5
            }
          }
        }
      }, etc.
    ]
  }
  ```
  *NOTE:* Response should return `12 Questions`  

  ### Endpoint 4: *Endpoint for all quiz themes*

  `GET /chordsapi/v1/themes/`
  ```bash
  {
    "data": [
      {
        "type": "theme",
        "id": 2,
        "attributes": {
          "name": "lawyer",
          "image": "https://images.pexels.com/photos/3771097/pexels-photo-3771097.jpeg"
        }
      },
      {
        "type": "theme",
        "id": 3,
        "attributes": {
          "name": "alignment",
          "image": "https://images.pexels.com/photos/137049/pexels-photo-137049.jpeg"
        }
      }, etc.
    ]
  }  
  ```
  *NOTE:* Response should contain all `Quizzes`

## Database and Schema
```bash
  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.float "good_min"
    t.float "good_max"
    t.float "lawful_min"
    t.float "lawful_max"
    t.string "description"
    t.bigint "theme_id", null: false
    t.string "url"
    t.integer "alignment", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_characters_on_theme_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string "genre"
    t.string "character"
    t.string "alignment"
    t.text "songs", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "theme_id", null: false
    t.string "question"
    t.string "answer_1"
    t.string "answer_2"
    t.string "answer_3"
    t.string "answer_4"
    t.string "answer_5"
    t.integer "good_evil_chaotic_lawful", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theme_id"], name: "index_questions_on_theme_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_link"
  end

  add_foreign_key "characters", "themes"
  add_foreign_key "questions", "themes"
```

## Photo Rights and Storage

The photos were first plucked from the internet (with best efforts being made to adhere to fair use) and are stored digitally in an S3 bucket run by Amazon Web Services cloud services. 

## Goals
### Learning Goals
- Create a web application that solves a real world problem and utilizes Service-Oriented Architecture (SOA).
- Implement authentication via OAuth and consume at least two other APIs.
- Develop a Rails "back end" API that acts as the interface layer to the database, handles API consumption, and uses Serializers.
- Gain professional development benefits such as experience working on a larger team, understanding the impact of changes on a system, and familiarity with SOA/multi-app systems.

### Extension Ideas
- With additional time and resources, we would like to implement the ChatGPT API in at least two other locations in the project. First, in the creation of the questions and answers for quizzes. We would like for the user to be able to input a profession or a theme and then receive the relevant alignment questions based off of their input. As of the production of this project (April 2023), the API only supports Chat GPT3.5 and not 4.0, making longer and more complex queries more volatile based on user input. 
- We would also like to implmenet DALL-E 2, the image generator of Open AI to provide a fictional album cover that is based off of the individual user's character selected and music genre. We would then upload the image to the user's Spotify playlist and send them the image in PDF format along with their playlist selection. 



## Contributors
<table>
  <tr>
    <th>Hady Matar</th>
    <th>Harrison Ryan</th>
    <th>James Taylor</th>
    <th>Weston Sandfort</th>
  </tr>
  
<tr>
  <td><img src="https://avatars.githubusercontent.com/u/115317749?v=4" width="150" height="150"></td>
  <td><img src="https://avatars.githubusercontent.com/u/116698937?v=4" width="150" height="150"></td>
  <td><img src="https://avatars.githubusercontent.com/u/117054959?v=4" width="150" height="150"></td>
  <td><img src="https://avatars.githubusercontent.com/u/80081206?v=4" width="150" height="150"></td>
</tr>


  <tr>
    <td>
      <a href="https://github.com/hadyematar23"  rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
        </a><br>
      <a href="https://www.linkedin.com/in/hady-emmanuel-matar/" rel="nofollow noreferrer">
    <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
        </a>
    </td>
        <td>
       <a href="https://github.com/hwryan12" rel="nofollow noreferrer">
            <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
      </a><br>
        <a href="https://www.linkedin.com/in/harrison-ryan-2b987725a/" rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
      </a>
    </td>
        <td>
       <a href="https://github.com/JTaylor28" rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
      </a><br>
        <a href="https://www.linkedin.com/in/james-taylor-a02a7a199/" rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
      </a>
    </td>
        <td>
       <a href="https://github.com/sandfortw" rel="nofollow noreferrer">
            <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
      </a><br>
        <a href="https://www.linkedin.com/in/westonsandfort/" rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
      </a>
    </td>
  </tr>   
</table>
