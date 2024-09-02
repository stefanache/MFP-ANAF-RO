import streamlit as st
import speech_recognition as sr

def record_voice(language="en-US"):
    # Inițializare variabilă de stare dacă nu există
    if "text_received" not in st.session_state:
        st.session_state.text_received = []

    # Inițializare recognizer
    recognizer = sr.Recognizer()

    with sr.Microphone() as source:
        st.write("Listening...")
        audio = recognizer.listen(source)

        try:
            # Convertirea audio-ului în text
            text = recognizer.recognize_google(audio, language=language)
            st.session_state.text_received.append(text)
            st.write(f"Recognized: {text}")
        except sr.UnknownValueError:
            st.write("Sorry, could not understand the audio.")
        except sr.RequestError:
            st.write("Could not request results; check your internet connection.")

    return st.session_state.text_received[-1] if st.session_state.text_received else None
