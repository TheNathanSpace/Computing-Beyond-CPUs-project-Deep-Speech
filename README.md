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
```bash
# On the Orin server:
ssh-keygen -t ed25519 -C "your_github_accounts_email@example.com" # Generate an SSH key
eval "$(ssh-agent -s)" # Start the SSH service
ssh-add ~/.ssh/id_ed25519 # Add the generated key
cat ~/.ssh/id_ed25519.pub

# 1. Go to https://github.com/settings/keys
# 2. "New SSH key"
# 3. Add the output of the "cat" command as the key

# In the file `~/.ssh/config`, add this to have it use the SSH key: 

Host github.com
User git
Port 22
Hostname github.com
IdentityFile ~/.ssh/id_ed25519
TCPKeepAlive yes
IdentitiesOnly yes


# Clone repos with this different format to use SSH:
git clone git@github.com/TheNathanSpace/Computing-Beyond-CPUs-project-Deep-Speech
```

## Implementation

Mozilla (has pretrained models and detailed documentation on how to set up and train your own):

- https://github.com/mozilla/DeepSpeech
- https://deepspeech.readthedocs.io/en/r0.9/

PaddleSpeech (framework to automatically download dependencies, train, test, and and run Deep Speech model):

- https://github.com/PaddlePaddle/PaddleSpeech#model-list
- https://github.com/PaddlePaddle/PaddleSpeech/tree/develop/examples/aishell/asr0
