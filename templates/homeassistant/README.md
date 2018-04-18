# Generated Snips skill

This is a generated python script using the `snips-template` tool. It is supposed to be used by Home Assistant.
It uses the `hass` object to call Home Assistant services, check https://www.home-assistant.io/components/python_script/

## Setup

Actions expected to happen when installing the final folder (on device)
- move python code in the Hass `python_scripts` folder. Scripts name MUST be lowercased.
- add `mqtt:` broker & port that Snips uses
- add `python_script:` component
- add `snips:` component to Hass configuration, see https://www.home-assistant.io/components/snips/
- edit Hass' `configuration.yaml` to point to the scripts that were added.

For instance, if you use Snips' Smart lights bundle, this is what your `configuration.yaml` would look like:

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

## Executables

This dir contains a number of python executables named `action_*.py`.
One such file is generated per intent supported. These are standalone
executables and will be run by Hass when an intent is triggered.
