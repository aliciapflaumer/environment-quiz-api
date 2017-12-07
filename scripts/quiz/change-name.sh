#!/bin/bash

API="http://localhost:4741"
URL_PATH="/quizzes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "quiz": {
      "name": "'"${NEWNAME}"'"
    }
  }'

echo
