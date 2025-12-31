# homebrew-gn

Homebrew tap for [GN](https://gn.googlesource.com/), the meta-build system for generating Ninja build files.

## Installation

```bash
brew tap startergo/gn
brew install gn
```

## Usage

```bash
gn gen out/Debug
ninja -C out/Debug
```

## Documentation

- [GN Quick Start Guide](https://gn.googlesource.com/gn/+/main/docs/quick_start.md)
- [GN Reference](https://gn.googlesource.com/gn/+/main/docs/reference.md)
- [GN Build Config](https://gn.googlesource.com/gn/+/main/docs/build_configuration.md)

## License

GN is licensed under the BSD 3-Clause License.
