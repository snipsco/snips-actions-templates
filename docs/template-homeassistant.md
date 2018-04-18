# Home Assistant template

# Template placeholders
 - `%%action_code_python%%` : the python code for the action

# File names
 - Files with no placeholder in their name are to be present only once in the final folder
 - Files with placeholders in their name are to be present once per value of the place holder, this value is then used for when the place holder is used in the file

# Hass actions
Templates are located in `homeassistant` folder in `/usr/share/snips/`, they are in python.

Actions expected to happen when installing the final folder (on device)
- move python code in the Hass `python_scripts` folder. Scripts name MUST be lowercased.
- add `snips:` component to Hass configuration, see https://www.home-assistant.io/components/snips/
- add `python_script:` component
- add `mqtt:` broker & port that Snips uses
- edit Hass' `configuration.yaml` to point to the scripts that were added.

For instance, if you use Snips' Smart lights bundle, this is what your `configuration.yaml` will look like:

```
mqtt:
  broker: 127.0.0.1
  port: 1883

python_script:

snips:

intent_script:
  lightsTurnOnSet:
    action:
      - service: python_script.action_lightsTurnOnSet_Smart_lights
        data_template:
          house_room: "{{ house_room }}"
          number: "{{number}}"
          unit: "{{unit}}"

  lightsTurnOff:
    action:
      - service: python_script.action_lightsTurnOff_Smart_lights
        data_template:
          house_room: "{{house_room}}"
```

The `data_template` section is exposing Snips' intents `slot_value` to the python script. Therefore you'll be able to get slot values in the python script:
`house_room = data.get('house_room')`
