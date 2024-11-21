from bitnet import BitNetInference

bitnet = BitNetInference()
bitnet.load_model("../model_checkpoint.pth")  # Download model
output_str = bitnet.generate("The dog jumped over the ", 512)
print(output_str)