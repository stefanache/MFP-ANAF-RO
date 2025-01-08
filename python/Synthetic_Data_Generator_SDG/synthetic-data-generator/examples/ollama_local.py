# /// script
# requires-python = ">=3.11,<3.12"
# dependencies = [
#     "synthetic-dataset-generator",
# ]
# ///
import os

from synthetic_dataset_generator import launch

assert os.getenv("HF_TOKEN")  # push the data to huggingface
os.environ["BASE_URL"] = "http://127.0.0.1:11434/v1/"
os.environ["MODEL"] = "llama3.1"

launch()
