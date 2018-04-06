#!/usr/bin/env python2
# -*- coding: utf-8 -*-

from hermes_python.hermes import Hermes
from hermes_python.ontology import *

def subscribe_intent_callback(hermes, intentMessage):
    conf = dict() #TODO
    action_wrapper(hermes, intentMessage, conf)


def action_wrapper(hermes, intentMessage, conf):
    {{#each action_code as |a|}}{{a}}
    {{/each}}


if __name__ == "__main__":
    with Hermes("localhost:1883") as h:
        h.subscribe_intent("{{intent_id}}", subscribe_intent_callback) \
         .start()
