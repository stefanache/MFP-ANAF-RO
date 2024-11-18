import streamlit as st
import random
import re
from transformers import pipeline, set_seed

gpt2_pipe = pipeline('text-generation', model='Gustavosta/MagicPrompt-Stable-Diffusion', tokenizer='gpt2', pad_token_id=50256)


with open("examples.txt", "r") as f:
    line = f.readlines()

def generate(starting_text):
    seed = random.randint(100, 1000000)
    set_seed(seed)

    if starting_text == "":
        starting_text: str = line[random.randrange(0, len(line))].replace("\n", "").lower().capitalize()
        starting_text: str = re.sub(r"[,:\-–.!;?_]", '', starting_text)

    response = gpt2_pipe(starting_text, max_length=(len(starting_text) + random.randint(60, 90)), num_return_sequences=4)
    response_list = []
    for x in response:
        resp = x['generated_text'].strip()
        if resp != starting_text and len(resp) > (len(starting_text) + 4) and resp.endswith((":", "-", "—")) is False:
            response_list.append(resp+'\n')

    response_end = "\n".join(response_list)
    response_end = re.sub('[^ ]+\.[^ ]+','', response_end)
    response_end = response_end.replace("<", "").replace(">", "")

    if response_end != "":
        return response_end

st.title("Stable Diffusion Prompt Generator")

st.markdown("This is a web app for [this](https://huggingface.co/Gustavosta/MagicPrompt-Stable-Diffusion) model trained by Gustavosta for Stable Diffusion to create a Prompt from a few words. You can submit your own text or select from provided examples.")

starting_text = st.text_input(label="Initial Text", placeholder="Text here", value="")

if st.button("Generate"):
    result = generate(starting_text)
    st.write("<div style='background-color: #2E2E2E; padding: 10px;'>{}</div>".format("<br>".join(result.splitlines())), unsafe_allow_html=True)

examples = []
for x in range(5):
    examples.append(line[random.randrange(0, len(line))].replace("\n", "").lower().capitalize())

st.write("")
st.write("<div style='text-align: center; font-weight: bold;'>Examples:</div>",unsafe_allow_html=True)
for example in examples:
    st.write("<div style='background-color: #2E2E2E; padding: 10px; text-align: center;'>• {}</div>".format(example), unsafe_allow_html=True)