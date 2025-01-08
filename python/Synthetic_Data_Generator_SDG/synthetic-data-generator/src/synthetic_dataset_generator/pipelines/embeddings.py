from typing import List

from sentence_transformers import SentenceTransformer
from sentence_transformers.models import StaticEmbedding

from synthetic_dataset_generator.constants import STATIC_EMBEDDING_MODEL

static_embedding = StaticEmbedding.from_model2vec(STATIC_EMBEDDING_MODEL)
model = SentenceTransformer(modules=[static_embedding])


def get_embeddings(texts: List[str]) -> List[List[float]]:
    return [embedding.tolist() for embedding in model.encode(texts)]


def get_sentence_embedding_dimensions() -> int:
    return model.get_sentence_embedding_dimension()
