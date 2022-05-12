# Capstone Project: Full Stack Casting Agency API Backend
This project is the final project of Full stack Web Developer Nanodegree Program by Udacity

## Casting Agency Specifications

The Casting Agency models a company that is responsible for creating movies and managing and assigning actors to those movies.

## Motivation for project

This is the capstone project of Udacity fullstack nanodegree program, which demonstrate the skillset taught from the previous lessons and display them here in this project. The project requirement was to build a API from start to finish and to host it. The following skills were demonstrated in this project;

- Coding in Python 3
- Relational Database Architecture
- Modeling Data Objects with SQLAlchemy
- Internet Protocols and Communication
- Developing a Flask API
- Authentication and Access
- Authentication with Auth0
- Authentication in Flask
- Role-Based Access Control (RBAC)
- Testing Flask Applications
- Deploying Applications

Using these skills, an application was built that was based around a casting agency company that creates movies and assigning actors to those movies. A system needed to be created to streamline this process and involved creating an 'actors' and 'movies' models in a database that took in the required attributes. Endpoint API's needed to be created to manipulate the data created, this came in the form of GET, POST, DELETE and PATCH requests.Authentication and access permissions needed to also be created depending on if the user of this application was a casting assistant, casting director or executive producer, with differing permissions depending on the users role. The API's needed to be tested along with the permissions needed to access them. Fainlly, the application used Heroku to deploy onto a cloud platform.

## Getting Started

### Installing Dependencies

#### Python 3.7.10

#### Virtual Enviornment
**virtualenv** a virtual environment is used to create an isolated Python environment in order to run the application. To initialise and activate the virtualenv (for macOS) use:

```bash
python -m virtualenv venv
source venv/bin/activate
```

#### PIP Dependencies

Once you have your virtual environment setup and running, install dependencies by naviging to the `/backend` directory and running:

```bash
pip install -r requirements.txt
```

This will install all of the required packages we selected within the `requirements.txt` file.


## Database Setup

With Postgres running, restore a database. From the backend folder in terminal run:

```bash
psql casting_agency<casting_agency.psql
```

## Running the server

From within the directory first ensure you are working using your created virtual environment.

To run the server, execute:

```bash
source setup.sh
python3 app.py
```

## Project Deployed:
https://castingagency0511-1239098.herokuapp.com/


## Testing

To run the tests, run

```
dropdb casting_agency_test
createdb casting_agency_test
psql casting_agency_test<casting_agency_test.psql
python3 test_app.py
```

The tests print data returned from the APIs along with API logs.

#### The rests also use the Auth token set in env variables and will give an error if the tokens are expired.

## API Reference

### Error Handling

Errors are returned as JSON objects in the following format:

```
{
    "success": False,
    "error": 400,
    "message": "bad request"
}

```

### Endpoints

GET '/actors'
POST '/actors'
PATCH '/actors/<actor_id>'
DELETE '/actors/<actor_id>'
GET '/movies'
GET '/actors'
POST '/actors'
PATCH '/actors/<actor_id>'
DELETE '/actors/<actor_id>'

GET '/movies'
Fetches an array of movies
Required URL Arguments: None
Required Data Arguments: None
Returns: Returns Json data about movies
Success Response:

```
{
   "movies":[
      {
         "genre":"SuperHero",
         "id":9,
         "release_date":"2019-01-02",
         "title":"Avengers"
      },
      {
         "genre":"SuperHero",
         "id":10,
         "release_date":"2019-01-02",
         "title":"Avengers"
      }
   ],
   "success":True
}
```

GET '/actors'
Fetches an array of actors
Required Data Arguments: None
Returns: Json data about actors
Success Response:

```
  {
   "actors":[
      {
         "age":22,
         "gender":"male",
         "id":10,
         "name":"rish"
      }
   ],
   "success":True
}
```

DELETE '/movies/<int:movie_id>'
Deletes the movie_id of movie
Required URL Arguments: movie_id: movie_id_integer
Required Data Arguments: None
Returns: deleted movie's ID
Success Response:

```
{'deleted': 8, 'success': True}
```

DELETE '/actors/<int:actor_id>'
Deletes the actor_id of actor
Required URL Arguments: actor_id: actor_id_integer
Required Data Arguments: None
Returns:the deleted actor's ID
Success Response:

```
{'deleted': 9, 'success': True}
```

POST '/movies'
Post a new movie in a database.
Required URL Arguments: None
Required Data Arguments: Json data
Success Response:

```
{'movie_id': 11, 'success': True}
```

POST '/actors'
Post a new actor in a database.

Required URL Arguments: None

Required Data Arguments: Json data

Success Response:

```
{'actor_id': 11, 'success': True}
```

PATCH '/movies/<int:movie_id>'
Updates the movie_id of movie
Required URL Arguments: movie_id: movie_id_integer
Required Data Arguments: None
Returns: Json data about the updated movie
Success Response:

```
{
   "movie":{
      "genre":"SuperHero",
      "id":9,
      "release_date":"2019-01-02",
      "title":"Avengers 2"
   },
   "success":True
}
```

PATCH '/actors/<int:actor_id>'
Updates the actor_id of actor
Required URL Arguments: actor_id: actor_id_integer
Required Data Arguments: None
Returns: Json data about the modified actor's ID
Success Response:

```
{
   "actor":{
      "age":22,
      "gender":"male",
      "id":10,
      "name":"gopi"
   },
   "success":True
}
```

## Reference
https://github.com/rgrishigajra/FSND-Capstone-Casting-agency
https://github.com/leonchan93/Udacity/tree/master/projects/capstone/starter

## Author
Xin Song
