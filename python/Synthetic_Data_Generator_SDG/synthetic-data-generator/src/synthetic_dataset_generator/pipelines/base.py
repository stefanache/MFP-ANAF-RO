from synthetic_dataset_generator.constants import API_KEYS

TOKEN_INDEX = 0


def _get_next_api_key():
    global TOKEN_INDEX
    api_key = API_KEYS[TOKEN_INDEX % len(API_KEYS)]
    TOKEN_INDEX += 1
    return api_key
