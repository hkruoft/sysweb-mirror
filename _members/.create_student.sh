#!/bin/bash

# Prompt for inputs
read -p "First Name: " firstname
read -p "Last Name: " lastname
read -p "Role (phd or masters): " role
read -p "Status (current or alum): " group
read -p "GitHub (leave empty if none): " github
read -p "LinkedIn (leave empty if none): " linkedin
read -p "Google Scholar (leave empty if none): " google_scholar
read -p "Image link (for wget, or leave empty if none): " image

# Create file name with lowercase firstname-lastname
filename="${firstname,,}-${lastname,,}.md"

# Download image using wget and store as "firstname.jpg" under "../images/"
if [ ! -z "$image" ]; then
  wget -O "../images/${firstname,,}.jpg" "$image"
fi

# Start writing the markdown content
echo "---" > $filename
echo "name: $firstname $lastname" >> $filename
echo "image: images/${firstname,,}.jpg" >> $filename
echo "role: $role" >> $filename
echo "group: $group" >> $filename
echo "links:" >> $filename

# Add links only if they are not empty
if [ ! -z "$github" ]; then
  echo "  github: $github" >> $filename
fi

if [ ! -z "$linkedin" ]; then
  echo "  linkedin: $linkedin" >> $filename
fi

if [ ! -z "$google_scholar" ]; then
  echo "  google_scholar: $google_scholar" >> $filename
fi

# Close front matter
echo "---" >> $filename

echo "Markdown file $filename created successfully."

