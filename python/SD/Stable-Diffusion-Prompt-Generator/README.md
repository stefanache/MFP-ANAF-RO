
# Stable Diffusion Prompt Creator

Created for [this](https://huggingface.co/Gustavosta/MagicPrompt-Stable-Diffusion) model trained by Gustavosta for Stable Diffusion to create a prompt from a few words. You can submit your own text or select from provided examples.

# Web App
Click [Here](https://huggingface.co/spaces/Kaludi/Stable-Diffusion-Prompt-Generator_App "Here") To View This App Online!

![Image](https://github.com/Kaludii/Stable-Diffusion-Prompt-Generator/blob/main/images/Stable-Diff-Prompt-Gen.png?raw=true)

## Features

-   Generate prompts based on a starting text entered by the user
-   Uses a pre-trained language model to generate the prompt
-   Option to select examples or enter own starting text

## Usage

To use the app, enter a starting text in the input field or select an example from the provided examples. Then click on the "Generate" button to generate a prompt based on the starting text.

## Technical details

The app uses Streamlit for the user interface and the Hugging Face Transformers library to access the pre-trained language model. The model is a GPT-2 language model trained for Stable Diffusion.

## Requirements

-   Python 3.6 or higher
-   Streamlit
-   Transformers (Hugging Face)

## Installation

1.  Clone the repository:

`git clone https://github.com/Kaludii/Stable-Diffusion-Prompt-Generator.git` 

2.  Install the required packages:

`pip install streamlit transformers` 

3.  Run the app:

`streamlit run app.py`
