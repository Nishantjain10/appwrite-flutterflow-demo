#!/bin/sh

if [ -z "$APPWRITE_PROJECT_ID" ]; then
  echo "Error: APPWRITE_PROJECT_ID is not set."
  exit 1
fi

sed -i "s|\$APPWRITE_PROJECT_ID|$APPWRITE_PROJECT_ID|g" assets/environment_values/environment.json

# Build Flutter Web App with environment variables
flutter build web \
  --dart-define=APPWRITE_PROJECT_ID="$APPWRITE_PROJECT_ID" \
  --dart-define=APPWRITE_PROJECT_NAME="$APPWRITE_PROJECT_NAME" \
  --dart-define=APPWRITE_PUBLIC_ENDPOINT="$APPWRITE_PUBLIC_ENDPOINT"
