# plugal-test

This is the simple example for Plugal in a directly compilable form.

## Installation

Clone and compile. That's all.

```text
git clone https://github.com/hyronx/plugal-test
crystal compile src/plugal-test.cr
```


## Usage

After compilation you should open two terminals because this app has to be started twice,
one as the provider and the other as the receiver. You should only get ouput with the receiver.
The provider must be started first!

```text
./plugal-test -p #& - you can run this in background
./plugal-test -r # => "Victor + Victoria = LoVe!"
```

## Development

- Add more advanced examples

## Contributing

1. Fork it ( https://github.com/hyronx/plugal-test/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [hyronx](https://github.com/hyronx) Fabian Loewe - creator, maintainer
