#!/bin/bash

# Check if uvicorn is running
if ! pgrep -f "uvicorn stra2ical.app:app" > /dev/null
then
    # Navigate to the repository
    cd /Users/thomascamminady/Repos/stra2ical

    # Start poetry shell and run the app. This assumes that your poetry environment
    # is correctly set up to run the app immediately upon entering the shell.
    # If not, you may need to modify this.
    poetry run uvicorn stra2ical.app:app --reload
else
    echo "The server is already running!"
fi
