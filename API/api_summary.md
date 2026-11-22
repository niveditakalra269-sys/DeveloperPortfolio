# REST API Summary & Analysis

## What is a REST API?
A REST API (Representational State Transfer Application Programming Interface) is a web service interface that allows software applications to communicate over standard HTTP methods such as GET, POST, PUT, and DELETE. It exchanges structured data—typically in JSON format—between a client and a server without maintaining client session state on the server.

## HTTP Status Codes Observed
* **200 OK:** Indicates that the HTTP request succeeded and the server returned the requested JSON resource properly.
* **404 Not Found:** Indicates that the requested endpoint or user resource does not exist on the server.

## `jq` Filter Breakdown
Filter used:
```bash
jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
```
* `{ ... }`: Constructs a brand-new JSON object with custom key names.
* `name:.name`: Extracts the user's `name` field.
* `repos:.public_repos`: Extracts `public_repos` and renames the key to `repos`.
* `followers:.followers`: Extracts the `followers` count.
* `joined:.created_at`: Extracts the account creation timestamp from `created_at`.
