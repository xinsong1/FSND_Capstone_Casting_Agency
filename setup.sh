#!/bin/bash
export FLASK_APP=flaskr
export FLASK_ENV=development
export TEST_DATABASE_URI="postgres://localhost:5432/casting_agency_test"
export DATABASE_URI="postgres://localhost:5432/casting_agency"
export NEW_VAR="Testing export"
export EXCITED="true"
echo "setup.sh script executed successfully!"
