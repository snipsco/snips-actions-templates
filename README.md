# snips-actions-templates
Template files for snips actions

# Template placeholders
 - `%%intent_name%%` : the name of the intent, this can have multiple values
 - `%%action_code_python%%` : the python code for the action, each line as to be prefixed with the same amount of spaces as the placeholder, these are associated to a value of `%%intent_name%%`
 - `%%configuration_ini%%` : a key value map of the configuration in a ini compatible format, this should have a single value

# File names
 - Files with no placeholder in their name are to be present only once in the final folder
 - Files with placeholders in their name are to be present once per value of the place holder, this value is then used for when the place holder is used in the file

# A word regarding configuration
Configuration has 2 types of values, the "safe" ones and the "sensitive" ones. Safe values are expected to be filled in the generated ini. Sensitive ones should have an empty value, wich will be set by sam upon installation

# python2 actions
Templates located in `python2` folder

Actions expected to happen when installing the final folder (on device)
- create a python2 virtualenv named `venv`
- `pip install -r requirements.txt` inside of it
- fill empty values in `configuration.ini`

