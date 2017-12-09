#!/bin/bash
API="http://localhost:4741"
URL_PATH="/quizzes"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjZGI0YzY5ZTY0NWMwMTIzZGEyNzA2ZTEzZjEzYmZiZAY6BkVG--cde05cb1a037e87cbbafae0501c63c4b9566027c" \
  --data '{
    "quiz": {
      "title": "Pollution"
    }
  }'

echo
