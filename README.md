# Focus Backend Engineer Exercises

Recommended approach:

-   For each exercise, create a pull request (PR) and merge your PR into main for your repository

Both exercises involve implementing code and then verifying that they perform as expected. You are also welcome to write tests to confirm the behavior as well

## Structure

```
backend-ruby-engineer-interview/
  app/
    handlers/
        web-handlers.rb - Handlers for the API endpoints should be implemented here
    db/
        schema.rb - Initialized DB schema
        seeds.rb - Some initial seed date to test against
```

## Setup Instructions

1. Install ruby@2.7.6 This can be managed with [asdf](https://github.com/asdf-vm/asdf) and [asdf-ruby](https://github.com/asdf-vm/asdf-ruby)
2. Run `bin/bundle install` in the exercise's directory
3. Run `bin/rails db:migrate db:seed` to initialize the DB
4. Run the server with `bin/rails server`

## Exercises

All the exercises have existing test cases written to verify that the code is working as expected

## 1. Implement a GET employee endpoint

### Acceptance Criteria

-   As a user I would like to retrieve a user by ID with fields:
    -   id
    -   first_name
    -   last_name
    -   date_of_birth
-   I should not be able to see the employee's secret
-   If the ID does not exist in the DB, I expect to receive a 404

### Implementation Notes

-   This library implementing the OpenAPI connection is a Rack endpoint; you can return an object of JSON
-   Link to [library](https://github.com/ahx/openapi_first#handlers)

## 2. Implement a PATCH employee endpoint

### Acceptance Criteria

-   As a user, I should be able to patch and employees first and last name
-   As a user, I should recieve a 400 if I try to set the first or last name to an empty string
-   As a user, I should receive a 404 if the ID of the employee to patch does not exist

### Implementation Notes

-   The API definition `openapi.yaml` needs to be edited. It maps ruby functions to an endpoint via `operationId`. For an example, look at the provided `/status` endpoint.
-   The schema definition can provide some validation of the request and the response

## 3. Implement a POST application endpoint

### Acceptance Criteria

-   As a user, I should be able to POST a new application with the following fields
    -   leave_start_date
    -   leave_end_date
    -   the ID of an employee
-   I should receive a 400 if the POST body is invalid
    -   Missing fields
    -   Employee ID does not exist

### Implementation Notes

-   The Request and Response schema should get defined first in `openapi.yaml`
-   A new model will need to be created for the new table
-   The new model should have a foreign key relationship to employee

## FAQ

-   How do I reset the database?

    Run `bin/rails db:reset db:migrate db:seed`

-   How do I create new tables from models?

    New models/tables can be created using rails generators
