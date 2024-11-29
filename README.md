# Multi-Stack Docker Deployment

This repository manages multiple Docker Compose stacks using GitHub Actions.

## Structure

- `docker-compose/traefik`: Traefik reverse proxy.
- `docker-compose/nautobot`: Nautobot stack.
- `docker-compose/netbox`: Netbox stack.
- `docker-compose/netdisco`: Netdisco stack.

## Deployment

1. Store secrets in GitHub Secrets.
2. Push changes to the `main` branch.
3. GitHub Actions deploys the stacks automatically.
