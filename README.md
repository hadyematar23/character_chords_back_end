# Character Chords (Back End)

Introducing a new app that combines the fun of taking a personality test with the joy of music exploration. Discover new music that resonates with you and explore the fictional world of your favorite characters through music - and who knows, you might even uncover some real-life kindred spirits along the way!

## Table of Contents
- [Getting Started](#getting-started) 
- [Endpoints](#endpoints)
- [Goals](#goals)
- [Database and Schema](#database-and-schema)
- [Contributors](#contributors)

## Getting Started
Character Chords is a full-stack Ruby on Rails app that requires you to clone and set up both the [frontend](https://github.com/sandfortw/character_chords_fe) and backend repositories. You will need to ensure all required gems are installed and that environment variables are properly configured in order to run the app locally. Additionally, this app establishes API endpoints for use with the [Character Chords Front End](https://github.com/sandfortw/character_chords_fe) repository.

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
  ### *Endpoint for all the characters for a given quiz theme* 
  Example response using the `lawyer` quiz theme: 

  `GET /chordsapi/v1/themes/:theme_id/characters`
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
  
  ### *Endpoint for a specific character for a given quiz theme*
  Example response from the `lawyer` quiz theme using `.5` for `GOOD_EVIL_SCORE` and `.5` for `LAWFUL_CHAOTIC_SCORE`

  `GET /chordsapi/v1/themes/3/characters/find_character?good_evil=GOOD_EVIL_SCORE&lawful_chaotic=LAWFUL_CHAOTIC_SCORE`
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
  
  ### *Endpoint for a given quiz themes' questions*
  Example using the `lawyer` quiz theme `id`:
  
  `GET /chordsapi/v1/themes/:theme_is/questions`
  
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

  ### *Endpoint for all quiz themes*

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

## Goals
### Learning Goals
- Create a web application that solves a real world problem and utilizes Service-Oriented Architecture (SOA).
- Implement authentication via OAuth and consume at least two other APIs.
- Develop a Rails "back end" API that acts as the interface layer to the database, handles API consumption, and uses Serializers.
- Gain professional development benefits such as experience working on a larger team, understanding the impact of changes on a system, and familiarity with SOA/multi-app systems.


- ### list future goals (whatever extensions we don't get to)

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

## Contributors
<table>
  <tr>
    <th>James White</th>
    <th>Madeline Mauser</th>
    <th>Sean Culliton</th>
    <th>William Wang</th>
  </tr>
  
  <tr>
    <td><img src="https://avatars.githubusercontent.com/u/108167041?s=120&v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/106927896?width="200" height="115""></td>
    <td><img src="https://avatars.githubusercontent.com/u/108320490?s=120&v=4"></td>
    <td><img src="https://ca.slack-edge.com/T029P2S9M-U03KQFD5WJK-e1166a8fec70-512?width="200" height="115""></td>
  </tr>

  <tr>
    <td>
      <a href="https://github.com/James-E-White"  rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
        </a><br>
      <a href="https://www.linkedin.com/in/james-ed-wh/" rel="nofollow noreferrer">
    <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
        </a>
    </td>
        <td>
       <a href="https://github.com/MadelineMauser" rel="nofollow noreferrer">
            <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
      </a><br>
        <a href="https://www.linkedin.com/in/madeline-mauser-644239245/" rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
      </a>
    </td>
        <td>
       <a href="https://github.com/smculliton" rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
      </a><br>
        <a href="https://www.linkedin.com/in/seanculliton" rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
      </a>
    </td>
        <td>
       <a href="https://github.com/willjw2" rel="nofollow noreferrer">
            <img src="https://i.stack.imgur.com/tskMh.png" alt="github"> Github
      </a><br>
        <a href="https://www.linkedin.com/in/william-wang-814442240/" rel="nofollow noreferrer">
          <img src="https://i.stack.imgur.com/gVE0j.png" alt="linkedin"> LinkedIn
      </a>
    </td>
  </tr>   
</table>