#   https://anakin.ai/blog/llama-3-rag-locally/
import os
import streamlit as st
import ollama
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_community.document_loaders import WebBaseLoader
from langchain_community.vectorstores import Chroma
from langchain_community.embeddings import OllamaEmbeddings

# Set the USER_AGENT environment variable
os.environ['USER_AGENT'] = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36"

st.title("Chat with Webpage 🌐")
st.caption("This app allows you to chat with a webpage using local Llama-3 and RAG")

# Get the webpage URL from the user
webpage_url = st.text_input("Enter Webpage URL", type="default")

splits = None  # Initialize splits to None

if webpage_url:
    # 1. Load the data
    try:
        loader = WebBaseLoader(webpage_url)
        docs = loader.load()
        text_splitter = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=10)
        splits = text_splitter.split_documents(docs)
        
        # 2. Create Ollama embeddings and vector store
        embeddings = OllamaEmbeddings(model="llama3")
        vectorstore = Chroma.from_documents(documents=splits, embedding=embeddings)

        st.success(f"Loaded {webpage_url} successfully!")

    except Exception as e:
        st.error(f"Error loading webpage: {e}")
        splits = None

# 3. Call Ollama Llama3 model
def ollama_llm(question, context):
    formatted_prompt = f"Question: {question}\n\nContext: {context}"
    response = ollama.chat(model='llama3', messages=[{'role': 'user', 'content': formatted_prompt}])
    return response['message']['content']

# 4. RAG Setup
if splits:
    retriever = vectorstore.as_retriever()

    def combine_docs(docs):
        return "\n\n".join(doc.page_content for doc in docs)

    def rag_chain(question):
        retrieved_docs = retriever.invoke(question)
        formatted_context = combine_docs(retrieved_docs)
        return ollama_llm(question, formatted_context)

    # Ask a question about the webpage
    prompt = st.text_input("Ask any question about the webpage")

    # Chat with the webpage
    if prompt:
        result = rag_chain(prompt)
        st.write(result)
