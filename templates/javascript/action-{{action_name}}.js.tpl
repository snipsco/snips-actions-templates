#!/usr/bin/env node

const ini = require('ini')
const fs = require('fs')

const { withHermes } = require('hermes-javascript')
const configFile = fs.readFileSync('./config.ini', 'utf8')
const config = ini.parse(configFile)

withHermes((hermes, done) => {
    try {
        const dialog = hermes.dialog()
        dialog.flow('{{intent_id}}', (message, flow) => {
            return (async function(message, flow, config) {
                {{#each action_code as |a|}}
                {{a}}
                {{/each}}
            })(message, flow, config)
        })
    } catch (error) {
        console.error(error.toString())
        done()
    }
})
