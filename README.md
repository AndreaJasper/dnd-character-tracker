# Mimi Connection

Short description of your project

## Technology and Stack
- [PostgreSQL 13.4](https://www.postgresql.org/docs/current/)
- [ruby](https://www.ruby-lang.org/en/news/2022/04/12/ruby-3-1-2-released/) (see `.ruby-version` for version)
- [rails](http://guides.rubyonrails.org/v6.1/) (see `Gemfile` for version)
- [node](https://nodejs.org/) (see `.nvmrc` for version)

#### Testing
- [rspec](http://rspec.info/documentation/)
- [capybara](https://github.com/teamcapybara/capybara)
- [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)
- [faker](https://github.com/stympy/faker)

## Setup
1. `bundle install` - Install dependencies
2. `cp config/application.example.yml config/application.yml` - Edit local config as necessary.
3. `cp config/database.example.yml config/database.yml` - Edit to match your database configuration.
4. `bundle exec rails db:setup` - Create Postgres database and create tables from schema.
5. Run the development server and test suite to verify successful deployment.

## Development server
- `bundle exec rails server`
- View site at `http://localhost:3000/`

## Testing
- `bundle exec rspec spec` or `bundle exec guard`

## Recompile Tailwind
- If you've made changes to your `tailwind.config.js`, you will need to recompile by running `./bin/dev`

## Debugging

## Deployment

## Development Process
- See [PROCESS](PROCESS.md)
- Follow this [ruby style guide](https://github.com/bbatsov/ruby-style-guide) with the exceptions noted in `.rubocop.yml`
   - To see rubocop errors, in your terminal run `rubocop`

## Deployment History

- Deployed on ${DATE} with xCode ${XCODE_VERSION} and OS ${OS_VERSION}
