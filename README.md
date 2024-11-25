# docker-nginx-open-dev-ports

This is the Git repo of the Docker "nginx open dev ports image" based on Nginx. It builds an nginx image that opens commonly used ports in development that serves basic HTTP responses.

## nginx versions supported

### Platforms

To simplify the maintenance work, this repository only publishes:

- `linux/arm64` and `linux/amd64` platforms
- `alpine-slim` based images

More can be added when needed in the future.

### Versions

[Dependabot scans for upstream updates daily](./.github/dependabot.yaml) to create pull requests to bump the nginx version. New versions will be released once the PR is merged.

## Ports supported

Port No. | Description (from ChatGPT)
-- | ---
80 | Default for HTTP (non-encrypted web traffic).
443 | Default for HTTPS (encrypted web traffic).
3000 | Common default port for web development servers (Node.js, React, Express).
3001 | Common default port for web development servers (Node.js, React, Express).
3002 | Common default port for web development servers (Node.js, React, Express).
4000 | Used by frameworks like Vue.js or certain Ruby on Rails setups.
5000 | Common for Flask (Python) or other small web frameworks.
5001 | Often used by other web frameworks (Flask, etc.) in local dev environments.
8000 | Default for Django (Python) development server.
8080 | Common for web application servers (Java-based Tomcat, Jetty, or other frameworks).
8888 | Jupyter Notebooks (common for Python-based data science).
9000 | Used by some reverse proxies like Nginx or PHP-FPM.

Feel free to add more ports. Remember to update all 3 files at the same time:

- main.conf (`listen {port}`)
- Dockerfile (`EXPOSE {port}`)
- Makefile (for testing, `-p {port:port}`)

## Development

```shell
make dev
```

## Caveats

To simplify the maintenance work, this repository only publishes:

- `linux/arm64` and `linux/amd64` platforms
- `alpine-slim` based images

More can be added when needed in the future.
