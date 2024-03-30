
## Installation

This project use **ruby "3.2.2"**

If you use rvm you can install it with:

```bash
rvm install "ruby-3.2.2"
```

Then, run:

```bash
bundle install
```

For create and poblate SQLite DB, run:
```bash
rails db:setup
```

Now yo can run the app with
```bash
rails s
```

**For background jobs**

If you do not have redis, install by consulting: https://redis.io/docs/install/install-redis/install-redis-on-linux/

Run Redis for use Sidekiq
```bash
redis-server
```

Finally run sidekiq
```bash
bundle exec sidekiq
```

