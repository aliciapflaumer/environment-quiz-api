#!/bin/bash
#TOKEN=BAhJIiU3YzdhMGI4NWNmNTA3YWZjZjFiYjVlMmRhOTU2ZjE5YQY6BkVG--71ec44270c1f355262e137d4cd99a30e1eda9dde
API="http://localhost:4741"
URL_PATH="/questions"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "question": {
      "title": "'"${TITLE}"'",
      "answer1": "'"${ANSWER1}"'",
      "answer2": "'"${ANSWER2}"'",
      "answer3": "'"${ANSWER3}"'",
      "answer4": "'"${ANSWER4}"'",
      "correct": "'"${CORRECT}"'",
      "quiz_id": "'"${QUIZ_ID}"'"
    }
  }'

echo
