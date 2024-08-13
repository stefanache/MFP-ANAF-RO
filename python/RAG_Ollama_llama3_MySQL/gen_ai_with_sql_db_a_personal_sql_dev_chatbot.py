# https://medium.com/@aqdasansari2024/generative-ai-with-sql-database-a-personal-sql-developer-chatbot-c1cf491db8be
print('start')
from langchain_community.utilities import SQLDatabase
from langchain_experimental.sql import SQLDatabaseChain
from langchain_community.llms import Ollama
from sqlalchemy import create_engine, MetaData

# Configurăm LLM-ul (Ollama) cu modelul dorit
llm = Ollama(model="llama3")

# Detaliile pentru conectarea la baza de date MySQL
username = 'root'
password = ''
host = 'localhost'
port = '3306'
database = 'rag_test'
mysql_uri = f"mysql+mysqlconnector://{username}:{password}@{host}:{port}/{database}"
engine = create_engine(mysql_uri)

# Reflectăm meta datele din baza de date
metadata = MetaData()
metadata.reflect(bind=engine)

# Inițializăm SQLDatabase cu motorul SQLAlchemy
db = SQLDatabase(engine)

# Creăm lanțul SQLDatabaseChain folosind metoda from_llm
sql_chain = SQLDatabaseChain.from_llm(llm=llm, db=db, verbose=True)

# Executăm interogarea
print('\nexecutam interogarea')
try:
    result = sql_chain.invoke({"query": "How many different Artists are in the database?"})
    print(result)
except Exception as e:
    print(f"An error occurred: {e}")
print('end')






