# First PR Practice

A small repo for practicing the GitHub pull request workflow: branch, commit, push, open PR, merge.

## What this is

This repo exists so I can pratice opening pull requests on GitHub without
touching a real project. Feel free to reuse it for the same purpose.

## Workflow

1. Create a branch
2. Make a small change
3. Commit and push
4. Open a pull request
5. Review and merge

## VoxCPM installation

[VoxCPM](https://github.com/OpenBMB/VoxCPM) is a text-to-speech model. To
install it locally:

**Requirements:** Python >= 3.10 (<3.13), PyTorch >= 2.5.0, CUDA >= 12.0.

```bash
pip install voxcpm
```

Or use the helper script, which sets up a dedicated virtual environment:

```bash
./scripts/install_voxcpm.sh
```

Quick inference test once installed:

```python
from voxcpm import VoxCPM
import soundfile as sf

model = VoxCPM.from_pretrained("openbmb/VoxCPM2", load_denoiser=False)
wav = model.generate(
    text="Hello from VoxCPM.",
    cfg_value=2.0,
    inference_timesteps=10,
    seed=42,
)
sf.write("demo.wav", wav, model.tts_model.sample_rate)
```
