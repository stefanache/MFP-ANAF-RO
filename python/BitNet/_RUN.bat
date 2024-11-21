@echo off
cls
echo https://github.com/kyegomez/BitNet/tree/main
echo ...NOTE:
echo ...firstly download this repository from .... https://github.com/kyegomez/BitNet/tree/main
echo ...I have in this repository that download except data subdirectory which is greater thar 25kB...!!!!!
echo ...
echo https://www.gpu-mart.com/blog/Installing-pytorch-with-cuda-support-on-Windows

echo W10Pro with python 3.10
cd C:\development\python\BitNet

REM pip install torch==2.5.1 torchvision==0.20.1 torchaudio==2.0.1+cu118 torch-cluster==1.6.3+pt20cu118 torch_tensorrt==2.5.0 TorchFix==0.7.0 --index-url https://download.pytorch.org/whl/cu118
REM pip install bitnet

REM python app_BitLinear.py 
REM python app_BitLinearNew.py 
REM python app_BitNetTransformer.py
REM python app_BitAttention.py 
REM python app_BitFeedForward.py
rem python app_Inference.py
REM python app_Huggingface_Usage.py
REM python app_Drop_in_Replacement_for_Pytorch_Models.py

rem echo https://pydigger.com/pypi/bitnet
rem python setup.py build_ext --inplace |more
rem python app_Optimized_Cuda_Kernel.py

REM python app_BitLora.py
REM python app_BitMamba.py
REM python app_BitMoE.py
python app_1_Bit_Vision_Transformers.py
pause
