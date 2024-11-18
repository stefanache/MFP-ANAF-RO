import whisper
model = whisper.load_model("medium.en")
out = model.transcribe("C:\development\python\LLM\local-talking-llm\README.md", language="french")
print(out['text'],flust=True)