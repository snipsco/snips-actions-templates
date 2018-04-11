# Generated Snips skill

This is a genrated Home Assistant python script using the `snips-template` tool.
You can use the hass object to call hass services, check https://www.home-assistant.io/components/python_script/

## Setup

Once generated, those python scripts are meant to be copied in the `python_scripts` folder in Hass' configuration.
Hass `configuration.yaml` needs to be updated to reflect this new scripts. Also the Snips component needs to be added to Hass. https://www.home-assistant.io/components/snips/

For instance, if you use Snips' Lights bundle, this is what your `configuration.yaml` will look like:

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
The `data_template` section is here to expose Snips' intents `slot_value` to the python script. Therefore you'll be able to write this in the python script:
`house_room = data.get('house_room')`

## Executables

This dir contains a number of python executables named `action-*.py`.
One such file is generated per intent supported. These are standalone
executables and will be run by Hass when an intent is triggered.
