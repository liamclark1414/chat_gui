# Local Chat

A minimal chat UI for models running in Ollama (default: `hermes3:8b`).

## Start

    ./run.sh            # starts Ollama if needed, opens http://localhost:8765
    ./run.sh --port 9000 --no-browser

## Features
- Live streaming replies, with a Stop button (or Esc)
- Chat history saved in the browser, plus a sidebar to switch between chats
- Markdown and code blocks with copy buttons
- Optional "thinking mode" (for models that support it, like qwen3) that shows the's reasoning (slower, since it writes the reasoning out first)
- System prompt, temperature, and a picker for any installed Ollama model
- Regenerate the last reply

No dependencies beyond Python 3. Set `OLLAMA_HOST` if Ollama isn't on 127.0.0.1:11434.
