#!/bin/bash

kill -9 $(ps aux | grep '[D]eepspeech2' | awk '{print $2}')
kill -9 $(ps aux | grep '[b]enchmark.bash' | awk '{print $2}')
