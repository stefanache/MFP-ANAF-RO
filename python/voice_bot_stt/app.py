import streamlit as st
from voice import record_voice
from langchain_community.llms import Ollama

def language_selector():
    # Selectorul de limbă pentru recunoașterea vocală
    language = st.selectbox("Select Language", ["en-US", "ro-RO"])
    return language

def setup_llm():
    # Configurarea LLM-ului Ollama folosind modelul LLaMA 3
    llm = Ollama(model="llama3")
    return llm

def main():
    st.title("Voice Bot with LLaMA 3")

    # Inițializarea variabilelor de stare înainte de utilizare
    if "text_received" not in st.session_state:
        st.session_state.text_received = []

    # Selectează limba și înregistrează vocea
    language = language_selector()
    if st.button("Record Voice"):
        question = record_voice(language=language)
        if question:
            st.write(f"Question: {question}")
            # Configurarea LLM-ului Ollama și obținerea răspunsului
            llm = setup_llm()

            # Generarea unui răspuns folosind LLM-ul direct
            response = llm.predict(question)
            
            st.write(f"Response: {response}")
        else:
            st.write("No voice input detected.")

if __name__ == "__main__":
    main()
