#!/bin/bash
input="threads.csv"
while IFS= read -r line
do
  echo "$line"
  IFS=',' tokens=( $line )
  CATEGORY=${tokens[0]}
  STATUS_ID=${tokens[1]}
  FILE_NAME="source/_threads/${STATUS_ID}.md"
  if test -f ${FILE_NAME}; then
    echo "Skipping"
  else
    echo "Adding"
    touch ${FILE_NAME}
    echo "---" >> ${FILE_NAME}
    echo "category: ${CATEGORY}" >> ${FILE_NAME}
    echo "status_id: ${STATUS_ID}" >> ${FILE_NAME}
    echo "---" >> ${FILE_NAME}
  fi
  echo ${CATEGORY}${STATUS_ID}
done < "$input"
