# Watchtower (Docker & GitLab)

Watchtower is a solution for automating Docker container image updates, implemented with **Docker Compose** and **GitLab CI**.

## Quick Start
```bash
git clone http://gitlab.com/saulmendoza/watchtower.git
cd watchtower
make dev # local development
make start # production

# List of available commands
make help
```

## Usage Examples

### Docker Compose (YML)
```yml
services:
  app:
    labels:
      com.centurylinklabs.watchtower.enable: true
```

### Dockerfile
```Dockerfile
LABEL com.centurylinklabs.watchtower.enable="true"
```

### Docker Run (CLI)
```bash
docker run -d --label=com.centurylinklabs.watchtower.enable=true someimage
```

## Notifications
- **Easy**: Just read the [docker-compose.yml](docker-compose.yml) file, you need to uncomment a few lines.
- **Security Note**: Add the env var **WATCHTOWER_NOTIFICATION_GOTIFY_TOKEN** as a secure variable via GitLab web.
- **Gotify**: You need to create a separated network for the gotify service, create it with the next command: `docker network create -d bridge notifications`

## Credits & References
- Watchtower [Repository](https://github.com/containrrr/watchtower/)
- Watchtower [Documentation Website](https://containrrr.dev/watchtower/)
