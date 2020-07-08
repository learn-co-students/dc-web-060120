* Objectives
    - Use the bcrypt gem


To add a password to a model:
- Uncomment and bundle the bcrypt gem
- add `has_secure_password` to model
- add password_digest:string to User model through a migration