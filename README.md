

# ShoeShop

> A simple yet fully functional web-shop application built with Ruby on Rails


## Functionality included

- Sign up / sign in / forgot password
- Sign in with Facebook
- Filter products by categories and brands
- Add products to the shopping cart
- Search for products using auto-completion
- View related and recent products
- Product's pagination
- Use app's API if the administrator has given you UID and secret
- Admin Page
- OAuth 2 provider

## About the code

- Built with `Ruby on Rails 5`
- Using `Boostrap 3` and own stylesheets for styles
- `Devise` as authentication solution
- `Pundit` for authorization
- `Pagy` for pagination
- `rails_admin` for admin page
- `HAML` as templating engine for HTML
- `CoffeeScript` instead of JS in scripts
- Using `jQuery` and plugins: `easydropdown`, `responsiveslides`, `simpleCart`, `typeahead`, etc.
- `meta-tags` for SEO optimization
- `OmniAuth` provides authentication using third-party credentials
- `Doorkeeper` as `OAuth 2` provider and `API` authenticator
- `API` built with `jbuilder` and `active_model_serializers`
- `acts-as-taggable-on` for filtering products by tags
- `rack-attack` as middleware for throttling and blocking abusive requests
- TDD with `RSpec` + `ShouldaMatchers` + `FactoryBot` + `etc.` (over `110` tests)
- Profiling and optimization tools:
  - `Bullet` as `N+1` problem profiler
  - `active_record_doctor` helps to keep the database in a good shape
- Code quality scanners: `rails_best_practices`, `rubocop`, `rubycritic`, `brakeman`
- CI/CD
  - `Travis CI`
  - `Coveralls.io` for test coverage history & statistics
  - `Hakiri.io` & `GuardRails.io` as security vulnerabilities scanner
- `Docker` & `docker-compose`

## Setup

Clone this repository:

`git clone git@github.com:maxbarsukov/shoeshop.git`

Install gems:

`bundle install`

Setup database and seeds:

`bundle exec rails db:create db:migrate db:seed`

Setup your test database:

`bundle exec rails db:test:prepare`

## Run

With Foreman:
- Dev:
    `foreman start`
- Production:
    `foreman start -f Procfile`

Using Docker: `docker-compose up`

## Testing

Run tests with `rspec`

Check security vulnerability with `bundle exec brakeman --exit-on-warn -f plain -5`

Check the quality of code with `bundle exec rails_best_practices . --spec -c config/rails_best_practices.yml`

Run `bundle exec rubycritic` for code quality reporter

## License

MIT License. Copyright 2021 nyapsilon
