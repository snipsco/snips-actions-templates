#!/usr/bin/env node

const ini = require('ini')
const fs = require('fs')

const { withHermes } = require('hermes-javascript')
const configFile = fs.readFileSync('./config.ini', 'utf8')
const config = ini.parse(configFile)

withHermes((hermes, done) => {
    try {
        const dialog = hermes.dialog()

        dialog.flow('intent/{{intent_id}}', async (message, flow) => {
            {{#each action_code as |a|}}
            {{a}}
            {{/each}}
        })
    } catch (error) {
        console.error(error.toString())
        done()
    }
})
