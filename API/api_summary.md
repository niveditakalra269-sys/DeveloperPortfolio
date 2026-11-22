# REST API Summary & Analysis

## What is a REST API?
A REST API (Representational State Transfer Application Programming Interface) is a web interface that enables software systems to communicate over standard HTTP methods such as GET, POST, PUT, and DELETE. It exchanges structured data—most commonly in JSON format—between a client and a server without storing client session state on the server.

## HTTP Status Codes Observed
* **200 OK:** Indicates that the HTTP request succeeded and the server returned the requested JSON resource properly.
* **404 Not Found:** Indicates that the requested endpoint or user resource does not exist on the server.

## `jq` Filter Breakdown
Filter used:
```bash
jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'
```
* `{ ... }`: Constructs a brand-new JSON object with custom key names.
* `name:.name`: Extracts the `name` field from the raw GitHub JSON response.
* `repos:.public_repos`: Maps the `public_repos` count to a cleaner key named `repos`.
* `followers:.followers`: Extracts the total `followers` count.
* `joined:.created_at`: Extracts the account creation timestamp from `created_at`.
