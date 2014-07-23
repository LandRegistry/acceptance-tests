[![Build Status](https://travis-ci.org/LandRegistry/front-end-tests.svg)](https://travis-ci.org/LandRegistry/front-end-tests)

Frontend Acceptance Tests
===============

### Overview

This repository contains the front end tests for all the systems.

### Installing

Install Phantomjs using homebrew

```
brew update && brew install phantomjs
```

Then install bundle:

```
gem install bundler
```

Then run bundler (this will install all required gems)

```
bundle install
```

### Running the tests

To run all the tests:

```
sh run_tests.sh
```

Or to run a specific feature:

```
cucumber features/sample.feature
```
