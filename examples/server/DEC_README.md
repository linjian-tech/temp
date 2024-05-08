# LLaMA.cpp Distributed HTTP Server

Fast, lightweight, pure C/C++ HTTP server based on [httplib](https://github.com/yhirose/cpp-httplib), [nlohmann::json](https://github.com/nlohmann/json) and **llama.cpp**.

Set of LLM REST APIs and a simple web front end to interact with llama.cpp.

**Features:**
 * LLM inference of F16 and quantum models on GPU and CPU
 * [OpenAI API](https://github.com/openai/openai-openapi) compatible chat completions and embeddings routes
 * Parallel decoding with multi-user support
 * Continuous batching
 * Multimodal (wip)
 * Monitoring endpoints

The project is under active development, and we are [looking for feedback and contributors](https://github.com/ggerganov/llama.cpp/issues/4216).


## Build

server is build alongside everything else from the root of the project

- Using `make`:

  ```bash
  make server
  ```

- Using `CMake`:

  ```bash
  cmake --build . --config Release
  ```

## (Dec) Single node quick Start

To get started right away, run the following command, making sure to use the correct path for the model you have (ip should match multihosts):

### Unix-based systems (Linux, macOS, etc.)

```
bash dec_single_machine_start.sh 10.96.183.254
```

## (Dec) Single node close all occupied port

To close all occupied port, run the following command, making sure to use the correct path for the model you have:

### Unix-based systems (Linux, macOS, etc.)

```
bash dec_single_machine_close.sh
```

## (Dec) Muiti node quick Start

To get started right away, run the following command, making sure to use the correct path for the model you have:

### Unix-based systems (Linux, macOS, etc.)

```
bash dec_multi_machine_manager.sh start
```

## (Dec) Multi node close all occupied port

To close all occupied port, run the following command, making sure to use the correct path for the model you have:

### Unix-based systems (Linux, macOS, etc.)

```
bash dec_multi_machine_manager.sh close
```


