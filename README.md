# Contract Dev Pack

This repository is used to develop & test the smart contracts for commitground using the truffle framework. Thus this includes the [***contracts***](https://github.com/commitground/contracts) repository as a submodule.

# Repository Structure

```.bash
.
├── .git
├── contracts # This is a submodule https://github.com/commitground/contracts
│   ├── .git
│   ...
│   └── Contracts.sol
├── build
├── migrations
│   ├── 1_initial_migration.js
│   └── 2_deploy_contracts.js
├── package.json
├── package-lock.json
├── test
│   ├── ...
│   └── testcase.js
└── truffle.js
```

- `contracts`:
  This is a submodule which designates [*contracts*](https://github.com/commitground/contracts) repository.

- `test`:
  This is a directory for test cases. Keep in mind that writing test cases is dependent on the *contract* submodule.

- Etc
    - `build`: Build artifacts are stored in this directory.
    - `migtrations`: Script to test or deploy the contracts

# Contributing

1. Fork both projects.

    - contract-dev-pack: [![Fork](https://img.shields.io/github/forks/commitground/contract-dev-pack.svg?style=social&label=Fork)](https://github.com/commitground/contract-dev-pack/fork)
    - contracts: [![Fork](https://img.shields.io/github/forks/commitground/contracts.svg?style=social&label=Fork)](https://github.com/commitground/contracts/fork)

1. Clone your forked *contract-dev-pack* repository first.

    ```.bash
    $ git clone https://github.com/commitground/contract-dev-pack
    ```

1. Update the *contracts* submodule

    ```.bash
    $ git submodule init
    $ git submodule update
    ```

1. Add remote your forked *contracts* repository.

    ```.bash
    $ cd contracts # enter into the submodule directory
    contracts$ git remote add fork https://github.com/$YOUR_GITHUB_ACCOUNT/contracts
    ```

1. Make branches by the convention. Please check [this](https://github.com/commitground/guide)

    ```.bash
    $ git checkout -b $BRANCH_NAME #e.g. feature/create-project
    $ cd contracts
    contracts$ git checkout -b $BRANCH_NAME #e.g. feature/create-project
    ```

1. Write test case for a new contract. Read [this](https://truffleframework.com/docs/getting_started/javascript-tests) to know how to write a test case.

    ```.bash
    $ cd test
    test$ touch testCreateProject.js # write test cases here
    ```

1. Write a new contract & implement.

    ```.bash
    $ cd contracts
    contracts$ touch createProject.sol # write contracts here
    contracts$ # implement
    ```

1. If it passes your test cases, make your final commits on both repositories.

    ```.bash
    $ npm run test
    $ cd contracts
    contracts$ git add createProject.sol
    contracts$ git commit -m "Add a feature to create project" # This makes a commit for contracts repository
    $ cd ../
    $ git add contracts test
    $ git commit -m "Add test cases for 'createProject' contract"
    ```

1. Push the commits to the forked repositories and make pull requests towards the both repositories.

    ```.bash
    $ git push $YOUR_FORKED_REPOSITORY $BRANCH_NAME
    $ cd contracts
    contracts$ git push fork $BRANCH_NAME
    ```

Sometimes *contract-dev-pack* repository's submodule HEAD may not follow the origin repository's HEAD. If then please sync it to the origin and update the submodule HEAD by committing after carrying out tests.
