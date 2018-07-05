# DEVNOTE

Following this note will let you build a same repository from scratch.


## Initialize repository structure with truffle & git submodule

### Process

1. Install truffle

    ```.bash
    npm install -g truffle
    ```

1. Initialize

    ```.bash
    truffle init
    ```
1. Make contracts directory as a separate git repository

    ```.bash
    cd contracts
    git init
    git commit -m "Initial commit"
    git remote add origin "https://github.com/commitground/contracts"
    ```

1. Init truffle

    ```.bash
    cd ..
    git init
    git submodule add https://github.com/commitground/contracts contracts
    git add .
    git commit -m "Initial commit"
    ```

### References

- [Documentation | Truffle Suite](https://truffleframework.com/docs)
- [Git - Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)
