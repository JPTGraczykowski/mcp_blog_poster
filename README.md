# Fast MCP Blog Poster

## Project Summary
This project is a small MCP (Model Context Protocol) server for managing posts for a blog. It provides a set of tools for creating, updating, reading, and deleting blog posts, making it easy to integrate with other services or frontends that need to interact with blog content.

## Available Tools
The following tools are available for managing blog posts:
- **CreateTool**: Create a new post
- **UpdateTool**: Update a post by ID
- **UpdateLastPostTool**: Update the last post
- **DeleteTool**: Delete a post by ID
- **DeleteLastPostTool**: Delete the last post
- **ReadTool**: Read a post by ID

These tools are implemented as ActionTool classes and are automatically registered with the MCP server.

## Main Gem Used
This project is built on top of the [`fast-mcp`](https://github.com/yjacquin/fast-mcp) gem, which provides the Model Context Protocol (MCP) for Rails applications. The gem enables easy definition and registration of tools and resources for building modern, protocol-driven APIs.

## Inspiration
- [Ruby on Rails and Model Context Protocol](https://www.visuality.pl/posts/ruby-on-rails-and-model-context-protocol)
- [MCP Server with Rails and FastMCP](https://www.visuality.pl/posts/mcp-server-with-rails-and-fastmcp)
