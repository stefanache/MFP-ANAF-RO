#   https://github.com/TheAILearner/Langchain-Agents/blob/main/SQL_Agent_with_LLama3.ipynb
# !pip install langchain langchain_community ollama

print('\n\n*** start ***')
import sys
import io
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8')


from langchain_community.llms import Ollama
llm = Ollama(model = "llama3")

print('\n\n*1* chunks for q= Hi how are you?')
for chunk in llm.stream("Hi how are you?"):
    print(chunk, end = "")

print('\n*2* print db table info:')
from langchain_community.utilities import SQLDatabase
#db = SQLDatabase.from_uri("sqlite:///chinook.db", sample_rows_in_table_info = 3) #3
username='root'
password=''
host='localhost'
port='3306'
database='rag_test'
mysql_uri = f"mysql+mysqlconnector://{username}:{password}@{host}:{port}/{database}"
db = SQLDatabase.from_uri(mysql_uri)
db.get_usable_table_names()
print(db.table_info)

print('\n\n*3* agent executor invoke:')
from langchain_community.agent_toolkits import create_sql_agent
from langchain.agents import AgentType
agent_executor = create_sql_agent(llm, db = db, agent_type=AgentType.ZERO_SHOT_REACT_DESCRIPTION, verbose = True) #True
agent_executor.invoke("How many different Artists are in the database?")
print('\n\n*** end-task ***')