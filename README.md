# Forest Bash Scripts

[![Build Status](https://travis-ci.com/JeroenKnoops/forest-bash.svg?branch=master)](https://travis-ci.com/JeroenKnoops/forest-bash)

## Purpose

This library will be define some handy scripts which can be used in bash scripts.

## Functions

### Messages

Functions:
- info
- success
- error
- warn
- big

Usage: 

Copy message script in your project:
```
wget https://raw.githubusercontent.com/JeroenKnoops/forest-bash/master/messages.sh -o forest/bin/messages.sh
```

```
#!/bin/bash
source ./forest/bin/messages.sh

info "scripts installed"
```

Example:
  `\examples\messages-example.sh`

### Waitport

Functions:
- waitport --> It will wait until a port is reachable

Usage: 

Copy waitport script in your project:
```
wget https://raw.githubusercontent.com/JeroenKnoops/forest-bash/master/waitport.sh -o forest/bin/waitport.sh
```

```
#!/bin/bash
source ./forest/bin/waitport.sh

waitport 80
```

Example:
  `\examples\waitport-example.sh`

### include

Functions:
- include

Usage: 

Copy include script in your project:
```
wget https://raw.githubusercontent.com/JeroenKnoops/forest-bash/master/include.sh -o forest/bin/include.sh
```

```
#!/bin/bash
source ./forest/bin/include.sh

include i-do-no-exist.txt
include i-exist.txt 
```

Example:
  `\examples\include-example.sh`

## Tests

We're using [bats](https://github.com/sstephenson/bats) to test our scripts.

Run test suite:
`bats test`


