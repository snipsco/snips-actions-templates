#!/usr/bin/env python
# -*- coding: utf-8 -*-

from hermes_python.hermes import Hermes
from hermes_python.ontology import *
from hermes_python.ffi.utils import user_callback, subscribe_callback

def subscribe_intent_callback(hermes, intentMessage):
    conf = dict() #TODO
    action_wrapper(hermes, intentMessage, conf)


def action_wrapper(hermes, intentMessage, conf):
    %%action_code%%


if __name__ == "__main__":
    with Hermes("localhost:1883") as h:
        h.subscribe_intent("%%intent_name%%", subscribe_intent_callback) \
         .start()
