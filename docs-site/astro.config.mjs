// @ts-check
import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";
import starlightLlmsTxt from "starlight-llms-txt";
// Local link during migration; switch to "^0.1.0" once @xberg-io/docs-theme is published.
import { xbergStarlightConfig } from "@xberg-io/docs-theme";

const API_LANGUAGES = [
	{ label: "Python", slug: "reference/api-python" },
	{ label: "TypeScript / Node.js", slug: "reference/api-typescript" },
	{ label: "Rust", slug: "reference/api-rust" },
	{ label: "Go", slug: "reference/api-go" },
	{ label: "Java", slug: "reference/api-java" },
	{ label: "Kotlin (Android)", slug: "reference/api-kotlin-android" },
	{ label: "C#", slug: "reference/api-csharp" },
	{ label: "Ruby", slug: "reference/api-ruby" },
	{ label: "PHP", slug: "reference/api-php" },
	{ label: "Elixir", slug: "reference/api-elixir" },
	{ label: "Dart", slug: "reference/api-dart" },
	{ label: "Swift", slug: "reference/api-swift" },
	{ label: "Zig", slug: "reference/api-zig" },
	{ label: "WebAssembly", slug: "reference/api-wasm" },
	{ label: "C / FFI", slug: "reference/api-c" },
];

// https://astro.build/config
export default defineConfig({
	site: "https://docs.tree-sitter-language-pack.xberg.io",
	integrations: [
		starlight(
			xbergStarlightConfig({
				title: "tree-sitter-language-pack",
				description:
					"306 tree-sitter parsers with code intelligence, chunking, and native bindings for " +
					"Python, Node.js, Rust, Go, Java, Ruby, Elixir, PHP, and WebAssembly.",
				githubUrl: "https://github.com/xberg-io/tree-sitter-language-pack",
				editBaseUrl: "https://github.com/xberg-io/tree-sitter-language-pack/edit/main/docs-site/",
				plugins: [starlightLlmsTxt()],
				sidebar: [
					{ label: "Home", link: "/" },
					{
						label: "Get Started",
						items: [
							{ label: "Installation", slug: "getting-started/installation" },
							{ label: "Quick Start", slug: "getting-started/quickstart" },
						],
					},
					{
						label: "Guides",
						items: [
							{
								label: "Core",
								items: [
									{ label: "Parsing Code", slug: "guides/parsing" },
									{ label: "Code Intelligence", slug: "guides/intelligence" },
									{ label: "Chunking for LLMs", slug: "guides/chunking" },
									{ label: "Configuration", slug: "guides/configuration" },
									{ label: "Extraction Queries", slug: "guides/extraction" },
								],
							},
							{ label: "CLI", slug: "guides/cli" },
							{ label: "MCP Server", slug: "guides/mcp-server" },
							{ label: "AI Coding Assistants", slug: "guides/ai-coding-assistants" },
							{
								label: "Deployment",
								items: [
									{ label: "Docker", slug: "guides/docker" },
									{ label: "Building from Source", slug: "guides/building" },
									{ label: "Performance & Benchmarks", slug: "guides/performance" },
								],
							},
						],
					},
					{
						label: "Concepts",
						items: [
							{ label: "Architecture", slug: "concepts/architecture" },
							{ label: "Language Passthrough", slug: "concepts/language-passthrough" },
							{ label: "Download Model", slug: "concepts/download-model" },
							{ label: "Code Intelligence", slug: "concepts/code-intelligence" },
						],
					},
					{
						label: "Reference",
						items: [
							{ label: "API", items: API_LANGUAGES },
							{ label: "Languages", slug: "languages" },
							{ label: "Types", slug: "reference/types" },
							{ label: "Errors", slug: "reference/errors" },
							{ label: "Configuration", slug: "reference/configuration" },
						],
					},
					{
						label: "More",
						items: [
							{ label: "Contributing", slug: "contributing" },
							{ label: "CI / CD", slug: "contributing/ci" },
							{ label: "Changelog", slug: "changelog" },
							{ label: "Ecosystem", slug: "ecosystem" },
						],
					},
				],
			}),
		),
	],
});
