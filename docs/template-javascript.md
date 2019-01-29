# Javascript template

# Template placeholders
 - `%%intent_name%%` : the name of the intent, this can have multiple values
 - `%%action_code%%` : the code for the action as an array of lines

# File names
 - Files with no placeholder in their name are to be present only once in the final folder
 - Files with placeholders in their name are to be present once per value of the place holder, this value is then used for when the place holder is used in the file

# javascript actions
Templates located in `javascript` folder

Actions expected to happen when installing the final folder (on device)
- setup.sh should install dependencies by calling `npm install`
- fill empty values in `config.ini`
- profit 🙌
