# Cardboard Boxen

Development tools for Boxen's puppet module projects. This `cardboard`
RubyGem contains shared development behavior for and is a dependency
of each of the `boxen/puppet-*` module projects.

To make porting easy and interfaces simple, none of Cardboard's
commands are called directly. Instead, shims in a module project's
`scripts/` directory delegate to Cardboard's `libexec/` commands after
making sure all dependencies are up-to-date.

## Available Commands

`FIX`

## Using Cardboard in Your Boxen Modules

It's probably best to follow the structure of
[Boxen's template puppet module][template]. You can generate a stub
from this template by running `boxen --new-module <module-name>`
anywhere Boxen is installed.

[template]: https://github.com/boxen/puppet-template
