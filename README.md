# README

This is an application which mimics the "Prayer and Prospect Book," put out by
Striving Together Publications (aka 4Outreach). The goal is to have a digital
version of the methodology of the book.

## License
All source code in the [4Outreach](http://4outreach.josephwheaton.com/)
is available under the MIT License. See [LICENSE.md](LICENSE.md) for details.

## Getting Started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

For more information, see the
[4Outreach install guide](http://4outreach.josephwheaton.com/install).
