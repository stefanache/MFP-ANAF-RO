@echo off
cls
echo https://github.com/kyegomez/BitNet/tree/main
echo ...NOTE:
echo ...firstly download this repository from .... https://github.com/kyegomez/BitNet/tree/main
echo ...I have in this repository that download except data subdirectory which is greater thar 25kB...!!!!!
echo ...
echo https://www.gpu-mart.com/blog/Installing-pytorch-with-cuda-support-on-Windows

echo Windows 10 (Pro) with python 3.10
cd C:\development\python\BitNet

REM pip install transformers==4.44.2
REM pip install torch torchvision torchaudio torch-cluster torch_tensorrt --index-url https://download.pytorch.org/whl/cu118
rem pip install torch==2.5.1 torchvision==0.20.1 torchaudio==2.0.1+cu118 torch-cluster==1.6.3+pt20cu118 torch_tensorrt==2.5.0 TorchFix==0.7.0 --index-url https://download.pytorch.org/whl/cu118
REM pip install bitnet==0.2.5

echo python example.py:
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

REM echo https://towardsdatascience.com/bit-lora-as-an-application-of-bitnet-and-1-58-bit-neural-network-technologies-17ee80bf79f9
REM python app_BitLora.py

REM echo https://github.com/state-spaces/mamba
REM python app_BitMamba.py

REM echo MoE=Mixture-of-Experts LLM(see at https://gitea.swigg.net/dustins/llama.cpp)
REM python app_BitMoE.py

python app_1_Bit_Vision_Transformers.py
pause
