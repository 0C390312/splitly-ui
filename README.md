# Nuxt UI

Look at [Nuxt docs](https://nuxt.com/docs/getting-started/introduction) and [Nuxt UI docs](https://ui.nuxt.com) to learn more.

## Setup

Make sure to install the dependencies:

node 18+ version
pnpm 8+ version
install node use nvm:
https://github.com/nvm-sh/nvm#installing-and-updating


```bash
# pnpm
pnpm install

```

## Development Server

Start the development server on `http://localhost:3000`:

```bash
# pnpm
pnpm run dev
```

## Production

Build the application for production:

```bash
# pnpm
pnpm run build
```

Locally preview production build:

```bash
# pnpm
pnpm run preview
```

## Build docker image

Build docker file locally

```bash
 docker build -t splitly-ui:latest .  
```

run application in docker

```bash
 docker run --rm -p 7001:3000 --name splitly-ui splitly-ui  
 ```

 ## Environment variables

| env var    | default value           | description           |
| ---------- | ----------------------- | --------------------- |
| SERVER_URL | <http://localhost:8280> | url to backend server |


Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
