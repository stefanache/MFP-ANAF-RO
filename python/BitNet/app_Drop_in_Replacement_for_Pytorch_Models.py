import torch
from torch import nn
from bitnet import replace_linears_in_pytorch_model

# Define a simple model
model = nn.Sequential(
    nn.Linear(10, 20),
    nn.ReLU(),
    nn.Linear(20, 30),
)

print("Before replacement:")
print(model)

# Replace nn.Linear with BitLinear
replace_linears_in_pytorch_model(model)

print("After replacement:")
print(model)

# Now you can use the model for training or inference
# For example, pass a random input through the model
input = torch.randn(1, 10)
output = model(input)