#!/bin/bash

API="http://localhost:4741"
URL_PATH="/questions"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU4NTg2YTc5ZmVkZDU5ZDkyZTFhODI1NmQ2MDExZWE1MAY6BkVG--ea651bc10e45f99b308abc02b4482528a51cb04c" \
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
