# Objectives

- Send and receive PATCH, PUT, DELETE requests
- Use before_actions to DRY our code

- PUT vs PATCH
    - Put replaces an entire row in the database with new values
    - Patch only changes the updated values
        PATCH {name: "New Taco name"} only changes name
        PUT {name: "New Taco name"} changes all fields
            - idempotent:  Running more than once doesn't change after first time

|||||-5|||| = 5


# Questions

- when do we use helper files
- how does Rails know that's a POST request on form_for?
- how do before_actions work
- will this get easier?  Sort of.
- how does the as: in setting up links work?
- 