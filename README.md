## Environment Quiz app

A quiz app with a specific theme, the environment. Users will be able to create a quiz of their own
and/or take a quiz that they or others have created.

## Idea and planning process to building app

The idea for the app came from wanting to learn how to build a quiz app. 

## Technologies Used

html, css, Ember, Ruby on Rails

## Entity Relationship Diagram (ERD)

User --< Quiz --< Questions

A user `has_many` quizzes
A quiz `belongs_to` user

A quiz `has_many` Questions
A question belongs_to quiz

## API end-points

| Verb   | URI Pattern            | Controller#Action  |
|--------|----------------------- |------------------  |
| POST   | `/sign-up`             | `users#signup`     |
| POST   | `/sign-in`             | `users#signin`     |
| DELETE | `/sign-out/:id`        | `users#signout`    |
| PATCH  | `/change-password/:id` | `users#changepw`   |
|--------|----------------------- |------------------  |
| POST   | `/quizzes`             | `quizzes#create`   |
| PATCH  | `/quizzes/:id`         | `quizzes#update`   |
| GET    | `/quizzes`             | `quizzes#index`    |
| GET    | `/quizzes/:id`         | `quizzes#show`     |
| DELETE | `/quizzes/:id`         | `quizzes#destroy`  |
|--------|----------------------- |------------------  |
| POST   | `/questions`           | `questions#create` |
| PATCH  | `/questions/:id`       | `questions#update` |
| GET    | `/questions`           | `questions#index`  |
| GET    | `/questions/:id`       | `questions#show`   |
| DELETE | `/questions/:id`       | `questions#destroy`|
