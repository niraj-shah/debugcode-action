## Usage

Copy the `script.sh` file to the .github folder and add the following to the `workflows/main.yml` file:


```
name: Check for Tokens

on:
  push:
    branches:
      - main
  pull_request:
    branches:
      - main

jobs:
  build:
    runs-on: ubuntu-18.04
    steps:
      - uses: actions/checkout@v1
      - name: script
        run: | 
          chmod +x "${GITHUB_WORKSPACE}/.github/script.sh"
          "${GITHUB_WORKSPACE}/.github/script.sh"
        shell: bash
```