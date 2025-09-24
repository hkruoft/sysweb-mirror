#!/bin/bash

MEMBER_DIR="_members"
OUTPUT_FILE="_includes/generated_members.html"

# clear output file
> "$OUTPUT_FILE"

for f in "$MEMBER_DIR"/*.md; do
  # extract YAML front matter
  yaml=$(awk '/^---/{flag=!flag;next} flag' "$f")

  # parse fields
  name=$(echo "$yaml" | grep '^name:' | sed 's/^name:[ ]*//')
  role=$(echo "$yaml" | grep '^role:' | sed 's/^role:[ ]*//')
  slug=$(echo "$yaml" | grep '^slug:' | sed 's/^slug:[ ]*//')
  url=$(echo "$yaml" | grep '^url:' | sed 's/^url:[ ]*//')
  image=$(echo "$yaml" | grep '^image:' | sed 's/^image:[ ]*//')

  # skip faculty
  if [ "$role" == "faculty" ]; then
    continue
  fi

  # optional: include content/body
  content=$(awk '/^---/{flag++;next} flag>1{print}' "$f" | tr '\n' ' ' | sed 's/"/\\"/g')

  # append include line
  echo "{% include member.html name=\"$name\" role=\"$role\" url=\"$url\" image=\"$image\" content=\"$content\" %}" >> "$OUTPUT_FILE"
done

echo "Generated $OUTPUT_FILE with {% include %} lines for all non-faculty members."

