@echo off
cls
CD C:\development\python\SD
REM echo https://pytorch.org/TensorRT/tutorials/_rendered_examples/dynamo/torch_compile_stable_diffusion.html
REM pip install torch==2.0.0 torchvision==0.15.1 torchaudio==2.0.1 --index-url https://download.pytorch.org/whl/cu118
REM python -c "import torch;x = torch.rand(2, 3);print(x);y=torch.cuda.is_available();print(y);z=torch.cuda.device_count();print(z);"

REM echo https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Install-and-Run-on-NVidia-GPUs
echo https://stable-diffusion-art.com/install-windows/
echo https://mirrors.sustech.edu.cn/git/github_fork/stable-diffusion-webui/-/tree/b28cf84c3632df4a6d4c110f7c25d68445b64427
echo https://www.datacamp.com/tutorial/how-to-run-stable-diffusion
echo https://github.com/AUTOMATIC1111/stable-diffusion-webui/wiki/Custom-Scripts


REM git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui |more

cd stable-diffusion-webui
set COMMANDLINE_ARGS=--autolaunch --update-check --api
REM set COMMANDLINE_ARGS=--api
set force_download=True
REM start Chrome http://127.0.0.1:7860/docs
REM start Chrome http://127.0.0.1:7860/
webui-user.bat |more

pause