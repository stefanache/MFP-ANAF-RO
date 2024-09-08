Uneori server-ul ***Ollama***,  s-a dovedit a fi prea lent. 

In plus, as fi dorit (**ceva**](https://github.com/Mozilla-Ocho/llamafile) specializat care sa-mi efectueze **descrierea imaginilor**. 

Asa ca am decis sa creez acest [**`CPU-workshop`**](https://github.com/Mozilla-Ocho/llamafile) cu serverul [**llamafile**](https://github.com/Mozilla-Ocho/llamafile) sub sistemul de operare ***Windows 10(Pro)***.

Ca si model **LLM**, specializat in descrierea imaginilor, am optat pt. **llava versiunea 1.5**.

Cu alte cuvinte, pe partea de server,  **llamafile**(bazat pe ***llama.cpp***) va (de)servi ca si/drept model/LLM **llava**.

Despre [descarcarea fisierului](https://github.com/Mozilla-Ocho/llamafile): 

  - [**llava-v1.5-7b-q4.llamafile?download=true**](https://huggingface.co/Mozilla/llava-v1.5-7b-llamafile/resolve/main/llava-v1.5-7b-q4.llamafile?download=true) 

puteti citi [aici](https://python.langchain.com/v0.2/docs/integrations/llms/llamafile/)

***Remarca:***

As fi incarcat fisierul **llava-v1.5-7b-q4llamfile.exe** dar este foarte mare(cca ***`4GB`***) iar cei de la github nu permit incarcarea unui fisier mai mare de ***`25MB`***. Asadar, deoarece fisierul depaseste aceasta limita, nu am putut sa-l incarc/uplod aici. Totusi, am furnizat mai jos [*link-ul de descarcare*](https://huggingface.co/Mozilla/llava-v1.5-7b-llamafile/resolve/main/llava-v1.5-7b-q4.llamafile?download=true) si am indicat faptul ca, trebuie facut ***executabil***(adica sa fie inlaturata/indepartata/suprascrisa partea ***?download=true*** iar in locul ei sa fie pusa extensia ***.exe***), inainte de a fi rulat...Desigur pt automatizarea descarcarii puteti instala in Windows fie [**wget.exe**](https://builtvisible.com/download-your-website-with-wget/) fie [**git.exe**](https://www.simplilearn.com/tutorials/git-tutorial/git-installation-on-windows) pt a fi folosit la descarcare (in general, nu numai in acest workshop)! Desigur, ati putea, foarte bine, folosi pt descarcare si [**cURL**](https://mtlynch.io/notes/llamafile-lava1.5/)


Dupa descarcare/download-are, modificati/redenumiti extensia fisierului

 - din [**llava-v1.5-7b-q4.llamafile?download=true**](https://huggingface.co/Mozilla/llava-v1.5-7b-llamafile/resolve/main/llava-v1.5-7b-q4.llamafile?download=true) in **llava-v1.5-7b-q4llamfile.exe**

pt a deveni/a fi recunoscut ca executabil de catre sistemul windows.

Rularea server-ului se va face cu dublu-click pe fisierul [**_1.RUN_server.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/_1.RUN_server.bat) care va rula [**app.py**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/app.py)

Asteptati finalizarea incarcarii si rularii serverului ca mai apoi sa puteti folosi din Browser adresa **http://localhost:8080/** unde veti putea transmite mesaje. Apoi minimizati fereastra in bara dar nu o inchideti pt ca serverul trebuie sa ramana in functiune.

Dupa ce aveti serverul llamafile in functiune puteti rula clientul dublu-clikand fisierul [**_2.RUN_client_request_image.bat**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/_2.RUN_client_request_image.bat), care va rula [**request_image.py**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/request_image.py)

Asadar, pe partea de client, puteti folosi [**browser**](http://localhost:8080/)-ul ori puteti scrie unul/de ce nu mai multi clienti, in variate limbaje(eu am ales sa raman totusi la varianta **python**)

Clientul [**request_image.py**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/request_image.py), va incarca imaginea [**vulcano.jpeg**](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/vulcano.jpeg), pe care o va descrie, conform intrebarii solicitate(de catre clientul **request_image.py**)

<details><summary> - pe parte de server ar trebui sa aveti, in consola/fereastra server-ului, un dialog de forma:</summary>
  
https://github.com/Mozilla-Ocho/llamafile

- dupa descarcarea modelului llamafileva(interpreteaza si imagini), pe wgetindows 10(Pro), trebuie ...
... adaugata extensia .exe,...
... pt a deveni executabil!
rulam executabilul LLM-ului llava - versiune 1.5
nu inchideti fereastra serverului local Llava(oprirea se face cu CTRL+C) ci doar o minimizati
note: if you have an AMD or NVIDIA GPU then you need to pass -ngl 9999 to enable GPU offloading
{"build":1500,"commit":"a30b324","function":"server_cli","level":"INFO","line":2869,"msg":"build info","tid":"10437056","timestamp":1725783948}
{"function":"server_cli","level":"INFO","line":2872,"msg":"system info","n_threads":4,"n_threads_batch":-1,"system_info":"AVX = 1 | AVX_VNNI = 0 | AVX2 = 1 | AVX512 = 0 | AVX512_VBMI = 0 | AVX512_VNNI = 0 | AVX512_BF16 = 0 | FMA = 1 | NEON = 0 | ARM_FMA = 0 | F16C = 1 | FP16_VA = 0 | WASM_SIMD = 0 | BLAS = 0 | SSE3 = 1 | SSSE3 = 1 | VSX = 0 | MATMUL_INT8 = 0 | LLAMAFILE = 1 | ","tid":"10437056","timestamp":1725783948,"total_threads":4}
{"function":"load_model","level":"INFO","line":435,"msg":"Multi Modal Mode Enabled","tid":"10437056","timestamp":1725783948}
clip_model_load: model name:   openai/clip-vit-large-patch14-336
clip_model_load: description:  image encoder for LLaVA
clip_model_load: GGUF version: 3
clip_model_load: alignment:    32
clip_model_load: n_tensors:    377
clip_model_load: n_kv:         19
clip_model_load: ftype:        q4_0
clip_model_load: loaded meta data with 19 key-value pairs and 377 tensors from llava-v1.5-7b-mmproj-Q4_0.gguf
clip_model_load: Dumping metadata keys/values. Note: KV overrides do not apply in this output.
clip_model_load: - kv   0:                       general.architecture str              = clip
clip_model_load: - kv   1:                      clip.has_text_encoder bool             = false
clip_model_load: - kv   2:                    clip.has_vision_encoder bool             = true
clip_model_load: - kv   3:                   clip.has_llava_projector bool             = true
clip_model_load: - kv   4:                          general.file_type u32              = 2
clip_model_load: - kv   5:                               general.name str              = openai/clip-vit-large-patch14-336
clip_model_load: - kv   6:                        general.description str              = image encoder for LLaVA
clip_model_load: - kv   7:                     clip.vision.image_size u32              = 336
clip_model_load: - kv   8:                     clip.vision.patch_size u32              = 14
clip_model_load: - kv   9:               clip.vision.embedding_length u32              = 1024
clip_model_load: - kv  10:            clip.vision.feed_forward_length u32              = 4096
clip_model_load: - kv  11:                 clip.vision.projection_dim u32              = 768
clip_model_load: - kv  12:           clip.vision.attention.head_count u32              = 16
clip_model_load: - kv  13:   clip.vision.attention.layer_norm_epsilon f32              = 0.000010
clip_model_load: - kv  14:                    clip.vision.block_count u32              = 23
clip_model_load: - kv  15:                     clip.vision.image_mean arr[f32,3]       = [0.481455, 0.457828, 0.408211]
clip_model_load: - kv  16:                      clip.vision.image_std arr[f32,3]       = [0.268630, 0.261303, 0.275777]
clip_model_load: - kv  17:                              clip.use_gelu bool             = false
clip_model_load: - kv  18:               general.quantization_version u32              = 2
clip_model_load: - type  f32:  235 tensors
clip_model_load: - type  f16:    1 tensors
clip_model_load: - type q4_0:  141 tensors
clip_model_load: CLIP using CPU backend
clip_model_load: text_encoder:   0
clip_model_load: vision_encoder: 1
clip_model_load: llava_projector:  1
clip_model_load: model size:     169.18 MB
clip_model_load: metadata size:  0.17 MB
clip_model_load: params backend buffer size =  169.18 MB (377 tensors)
clip_model_load: compute allocated memory: 32.89 MB
llama_model_loader: loaded meta data with 19 key-value pairs and 291 tensors from llava-v1.5-7b-Q4_K.gguf (version GGUF V3 (latest))
llama_model_loader: Dumping metadata keys/values. Note: KV overrides do not apply in this output.
llama_model_loader: - kv   0:                       general.architecture str              = llama
llama_model_loader: - kv   1:                               general.name str              = LLaMA v2
llama_model_loader: - kv   2:                       llama.context_length u32              = 4096
llama_model_loader: - kv   3:                     llama.embedding_length u32              = 4096
llama_model_loader: - kv   4:                          llama.block_count u32              = 32
llama_model_loader: - kv   5:                  llama.feed_forward_length u32              = 11008
llama_model_loader: - kv   6:                 llama.rope.dimension_count u32              = 128
llama_model_loader: - kv   7:                 llama.attention.head_count u32              = 32
llama_model_loader: - kv   8:              llama.attention.head_count_kv u32              = 32
llama_model_loader: - kv   9:     llama.attention.layer_norm_rms_epsilon f32              = 0.000010
llama_model_loader: - kv  10:                          general.file_type u32              = 15
llama_model_loader: - kv  11:                       tokenizer.ggml.model str              = llama
llama_model_loader: - kv  12:                      tokenizer.ggml.tokens arr[str,32000]   = ["<unk>", "<s>", "</s>", "<0x00>", "<...
llama_model_loader: - kv  13:                      tokenizer.ggml.scores arr[f32,32000]   = [0.000000, 0.000000, 0.000000, 0.0000...
llama_model_loader: - kv  14:                  tokenizer.ggml.token_type arr[i32,32000]   = [2, 3, 3, 6, 6, 6, 6, 6, 6, 6, 6, 6, ...
llama_model_loader: - kv  15:                tokenizer.ggml.bos_token_id u32              = 1
llama_model_loader: - kv  16:                tokenizer.ggml.eos_token_id u32              = 2
llama_model_loader: - kv  17:            tokenizer.ggml.padding_token_id u32              = 0
llama_model_loader: - kv  18:               general.quantization_version u32              = 2
llama_model_loader: - type  f32:   65 tensors
llama_model_loader: - type q4_K:  193 tensors
llama_model_loader: - type q6_K:   33 tensors
llm_load_vocab: special tokens definition check successful ( 259/32000 ).
llm_load_print_meta: format           = GGUF V3 (latest)
llm_load_print_meta: arch             = llama
llm_load_print_meta: vocab type       = SPM
llm_load_print_meta: n_vocab          = 32000
llm_load_print_meta: n_merges         = 0
llm_load_print_meta: n_ctx_train      = 4096
llm_load_print_meta: n_embd           = 4096
llm_load_print_meta: n_head           = 32
llm_load_print_meta: n_head_kv        = 32
llm_load_print_meta: n_layer          = 32
llm_load_print_meta: n_rot            = 128
llm_load_print_meta: n_swa            = 0
llm_load_print_meta: n_embd_head_k    = 128
llm_load_print_meta: n_embd_head_v    = 128
llm_load_print_meta: n_gqa            = 1
llm_load_print_meta: n_embd_k_gqa     = 4096
llm_load_print_meta: n_embd_v_gqa     = 4096
llm_load_print_meta: f_norm_eps       = 0.0e+00
llm_load_print_meta: f_norm_rms_eps   = 1.0e-05
llm_load_print_meta: f_clamp_kqv      = 0.0e+00
llm_load_print_meta: f_max_alibi_bias = 0.0e+00
llm_load_print_meta: f_logit_scale    = 0.0e+00
llm_load_print_meta: n_ff             = 11008
llm_load_print_meta: n_expert         = 0
llm_load_print_meta: n_expert_used    = 0
llm_load_print_meta: causal attn      = 1
llm_load_print_meta: pooling type     = 0
llm_load_print_meta: rope type        = 0
llm_load_print_meta: rope scaling     = linear
llm_load_print_meta: freq_base_train  = 10000.0
llm_load_print_meta: freq_scale_train = 1
llm_load_print_meta: n_yarn_orig_ctx  = 4096
llm_load_print_meta: rope_finetuned   = unknown
llm_load_print_meta: ssm_d_conv       = 0
llm_load_print_meta: ssm_d_inner      = 0
llm_load_print_meta: ssm_d_state      = 0
llm_load_print_meta: ssm_dt_rank      = 0
llm_load_print_meta: model type       = 7B
llm_load_print_meta: model ftype      = Q4_K - Medium
llm_load_print_meta: model params     = 6.74 B
llm_load_print_meta: model size       = 3.80 GiB (4.84 BPW)
llm_load_print_meta: general.name     = LLaMA v2
llm_load_print_meta: BOS token        = 1 '<s>'
llm_load_print_meta: EOS token        = 2 '</s>'
llm_load_print_meta: UNK token        = 0 '<unk>'
llm_load_print_meta: PAD token        = 0 '<unk>'
llm_load_print_meta: LF token         = 13 '<0x0A>'
llm_load_tensors: ggml ctx size =    0.17 MiB
llm_load_tensors:        CPU buffer size =  3891.24 MiB
..................................................................................................
llama_new_context_with_model: n_ctx      = 2048
llama_new_context_with_model: n_batch    = 2048
llama_new_context_with_model: n_ubatch   = 512
llama_new_context_with_model: flash_attn = 0
llama_new_context_with_model: freq_base  = 10000.0
llama_new_context_with_model: freq_scale = 1
llama_kv_cache_init:        CPU KV buffer size =  1024.00 MiB
llama_new_context_with_model: KV self size  = 1024.00 MiB, K (f16):  512.00 MiB, V (f16):  512.00 MiB
llama_new_context_with_model:        CPU  output buffer size =     0.14 MiB
llama_new_context_with_model:        CPU compute buffer size =   164.01 MiB
llama_new_context_with_model: graph nodes  = 1030
llama_new_context_with_model: graph splits = 1
{"function":"initialize","level":"INFO","line":489,"msg":"initializing slots","n_slots":1,"tid":"10437056","timestamp":1725783998}
{"function":"initialize","level":"INFO","line":498,"msg":"new slot","n_ctx_slot":2048,"slot_id":0,"tid":"10437056","timestamp":1725783998}
{"function":"server_cli","level":"INFO","line":3090,"msg":"model loaded","tid":"10437056","timestamp":1725783998}

llama server listening at http://127.0.0.1:8080

In the sandboxing block!
warning: this OS doesn't support pledge() security
{"function":"server_cli","hostname":"127.0.0.1","level":"INFO","line":3213,"msg":"HTTP server listening","port":"8080","tid":"10437056","timestamp":1725783998}
{"function":"update_slots","level":"INFO","line":1659,"msg":"all slots are idle and system prompt is empty, clear the KV cache","tid":"10437056","timestamp":1725783998}
{"function":"log_server_request","level":"INFO","line":2794,"method":"GET","msg":"request","params":{},"path":"/","remote_addr":"127.0.0.1","remote_port":59414,"status":200,"tid":"545385807360","timestamp":1725784052}
{"function":"log_server_request","level":"INFO","line":2794,"method":"GET","msg":"request","params":{},"path":"/json-schema-to-grammar.mjs","remote_addr":"127.0.0.1","remote_port":59414,"status":200,"tid":"545385807360","timestamp":1725784053}
{"function":"log_server_request","level":"INFO","line":2794,"method":"GET","msg":"request","params":{},"path":"/index.js","remote_addr":"127.0.0.1","remote_port":59415,"status":200,"tid":"438563197392","timestamp":1725784053}
{"function":"log_server_request","level":"INFO","line":2794,"method":"GET","msg":"request","params":{},"path":"/completion.js","remote_addr":"127.0.0.1","remote_port":59414,"status":200,"tid":"545385807360","timestamp":1725784053}
{"function":"log_server_request","level":"INFO","line":2794,"method":"GET","msg":"request","params":{},"path":"/favicon.ico","remote_addr":"127.0.0.1","remote_port":59414,"status":404,"tid":"545385807360","timestamp":1725784053}
{"function":"launch_slot_with_data","level":"INFO","line":884,"msg":"slot is processing task","slot_id":0,"task_id":0,"tid":"10437056","timestamp":1725784069}
{"function":"update_slots","level":"INFO","line":1910,"msg":"kv cache rm [p0, end)","p0":0,"slot_id":0,"task_id":0,"tid":"10437056","timestamp":1725784069}
encode_image_with_clip: image embedding created: 576 tokens
encode_image_with_clip: image encoded in  5739.65 ms by CLIP (    9.96 ms per image patch)

...

</details>

<details><summary> - iar pe parte de client, ar trebui sa aveti, dupa ceva timp, in ferestra aferenta, un dialog de forma:</summary>

https://gist.github.com/fullstackwebdev/3a34561a0c1d13db547c4c5f7a14e4b5

the server llavafile(LLM=llava1.5, server bazat pe llama.cpp) must be in 'running' state
must be patient...
 The image is a beautifully drawn cartoon picture of an orange, fiery mountain with smoke billowing out from it. A river flows through the scene and appears to be on fire as well, creating a dramatic atmosphere in this artistic representation.

In addition to the main mountain, there are several smaller mountains visible throughout the image, adding depth and complexity to the landscape. The cartoon-like style of the drawing gives it an animated feel, making it visually appealing for viewers.
 1. The main orange, fiery mountain with smoke billowing out from it: [0.26, 0.09, 0.58, 0.47]
2. Smaller mountains in the background: [0.36, 0.18, 0.99, 0.47]
3. The river flowing through the scene and appearing to be on fire as well: [0.15, 0.54, 0.92, 0.86]

...

</details>
  
Foarte interesente sunt si [**exemplele**](https://github.com/ggerganov/llama.cpp/blob/master/examples/llava/README.md) postate de catre cei de la Mozilla

Din moment c,e pe parte de client, putem folosi Browser-ul ca si client REST, atunci, pe cale de consecinta vom putea folosi si **cURL**.
Asadar putem apela din CLI(cmd.exe) acest client **cURL** via batch [***_2.curl_cli.bat***](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/_2.curl_cli.bat), client care la randul lui utilizeaza un alt fisier de indirectare si anume fisierul text  [*cli_rest_llama_cpp.txt*](https://github.com/stefanache/MFP-ANAF-RO/blob/main/python/llamafile_llava/cli_rest_llama_cpp.txt).
