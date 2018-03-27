## Repo organisation
```
|-> docs/ #documentation about the templates, including current document
|-> templates/ 
|   |-> <template_name_1>/
|   |   |-> spec.json # template spec, see below
|   |   |-> whatever.file 
|   |   \-> whatever_dir/
|   |       \-> otherfile.foo
|   |-> <template_name_2>/
|       |-> spec.json # template spec, see below
|       \-> my_template.tpl
|-> engine/ #template engine
```

## Template specs files
```
{
	"name":"", //same as folder
	"language":"python",
	"prelude": "def intent_handler(hermes, conf, intentMessage)\n    \"\"\"hermes: protocol handler\n    conf: action configuration\n    intentMessage: detected intent\"\"\" ",
        "postlude": "",

}
```

## Expected additionnal files dir in assitant.json
```
assistant/snippets/<template_name>[/<user_name>]/<intent_name>.<action_index>.snippet
assistant/snippets/config.ini
```
with 

 - `template_name`: name of the template
 - `user_name`: name of the user who created the intent (`snips` in `snips:lightsOn`)
 - `intent_name`: name of the the intent (`lightsOn` in `snips:lightsOn`)
 - `action_index`: used to differenciate multiple actions for the same intent, starts at 0. 


### `config.ini` specs
```
# no section for preset values
foo=bar

[secret]
#empty value for secret values
baz=
```

