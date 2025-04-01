# Computing Beyond CPUs project (Deep Speech)

## Papers

Deep Speech paper:

- https://arxiv.org/abs/1412.5567

Deep Speech 2 paper:

- https://arxiv.org/abs/1512.02595
- I can't really find any easy-to-access implementation for Deep Speech 2, so it's probably easiest to just stick with Deep Speech (1).

## Presentations

Paper presentation: https://docs.google.com/presentation/d/1ELHsZRicqHW5aVaVnZSZooEq9T9N4tdnPkhSOWywgmA/edit

## Hardware

NVIDIA Orin AGX

```bash
ssh username@hpsslab.com -p 49158
```

## Implementation

Mozilla (has pretrained models and detailed documentation on how to set up and train your own):

- https://github.com/mozilla/DeepSpeech
- https://deepspeech.readthedocs.io/en/r0.9/

PaddleSpeech (framework to automatically download dependencies, train, test, and and run Deep Speech model):

- https://github.com/PaddlePaddle/PaddleSpeech#model-list
- https://github.com/PaddlePaddle/PaddleSpeech/tree/develop/examples/aishell/asr0
