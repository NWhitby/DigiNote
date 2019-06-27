# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - Uses sinatra gem
- [x] Use ActiveRecord for storing information in a database - Uses activerecord and sinatra-activerecord gems
- [x] Include more than one model class (e.g. User, Post, Category) - Includes User and Note model classes
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User has_many notes
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Note belongs_to a User
- [x] Include user accounts with unique login attribute (username or email) - User accounts contain username and email attributes for account creation and login.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - The belongs_to (Note) models routes can create, read, update, and delete resources
- [x] Ensure that users can't modify content created by other users -  User account authentication added via Bcrypt and has_secure_password
- [x] Include user input validations - Validation for username, email, and password added to User model
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code - README.md includes install instructions, contributors guide, and like to MIT license

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
