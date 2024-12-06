#!/bin/bash

# Function to display usage
usage() {
  echo "Usage: mkvite [template] [project-name]"
  echo "Available templates:"
  echo "  vanilla, vanilla-ts, vue, vue-ts, react, react-ts, preact, preact-ts, lit, lit-ts, svelte, svelte-ts, solid, solid-ts, qwik, qwik-ts"
  exit 1
}

# Function to create a Vite project
create_vite_project() {
  local template=$1
  local project_name=$2

  # Check if template is valid
  case $template in
    vanilla|vanilla-ts|vue|vue-ts|react|react-ts|preact|preact-ts|lit|lit-ts|svelte|svelte-ts|solid|solid-ts|qwik|qwik-ts)
      echo "Creating Vite project with template: $template"
      npm create vite@latest "$project_name" -- --template "$template"
      ;;
    *)
      echo "Invalid template: $template"
      usage
      ;;
  esac
}

# Check if the correct number of arguments are provided
if [ $# -ne 2 ]; then
  usage
fi

# Extract template and project name from arguments
template=$1
project_name=$2

# Create the Vite project
create_vite_project "$template" "$project_name"
