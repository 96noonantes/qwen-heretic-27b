FROM ghcr.io/ggml-org/llama.cpp:server-cuda

# Qwen3.8-27B Heretic JP RP (Q4_K_M) baked into image layer.
# The llama.cpp server image entrypoint consumes LLAMA_ARG_* env vars
# (see /entrypoint.sh in the base image), so the same env scheme keeps working.
ARG MODEL_URL

RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && mkdir -p /models \
    && curl -sL --retry 3 --fail -o /models/model.gguf "$MODEL_URL" \
    && rm -rf /var/lib/apt/lists/* \
    && ls -la /models