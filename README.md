# Standardizer Tutorial (only cloud based)

In this standardizer tutorial, you'll learn all important tools which are necessary to develop a ST library with AX.

Although the tutorial focusses on the cloud IDE, the workflows are very similar within the local IDE. Differences will be mentioned in within the tutorial, but not explained in detail.

After this tutorial, you:

- know basics about Apax
- have an short introduction into OOP with ST
- have used the AxUnit testing framework
- you're able top write simple test classes
- know something about parametrized test
- know the debugging extension
- and your able to create your own package and know how to publish it

This tutorial is structures in multiple sequential chapters. Execept [Apax package manager usage](./doc/setup.md) all chapters are optionally. But [Write own unit tests with AxUnit](./doc/write-tests.md) depends on [Introduction in OOP](./doc/oop-introduction.md)

## Training chapters

- [Apax package manager usage](./doc/setup.md) (mandatory for all other chapters)
- [Introduction in OOP](./doc/oop-introduction.md)
- [User defined snippets](./doc/user-defined-snippets.md)
- [Usage of the testing framework](./doc/testing-framework.md)
- [Write own unit tests with AxUnit](./doc/write-tests.md) (depends on [Introduction in OOP](./doc/oop-introduction.md))
- [Parametrized tests](./doc/parametrized-tests.md)
- [Debugging of tests](./doc/test-debugging.md)
- [Packing and publishing libraries](./doc/publishing-lib.md)

## Prerequisites

- Access to axite.me WebIDE
- able to login into the AX registry
- your public key of AX cloud IDE is added in your GitHub profile:
  - [how to get your public key from AX](https://console.prod.ax.siemens.cloud/docs/axcode/source-code-management#cloning-in-the-cloud)
  - [how to add a SSH key on GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
  - >Note: you need this public key, to be able to clone the repository in cloud IDE

- You've created a valid personal access token to access the GitHub registry
  - [create personal access token on GitHub](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
  - >Note: You need this token to login into the `simatic-ax` GitHub registry (URL: <https://npm.pkg.github.com/>) with `apax login`

## Contribution

Thanks for your interest in contributing. Anybody is free to report bugs, unclear documentation, and other problems regarding this repository in the Issues section or, even better, is free to propose any changes to this repository using Merge Requests.

## License and Legal information

Please read the [Legal information](LICENSE.md)