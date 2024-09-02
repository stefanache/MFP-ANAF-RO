#https://python.langchain.com/v0.2/docs/integrations/tools/graphql/
import requests
from langchain.agents import AgentType, create_react_agent
from langchain_community.llms import Ollama

# Initialize the LLM (Language Model)
llm = Ollama(model="llama3", temperature=0)

# Function to query GraphQL endpoint
def query_graphql(graphql_endpoint, query):
    response = requests.post(
        graphql_endpoint,
        json={"query": query},
    )
    return response.json()

# Example GraphQL query
graphql_fields = """
{
  allFilms {
    films {
      title
      director
      releaseDate
      speciesConnection {
        species {
          name
          classification
          homeworld {
            name
          }
        }
      }
    }
  }
}
"""

# GraphQL endpoint
graphql_endpoint = "https://swapi-graphql.netlify.app/.netlify/functions/index"

# Perform the GraphQL query
graphql_response = query_graphql(graphql_endpoint, graphql_fields)

# Define a simple prompt
suffix = "Search for the titles of all the Star Wars films stored in the GraphQL database."

# Combine the prompt and the query result
prompt = suffix + str(graphql_response)

# Use the LLM to process the response
response = llm.invoke(prompt)

print(response)
