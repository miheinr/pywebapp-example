#!/usr/bin/env python
"""Produces load on one CPU core.

Stress duration has to be specified via environment variable
STRESSTIME in seconds.
"""

import os
import time

def f(x):
    begin = time.time()
    while time.time() < begin + STRESSTIME:
        _ = x*x

def cpuload():
    global STRESSTIME
    STRESSTIME = float(os.environ.get('STRESSTIME', default='0.0'))
    _ = f(2)

if __name__ == '__main__':

    cpuload()
