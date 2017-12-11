#!/bin/bash

API="http://localhost:4741"
URL_PATH="/quizzes"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json"

echo
