## Notes:

Potential outlines for models and paths in Sinatra CRUD app.

## User model

User
- has_many homebrews
- has_many tastings through homebrews?

User should have:
- username - string
- email - string
- password_digest - string

| HTTP VERB | ROUTE              | Action        | Used For                                               |
|---      |---                 |---            |---                                                     |
| GET     | '/users'           | index action  | index page to display all users                        |
| GET     | '/users/new'       | new action    | displays create user form                              |
| POST    | '/users'           | create action | creates one user                                  |
| GET     | '/users/:id'       | show action   | displays one user based on ID in the url          |
| GET     | '/users/:id/edit'  | edit action   | displays edit form based on ID in the url              |
| PATCH   | '/users/:id'       | update action | _modifies_ an existing user based on ID in the url|
| PUT     | '/users/:id'       | update action | _replaces_ an existing user based on ID in the url|
| DELETE  | '/users/:id'       | delete action | deletes one user based on ID in the url           |

## Homebrew model

Homebrew
- belongs_to User
- has_many tastings?


Homebrew should have:
- name - string
- style - string
- batch_size - integer
- batch_number - integer
- brewing_date - time
- expected_og - float
- expected_fg - float
- ibu - integer
- srm - integer
- abv - float
- ingredients - text (needs > 255 chars)
- brewing notes - text (needs > 255 chars)

| HTTP VERB | ROUTE              | Action        | Used For                                               |
|---      |---                 |---            |---                                                     |
| GET     | '/homebrews'           | index action  | index page to display all homebrews                        |
| GET     | '/homebrews/new'       | new action    | displays create homebrew form                              |
| POST    | '/homebrews'           | create action | creates one homebrew                                  |
| GET     | '/homebrews/:id'       | show action   | displays one homebrew based on ID in the url          |
| GET     | '/homebrews/:id/edit'  | edit action   | displays edit form based on ID in the url              |
| PATCH   | '/homebrews/:id'       | update action | _modifies_ an existing homebrew based on ID in the url|
| PUT     | '/homebrews/:id'       | update action | _replaces_ an existing homebrew based on ID in the url|
| DELETE  | '/homebrews/:id'       | delete action | deletes one homebrew based on ID in the url           |

## Tasting model

Tasting
- belongs_to Homebrew?

Tasting should have:
- date - time
- aroma - text (needs > 255 chars)
- appearance - text (needs > 255 chars)
- flavor - text (needs > 255 chars)
- mouthfeel - text (needs > 255 chars)
- overall_impression - text (needs > 255 chars)

| HTTP VERB | ROUTE              | Action        | Used For                                               |
|---      |---                 |---            |---                                                     |
| GET     | '/homebrews/:id/tastings'           | index action  | index page to display all tastings                        |
| GET     | '/homebrews/:id/tastings/new'       | new action    | displays create tasting form                              |
| POST    | '/homebrews/:id/tastings'           | create action | creates one tasting                                  |
| GET     | '/homebrews/:id/tastings/:id'       | show action   | displays one tasting based on ID in the url          |
| GET     | '/homebrews/:id/tastings/:id/edit'  | edit action   | displays edit form based on ID in the url              |
| PATCH   | '/homebrews/:id/tastings/:id'       | update action | _modifies_ an existing tasting based on ID in the url|
| PUT     | '/homebrews/:id/tastings/:id'       | update action | _replaces_ an existing tasting based on ID in the url|
| DELETE  | '/homebrews/:id/tastings/:id'       | delete action | deletes one tasting based on ID in the url           |
