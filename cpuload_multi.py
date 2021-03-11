#!/usr/bin/env python
"""Produces load on all available CPU cores.

Stress duration has to be specified via environment variable
STRESSTIME in seconds.
"""

import multiprocessing
import os
import time

def f(x):
    begin = time.time()
    while time.time() < begin + STRESSTIME:
        _ = x*x

def cpuload():
    global STRESSTIME
    STRESSTIME = float(os.environ.get('STRESSTIME', default='0.0'))
    processes = multiprocessing.cpu_count()
    pool = multiprocessing.Pool(processes)
    pool.map(f, range(processes))

if __name__ == '__main__':

    cpuload()
