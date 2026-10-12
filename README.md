# qwen-heretic-27b

llama.cpp server image with the **Qwen3.8-27B Heretic JP Roleplay (Q4_K_M)** model baked in.

Model: [mradermacher/Qwen3.8-27B-Heretic-JP-Roleplay-NSFW-DanbooruTags-i1-GGUF](https://huggingface.co/mradermacher/Qwen3.8-27B-Heretic-JP-Roleplay-NSFW-DanbooruTags-i1-GGUF) · `Q4_K_M` (16.55 GB)

## Usage

The base `ghcr.io/ggml-org/llama.cpp:server-cuda` image entrypoint reads `LLAMA_ARG_*` env vars.
Point `LLAMA_ARG_MODEL=/models/model.gguf` and pass the rest via `LLAMA_ARG_*` (host/port/n_gpu_layers/ctx etc.).