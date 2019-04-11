# Portable Crystal

An easy way to compile applications writen in Crystal for distribution on macOS.

## Installation

Clone the repo. Copy the makefile, and optionally the vendor folder to your project's directory. The vendor folder is filled with a few comon libs that are required for Crystal's standard library.

## Usage

```bash
# Builds the project, and outputs it into the ./bin/ directory.
make build

# Packages all of the libraries into the executable along with crystal's --release flag for optimizations.
make package

# Validates the binary, and will highlight any libraries that may be required by the system that are not standard on macOS.
make validate
#If there are any, run `brew reinstall -s LIBNAME (example: openssl or libgc)` Then copy the the LIBNAME.a from the installation directory on your computer, to the `vendor` folder in your project. Then rebuild your project.
```

### Try it out


* Clone the project
* cd into the cloned directory
* run `make package`
* copy ./bin/app to a different computer, and run it!

Note: Zipping the executable is recomended, and running `chmod +x app` could fix errors if there are any when trying to open the app.

## Contributors

- [Iain Moncrief](https://github.com/your-github-user) - creator and maintainer
