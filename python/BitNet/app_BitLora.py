import torch
from bitnet import BitLora

# Random text tensor
x = torch.randn(1, 12, 200)

# Create an instance of the BitLora model
model = BitLora(in_features=200, out_features=200, rank=4, lora_alpha=1)

# Perform the forward pass
out = model(x)

# Print the shape of the output tensor
print(out.shape)