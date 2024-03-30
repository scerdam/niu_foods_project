
![alt text](https://github.com/scerdam/niu_foods_project/blob/main/Screenshot%202024-03-30%20at%2015.07.18.png?raw=true)

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

