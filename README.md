## SETUP

1. Make sure you have Ruby version `2.3.0` installed. Then go to the app directory and run `bundle install`

2. Install **Postgres** and use relevant login details (username & password) inside `database.yml`

3. Run `rake db:setup`

4. Start server with `rails s`

5. To create messages:
    ```
    POST /api/messages
     { "body": "This is a message from #zozi" }
    ```

6. To see messages and tags go to `/messages`

**Demo app:** https://messages-app.herokuapp.com/messages
