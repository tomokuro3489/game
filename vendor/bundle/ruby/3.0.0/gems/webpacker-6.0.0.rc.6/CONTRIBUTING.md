## Setting Up a Development Environment

1. Install [Yarn](https://yarnpkg.com/)

2. Run the following commands to set up the development environment.

```
bundle install
yarn
```

## Making sure your changes pass all tests

There are a number of automated checks which run on GitHub Actions when a pull request is created.

You can run those checks on your own locally to make sure that your changes would not break the CI build.

### 1. Check the code for JavaScript style violations

```
yarn lint
```

### 2. Check the code for Ruby style violations

```
bundle exec rubocop
```

### 3. Run the JavaScript test suite

```
yarn test
```

### 4. Run the Ruby test suite

```
bundle exec rake test
```

#### 4.1 Run a single ruby test file

```
bundle exec rake test TEST=test/rake_tasks_test.rb
```

#### 4.2 Run a single ruby test

```
ruby -I test test/rake_tasks_test.rb -n test_rake_webpacker_install
```
