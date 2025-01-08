# /// script
# requires-python = ">=3.11,<3.12"
# dependencies = [
#     "synthetic-dataset-generator",
# ]
# ///
import os

from synthetic_dataset_generator import launch

os.environ["MAGPIE_PRE_QUERY_TEMPLATE"] = "my_custom_template"
os.environ["MODEL"] = "google/gemma-2-9b-it"

launch()
