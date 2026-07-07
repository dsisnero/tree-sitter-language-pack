---
title: "AI Coding Assistants"
description: "Install the tree-sitter-language-pack plugin into Claude Code, Codex, Cursor, Gemini, Factory Droid, GitHub Copilot, or opencode."
---

Give your coding agent structural understanding of any codebase — parse and extract code intelligence from 306 languages without leaving the chat.

## What this plugin does

The plugin drops the tree-sitter-language-pack agent skills straight into your coding assistant. Once installed, the agent can:

- Parse a file in any of 306 languages and reason over its syntax tree.
- Pull out functions, classes, imports, exports, and symbols on request.
- Detect a file's language, list supported languages, and manage the local parser cache.

Under the hood it registers the `ts-pack` MCP server for you, so there is nothing to configure by hand. The plugin is published in the [`xberg-io/plugins`](https://github.com/xberg-io/plugins) marketplace, where you can also see version history and the source for every plugin.

If you prefer manual MCP registration over the plugin, the CLI exposes the same server directly. See the [MCP Server guide](/guides/mcp-server/) for stdio and HTTP transport setup with any compatible IDE.

## Installing

Pick your harness below.

<details open>
<summary><strong>Claude Code</strong></summary>

```text
/plugin marketplace add xberg-io/plugins
/plugin install tree-sitter-language-pack@xberg-io
```

</details>

<details>
<summary><strong>Codex CLI</strong></summary>

```text
/plugins add https://github.com/xberg-io/plugins
```

Then search for `tree-sitter-language-pack` and select **Install Plugin**.
</details>

<details>
<summary><strong>Cursor</strong></summary>

Settings → Plugins → Add from URL → `https://github.com/xberg-io/plugins`, then select **tree-sitter-language-pack**.
</details>

<details>
<summary><strong>Gemini CLI</strong></summary>

```text
gemini extensions install https://github.com/xberg-io/plugins
```

</details>

<details>
<summary><strong>Factory Droid</strong></summary>

```text
droid plugin marketplace add https://github.com/xberg-io/plugins
droid plugin install tree-sitter-language-pack@xberg-io
```

</details>

<details>
<summary><strong>GitHub Copilot CLI</strong></summary>

```text
copilot plugin marketplace add https://github.com/xberg-io/plugins
copilot plugin install tree-sitter-language-pack@xberg-io
```

</details>

<details>
<summary><strong>opencode</strong></summary>

Add the package to `opencode.json`:

```json
{
  "$schema": "https://opencode.ai/config.json",
  "plugin": ["@xberg-io/opencode-tree-sitter-language-pack"]
}
```

</details>
