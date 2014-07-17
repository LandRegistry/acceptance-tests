[![Build Status](https://travis-ci.org/LandRegistry/front-end-tests.svg)](https://travis-ci.org/LandRegistry/front-end-tests)

Frontend Acceptance Tests
===============

### Overview

This repository contains the front end tests for all the systems.

### Installing

Install QT using homebrew

```
brew install qt
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
cucumber
```

Or to run a specific feature:

```
cucumber features/sample.feature
```

