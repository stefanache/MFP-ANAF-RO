# -*- coding: utf-8 -*-

from langchain_community.llms.ollama import Ollama
from langchain.memory import ConversationBufferMemory

# Initialize the Ollama LLM with the correct model name
ollama = Ollama(
    model="llama3"  # Model name
)

# Create a memory object to retain conversational context
memory = ConversationBufferMemory()

def generate_response(user_input):
    # Save the user input to memory
    memory.save_context({"input": user_input}, {"output": ""})  # Initially set output to an empty string

    # Generate response from the model
    response = ollama.generate([user_input])  # Pass the input as a list of strings

    # Extract the text from the response
    response_text = "Sorry, I didn't get that."  # Default response in case of an error
    if response and response.generations:
        # Access the first item in the list of generations
        generation_chunks = response.generations[0]
        if generation_chunks and isinstance(generation_chunks, list):
            generation_chunk = generation_chunks[0]
            if hasattr(generation_chunk, 'text'):
                response_text = generation_chunk.text if generation_chunk.text else response_text
    
    # Save the model's response to memory
    memory.save_context({"input": user_input}, {"output": response_text})
    
    return response_text

# Interact with the chatbot
print("Starting chatbot. Type 'exit' to quit.")
while True:
    user_input = input("You: ")
    if user_input.lower() == "exit":
        print("Chatbot: Goodbye!")
        break

    # Call the function to get the response
    response = generate_response(user_input)
    print(f"Chatbot: {response}")
