# Yackety-Yack

Forum engine

## Getting started

Yackety-Yack works with Rails 4 onwards. You can add it to your Gemfile with:
```
gem 'yy'
```
And run the bundle command to install it.

After you install Yackety-Yack, you need to copy and run migrations:
```
rake yy:install:migrations
rake db:migrate
```

### Configuring routes

Mount Yackety-Yack in your config/routes.rb. For example:

```
  mount Yy::Engine => "/forum"
```


### Configuring AngularJS

Change (TODO: add 'why?' description)

```
  config.assets.js_compressor = :uglifier
```

to

```
  config.assets.js_compressor = Uglifier.new(mangle: false)
```

in your `config/environments/production.rb`


### Customizing

Create `config/initializers/yy.rb`

```ruby
Yy.user_class = "User"
```

### Required methods

Yackety Yack requires from your application following methods:

  * `UserModel#display_name` - To display user's name in Yy's views


# License

MIT License.
