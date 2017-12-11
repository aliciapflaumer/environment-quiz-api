#!/bin/bash
#TOKEN=BAhJIiUwZjY1OWY5MTkwZGFjNTFhYjQ5ODBkM2I4YzUwNTRlZgY6BkVG--c125d46d3762b57166676cf35e063fd5ca4e60d5
API="http://localhost:4741"
URL_PATH="/quizzes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "quiz": {
      "title": "'"${TITLE}"'"
    }
  }'

echo
