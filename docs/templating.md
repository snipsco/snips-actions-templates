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
	"language":"PYTHON",
	"prelude": "def intent_handler(hermes, conf, intentMessage)\n    \"\"\"hermes: protocol handler\n    conf: action configuration\n    intentMessage: detected intent\"\"\" ",
     "postlude": "",

}
```

## Expected additionnal files dir in assitant.json
```
assistant/snippets/<skill_name>/<template_name>[/<user_name>]/<intent_name>.snippet
assistant/snippets/<skill_name>/config.ini
```
with 

 - `skill_name`: name of the skill, there may be multiple skill in the same assistant 
 - `template_name`: name of the template to use to render the snippet
 - `user_name`: name of the user who created the intent (`snips` in `snips:lightsOn`)
 - `intent_name`: name of the the intent (`lightsOn` in `snips:lightsOn`)


### `config.ini` specs
```
# no section for preset values
foo=bar

[secret]
#empty value for secret values
baz=
```

