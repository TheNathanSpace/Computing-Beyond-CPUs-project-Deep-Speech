#!/bin/bash

kill -9 $(ps aux | grep '[p]ython3 ./Deepspeech2' | awk '{print $2}')

