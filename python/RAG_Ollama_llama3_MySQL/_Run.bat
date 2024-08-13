@echo off
cls
echo IF HAVE NOT ENOUGH RESOURCES THEN MUST BE PATIENT.....
rem echo 1.https://www.youtube.com/watch?v=z3HwYWqacFI

rem pip install -r requirements.txt |more

rem echo example of question: 
rem echo how many albums we have in database?
rem echo how many users we have in database?
rem echo how many users above are from India we have in database?
rem echo how many users above are from Brazil we have in database?
rem echo echo how many users above are from USA we have in database?

rem streamlit run app.py |more

echo 2.https://www.youtube.com/watch?v=GlyvykfIPJI
echo https://github.com/TheAILearner/Langchain-Agents/blob/main/SQL_Agent_with_LLama3.ipynb
rem pip install langchain langchain_community ollama

echo q=How many different Artists are in the database?
rem python sql_agent_with_llama3.py |more

rem pip install langchain langchain_experimental sqlalchemy mysql-connector-python |more
python  gen_ai_with_sql_db_a_personal_sql_dev_chatbot.py

pause