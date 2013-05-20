# Cardboard Boxen

Development tools for Boxen's puppet module projects. This `cardboard`
RubyGem contains shared development behavior for and is a dependency
of each of the `boxen/puppet-*` module projects.

To make porting easy and interfaces simple, none of Cardboard's
commands are called directly. Instead, shims in a module project's
`scripts/` directory delegate to Cardboard's `libexec/` commands after
making sure all dependencies are up-to-date.

## Available Commands

### `bootstrap`

Called before any other command, `bootstrap` makes sure any Puppet
modules needed to run specs are available. It only runs if
`spec/fixtures/Puppetfile` exists.

### `cibuild`

FIX: Runs `script/syntax`, `script/lint`, and `script/specs` if they
exist.

### `lint`

Runs `puppet-lint` on all `.pp` files in `manifests/`.

### `specs`

Runs all specs under `spec/`.

### `syntax`

Validates the syntax of all Puppet and Ruby files.

## Using Cardboard in Your Boxen Modules

It's probably best to follow the structure of
[Boxen's template puppet module][template]. 

[template]: https://github.com/boxen/puppet-template

Boxen's template makes Cardboard commands available via shims, so
`script/cibuild` will run Cardboard's `libexec/cibuild` command.
