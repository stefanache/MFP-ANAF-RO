# 🚀 Ollama x Streamlit Playground

This project demonstrates how to run and manage models locally using [Ollama](https://ollama.com/) by creating an interactive UI with [Streamlit](https://streamlit.io).

The app has a page for running chat-based models and also one for nultimodal models (_llava and bakllava_) for vision.

## App in Action

![GIF](assets/ollama_streamlit.gif)

**Check out the video tutorial 👇**

<a href="https://youtu.be/bAI_jWsLhFM">
  <img src="https://img.youtube.com/vi/bAI_jWsLhFM/hqdefault.jpg" alt="Watch the video" width="100%">
</a>

## Features

- **Interactive UI**: Utilize Streamlit to create a user-friendly interface.
- **Local Model Execution**: Run your Ollama models locally without the need for external APIs.
- **Real-time Responses**: Get real-time responses from your models directly in the UI.

## Installation

Before running the app, ensure you have Python installed on your machine. Then, clone this repository and install the required packages using pip:

```bash
git clone https://github.com/tonykipkemboi/ollama_streamlit_demos.git
```

```bash
cd ollama_streamlit_demos
```

```bash
pip install -r requirements.txt
```

## Usage

To start the app, run the following command in your terminal:

```bash
streamlit run 01_💬_Chat_Demo.py
```

Navigate to the URL provided by Streamlit in your browser to interact with the app.

**NB: Make sure you have downloaded [Ollama](https://ollama.com/) to your system.**

## Contributing

Interested in contributing to this app?

- Great!
- I welcome contributions from everyone.

Got questions or suggestions?

- Feel free to open an issue or submit a pull request.

## Acknowledgments

👏 Kudos to the [Ollama](https://ollama.com/) team for their efforts in making open-source models more accessible!



<hr/>

[*Observatii*:](https://github.com/ollama/ollama/blob/main/docs/api.md)

 - Serverul [**Ollama**](https://langfuse.com/docs/integrations/ollama) poate fi [accesat](https://github.com/ollama/ollama/blob/main/docs/api.md?plain=1) si prin intermediul [cURL](https://4sysops.com/archives/how-to-use-curl-on-windows/)
 - Pentru a testa sub sistemul de operare *Windows*, functionalitatea serverului **Ollama**, puteti proceda in felul urmator:
   - puteti descarca intr-un director pe desktop fisierele **ollama_test.bat** si fisierele text(text.txt, **generate.txt**, embeddings.txt) si apoi
   - rulati *batch*-ul ***ollama_test.bat*** cu dublu-click :)
   - acum, rularea se efectueaza doar pt **generate.txt** dar daca doriti sa utilizati/rulati si celelalte [exemple](https://docs.deepwisdom.ai/main/en/guide/tutorials/integration_with_open_llm.html) decomentati(stergeti **rem** din fata liniei liniile aferente
  
   - O alternativa la interfata de browser **streamlit**, o poate constitui [**gradio**](https://voipnuggets.com/2024/04/27/run-llama3-and-phi3-locally-with-gradio-and-ollama/)
