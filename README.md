# CRAFT Text Detection ONNX Export & Inference 🚀

This repository contains code to export CRAFT (Character Region Awareness For Text Detection) model to ONNX format and run inference. 

## 💎 Support 
If you find this tool useful, consider [becoming a sponsor](https://github.com/sponsors/ajinkya933) for $1/month and get priority support!

---

## Prerequisites 📋
- Docker 🐳
- High-resolution text images 🖼️

## Directory Structure 📁
```

├── data/ # Add your high-res images here
├── onnx/ # ONNX model will be exported here
├── weights/ # craft_mlt_25k.pth model goes here
├── outputs/ # Detection results will be saved here
├── Dockerfile
├── onnx-export.py
└── onnx-inference.py
```

## Quick Start 🏃‍♂️

1. **Add Images and download pth file** 📸
   - Place your high-resolution text images in the `data` directory
   - Download pytorch model from [here](https://drive.google.com/file/d/1yN6_XLZVuKGL-3-w9MuqPqiM3QfAPVGV/view?usp=sharing), and save it in `weights` folder 

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

## 💎 Sponsor $1 per month
👉 [My GitHub Sponsors link](https://github.com/sponsors/ajinkya933)


### 🌟 Sponsor Benefits
- 🏢 Priority support for integrating this tool into your company's infrastructure
- 🛠️ Direct assistance with project-related issues and customizations
- 💡 Technical consultation for your specific use cases
- 🚀 Early access to new features and improvements
- ⭐ Recognition in our sponsors list

### Why Sponsor?
Your sponsorship helps maintain and improve TextClear, ensuring it remains a robust and reliable tool for the community. Every contribution, no matter how small, makes a difference!








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
