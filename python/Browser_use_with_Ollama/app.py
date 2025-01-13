# Optional: set the OLLAMA  host to a remote server
# os.environ["OLLAMA_HOST"]="http://x.x.x.x:11434"

import asyncio
from browser_use import Agent
from langchain_ollama import ChatOllama

async def run_search() -> str:
    agent = Agent(
#        task="Go to Reddit, search for 'browser-use' in the search bar, click on the first post and return the first comment.",
#        task = "Search for a 'browser use' post on the r/LocalLLaMA subreddit and open it.",
        task = "Go the fahdmirza.com and return me the title of first blog post from home page.",
        llm=ChatOllama(
# or, see for the LLM' NAME with: > ollama list        
#            model="llama 3.1:latest",        
            model="qwen2.5:32b-instruct-q4_K_M",
            num_ctx=32000,
        ),
    )
    
    result = await agent.run()
    return result
    
async def main():
    result = await run_search()
    print("\n\n", result)
    
if __name__ == "__main__":    
    asyncio.run(main())    
    