#!/bin/bash

kill -9 $(ps aux | grep '[p]ython3 ./Deepspeech2' | awk '{print $2}')
kill -9 $(ps aux | grep '[b]enchmark.bash' | awk '{print $2}')
