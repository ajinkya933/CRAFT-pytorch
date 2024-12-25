# CRAFT Text Detection ONNX Export & Inference 🚀

This repository contains code to export CRAFT (Character Region Awareness For Text Detection) model to ONNX format and run inference. Join community on slack : https://join.slack.com/t/ocr-community/shared_invite/zt-2x1vfdxqp-Ck~KjdWftyxS6gOU4GvnFA
## Prerequisites 📋
- Docker 🐳
- High-resolution text images 🖼️

## Directory Structure 📁
```

├── data/ # Add your high-res images here
├── onnx/ # ONNX model will be exported here
├── outputs/ # Detection results will be saved here
├── Dockerfile
├── onnx-export.py
└── onnx-inference.py
```

## Quick Start 🏃‍♂️

1. **Add Images** 📸
   - Place your high-resolution text images in the `data` directory

2. **Build Docker Image** 🔨
   ```bash
   docker build -t craft-onnx:latest .
   ```

3. **Run Docker Container** 🐋
   ```bash
   docker run -it craft-onnx:latest /bin/bash
   ```

4. **Export ONNX Model** 📤
   ```bash
   python3 onnx-export.py
   ```
   This will:
   - Take a sample image from `data` directory
   - Export ONNX graph to `onnx` folder

5. **Run Inference** 🔍
   ```bash
   python3 onnx-inference.py
   ```
   - Uses the exported ONNX model
   - Saves detection results in `outputs` directory

## Model Details ⚙️
- Input size: 1280x960
- Optimized for high-resolution document images
- CPU-friendly inference

## Notes 📝
- Make sure images are readable and have sufficient resolution
- The model works best with clear, well-lit document images
- Check `outputs` directory for detection results

# Open-source contributions:
I’m looking to raise 10 sponsors goal on Github. If you are benifitted from my contributions. Would you consider making a donation of $ 1 per month, to help sponsor my open source contributions on Github. Github sponsors link https://github.com/sponsors/ajinkya933








## License 📄
[MIT License](LICENSE)

### This Repository 
This repository's modifications and additions are licensed under MIT License.

### Third-Party Licenses
- CRAFT Text Detector: [MIT License](https://github.com/clovaai/CRAFT-pytorch/blob/master/LICENSE)
- PyTorch: [BSD License](https://github.com/pytorch/pytorch/blob/master/LICENSE)
- ONNX Runtime: [MIT License](https://github.com/microsoft/onnxruntime/blob/master/LICENSE)

### Acknowledgments 🙏
This work builds upon:
- [CRAFT-pytorch](https://github.com/clovaai/CRAFT-pytorch) by CLOVA AI Research
- Other open source projects listed in requirements.txt
