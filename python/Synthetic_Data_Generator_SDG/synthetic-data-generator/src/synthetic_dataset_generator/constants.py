import os
import warnings

import argilla as rg

# Tasks
TEXTCAT_TASK = "text_classification"
SFT_TASK = "supervised_fine_tuning"

# Hugging Face
HF_TOKEN = os.getenv("HF_TOKEN")
if not HF_TOKEN:
    raise ValueError(
        "HF_TOKEN is not set. Ensure you have set the HF_TOKEN environment variable that has access to the Hugging Face Hub repositories and Inference Endpoints."
    )

# Inference
MAX_NUM_TOKENS = int(os.getenv("MAX_NUM_TOKENS", 2048))
MAX_NUM_ROWS: str | int = int(os.getenv("MAX_NUM_ROWS", 1000))
DEFAULT_BATCH_SIZE = int(os.getenv("DEFAULT_BATCH_SIZE", 5))
MODEL = os.getenv("MODEL", "meta-llama/Meta-Llama-3.1-8B-Instruct")
BASE_URL = os.getenv("BASE_URL", default=None)

_API_KEY = os.getenv("API_KEY")
if _API_KEY:
    API_KEYS = [_API_KEY]
else:
    API_KEYS = [os.getenv("HF_TOKEN")] + [
        os.getenv(f"HF_TOKEN_{i}") for i in range(1, 10)
    ]
API_KEYS = [token for token in API_KEYS if token]

# Determine if SFT is available
SFT_AVAILABLE = False
llama_options = ["llama3", "llama-3", "llama 3"]
qwen_options = ["qwen2", "qwen-2", "qwen 2"]
if os.getenv("MAGPIE_PRE_QUERY_TEMPLATE"):
    SFT_AVAILABLE = True
    passed_pre_query_template = os.getenv("MAGPIE_PRE_QUERY_TEMPLATE")
    if passed_pre_query_template.lower() in llama_options:
        MAGPIE_PRE_QUERY_TEMPLATE = "llama3"
    elif passed_pre_query_template.lower() in qwen_options:
        MAGPIE_PRE_QUERY_TEMPLATE = "qwen2"
    else:
        MAGPIE_PRE_QUERY_TEMPLATE = passed_pre_query_template
elif MODEL.lower() in llama_options or any(
    option in MODEL.lower() for option in llama_options
):
    SFT_AVAILABLE = True
    MAGPIE_PRE_QUERY_TEMPLATE = "llama3"
elif MODEL.lower() in qwen_options or any(
    option in MODEL.lower() for option in qwen_options
):
    SFT_AVAILABLE = True
    MAGPIE_PRE_QUERY_TEMPLATE = "qwen2"

if BASE_URL:
    SFT_AVAILABLE = False

if not SFT_AVAILABLE:
    warnings.warn(
        message="`SFT_AVAILABLE` is set to `False`. Use Hugging Face Inference Endpoints to generate chat data."
    )
    MAGPIE_PRE_QUERY_TEMPLATE = None

# Embeddings
STATIC_EMBEDDING_MODEL = "minishlab/potion-base-8M"

# Argilla
ARGILLA_API_URL = os.getenv("ARGILLA_API_URL")
ARGILLA_API_KEY = os.getenv("ARGILLA_API_KEY")
if ARGILLA_API_URL is None or ARGILLA_API_KEY is None:
    ARGILLA_API_URL = os.getenv("ARGILLA_API_URL_SDG_REVIEWER")
    ARGILLA_API_KEY = os.getenv("ARGILLA_API_KEY_SDG_REVIEWER")

if not ARGILLA_API_URL or not ARGILLA_API_KEY:
    warnings.warn("ARGILLA_API_URL or ARGILLA_API_KEY is not set or is empty")
    argilla_client = None
else:
    argilla_client = rg.Argilla(
        api_url=ARGILLA_API_URL,
        api_key=ARGILLA_API_KEY,
    )
