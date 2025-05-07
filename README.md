# Computing Beyond CPUs project (Deep Speech)

## Papers

- Deep Speech paper: https://arxiv.org/abs/1412.5567
- Deep Speech 2 paper: https://arxiv.org/abs/1512.02595

## Presentations

- Paper presentation: https://docs.google.com/presentation/d/1ELHsZRicqHW5aVaVnZSZooEq9T9N4tdnPkhSOWywgmA/edit
- Final presentation: https://docs.google.com/presentation/d/1Lb727cLMYT1DMdu8xMY3hpeKyWsRrzorPoalHLxiYps/edit
- Final report: https://www.overleaf.com/project/680a1ffd30432b62e04277cf

## Hardware

Devices: https://docs.google.com/spreadsheets/d/1T0_5deevIndqut1mj5xcdKnLcyRoxotqW6UR4lgH-x4/edit

##### Git Setup

1. Save credentials:

```bash
git config --global credential.helper store
```

2. Generate personal access token: https://github.com/settings/tokens
3. Use token in place of GitHub password

##### Copying files to local machine

Pushing to GitHub is way easier than this, but it took me a while to figure out, so here it is:

```bash
scp -P 49157 -J nathanpanzer@jumpbox.mines.edu,nathanpanzer@isengard.mines.edu nathanpanzer@hpsslab.com:/home/nathanpanzer/Computing-Beyond-CPUs-project-Deep-Speech/myTests/test1_output.txt .
```

## Implementation

We use KoSpeech, a speech recognition toolkit supporting the Deep Speech model: https://github.com/sooftware/kospeech

Our tools are in the `c_b_cpu_work/` directory.
