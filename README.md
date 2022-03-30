![](https://img.shields.io/badge/Build%20with%20%E2%9D%A4%EF%B8%8F-at%20Technologiesitftung%20Berlin-blue)

# Stadtpuls.com redis

The [stadtpuls.com API](https://github.com/technologiestiftung/stadtpuls-api) uses Redis as in memory database for the fastify rate limiter.

## Development

In development you need to start the redis server with docker in a new shell session:

```bash
# MacOS
docker compose up
# Linux
sudo docker-compose up
# Windows
# ???
```

## Redis on Render

This is an example repo with a Dockerfile for running a Redis cache with persistence as a **private service** on Render.

Render private services are only visible to other Render services in your account. They have internal URLs (e.g. `redis:6379`), can speak any protocol (like [RESP](https://redis.io/topics/protocol)), and can listen on any port.

Backing Redis with a disk makes it resilient to data loss in the case of restarts or deploys, and Render makes this easy to do with Render Disks.

## Deployment

### One Click Deploy

Use the button below to deploy a persistent Redis instance on Render.

[![Deploy to Render](http://render.com/images/deploy-to-render-button.svg)](https://render.com/deploy)

### Manual Deployment

1. Select **New Private Service** on your Render dashboard and use your fork of this repo to create the service.

2. Make sure the `Environment` is set to `Docker`, and enter a name for the service (this will be used to generate the private URL).

3. (optional) Add a new disk in the `Advanced` section. Give it a name and set the mount path to `/var/lib/redis`. You can also change the default size for your disk: `1 GB` should be enough for small projects.

Click `Save` and you're good to go! Once deployed, your Redis instance will be available on a URL similar to `redis:10000`, and you can start using your Redis URL from other services in your Render account. Be sure to prepend `redis://` to the URL displayed in your dashboard.

If you need help, you can always chat with us at https://render.com/chat.

## Contributors

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://fabianmoronzirfas.me/"><img src="https://avatars.githubusercontent.com/u/315106?v=4?s=64" width="64px;" alt=""/><br /><sub><b>Fabian Morón Zirfas</b></sub></a><br /><a href="https://github.com/technologiestiftung/stadtpuls-redis/commits?author=ff6347" title="Code">💻</a> <a href="https://github.com/technologiestiftung/stadtpuls-redis/commits?author=ff6347" title="Documentation">📖</a></td>
    <td align="center"><a href="https://vogelino.com/"><img src="https://avatars.githubusercontent.com/u/2759340?v=4?s=64" width="64px;" alt=""/><br /><sub><b>Lucas Vogel</b></sub></a><br /><a href="https://github.com/technologiestiftung/stadtpuls-redis/commits?author=vogelino" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## Credits

<table>
  <tr>
    <td>
      <a src="https://citylab-berlin.org/de/start/">
        <br />
        <br />
        <img width="200" src="https://citylab-berlin.org/wp-content/uploads/2021/05/citylab-logo.svg" />
      </a>
    </td>
    <td>
      A project by <a src="https://www.technologiestiftung-berlin.de/">
        <br />
        <br />
        <img width="150" src="https://citylab-berlin.org/wp-content/uploads/2021/05/tsb.svg" />
      </a>
    </td>
    <td>
      Supported by <a src="https://www.berlin.de/rbmskzl/">
        <br />
        <br />
        <img width="80" src="https://citylab-berlin.org/wp-content/uploads/2021/12/B_RBmin_Skzl_Logo_DE_V_PT_RGB-300x200.png" />
      </a>
    </td>
  </tr>
</table>


