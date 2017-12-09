#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "question": {
      "title": {{"'"TITLE"'"}},
      "answer1": {{"'"ANSWER1"'"}},
      "answer2": {{"'"ANSWER2"'"}},
      "answer3": {{"'"ANSWER3"'"}},
      "answer4": {{"'"ANSWER4"'"}},
      "correct": {{"'"CORRECT"'"}},
      "quiz_id": {{"'"QUIZ_ID"'"}}
    }
  }'

echo
