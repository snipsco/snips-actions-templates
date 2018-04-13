# Home Assistant template

# Template placeholders
 - `%%action_code_python%%` : the python code for the action

# File names
 - Files with no placeholder in their name are to be present only once in the final folder
 - Files with placeholders in their name are to be present once per value of the place holder, this value is then used for when the place holder is used in the file

# Hass actions
Templates located in `homeassistant` folder, they are in python.

Actions expected to happen when installing the final folder (on device)
- move python code in the Hass `python_scripts` folder 
- add Snips component to Hass configuration, see https://www.home-assistant.io/components/snips/
- edit Hass' `configuration.yaml` to point to the scripts that were added.

For instance, if you use Snips' lights bundle, this is what your `configuration.yaml` will look like:

```
snips:
  intents:
    lightsTurnOnSet:
      action:
        - service: python_script.action-lightsturnonset-lights
          data_template:
            house_room: "{{ house_room }}"
            number: "{{number}}"
            unit: "{{unit}}"

    lightsTurnOff:
      action:
        - service: python_script.action-lightsturnoff-lights
          data_template:
            house_room: "{{house_room}}"
```
