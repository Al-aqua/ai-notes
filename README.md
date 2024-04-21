# AI Notes

## The final year project for my Computer Science Degree

### The project tasks

- **Finished**

  - Create the login and sign up pages
  - Add the auth using the pocketbase server

- **In progress**

  - Design and create the Landing page

- **To do**

  - Refactor the code for the auth
  - Add the Appflowy text editor
  - Design and create the files tree
  - Use pocketbase to store and sync the files
  - Add the search bar
  - Design and create the settings page
  - Add the AI assistant

### The code base architecture

I used a feature first pattern where I have two main folders the app folder
and the core folder,the app folder contains a folder for each feature with
a presentation file for the UI, a data file for data access, a business file
for the logic and any other files if needed, and the core folder contains any
common files like code need in more than one place in the app, the themes,
the constants and the utils files.
