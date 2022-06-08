# Pack and publish packages with Apax

## Goal for this training chapter

After this training session:

- you have a rough overview what Apax is and you know the terms `package manager` `library` and `registry`
- you have knowledge how the content of a package can be defined
- you know the workflow, how an apax package will be created
- you know, how scripts can be added to the apax.yml
- you know that cli parameter can forwarded to scripts

### Apax the package manager

Apax is the package manager and build system for ST projects. Apax packages can be used to share code and reuse functionality, just like with any other package manager, but we go a step further and deliver the entire ST build toolchain via packages.

[Here](https://console.prod.ax.siemens.cloud/docs/apax) you'll find all information for Apax.

[Here](https://console.prod.ax.siemens.cloud/docs/apax#glossary) you'll find explanations for the terms:

- package manger
- registry
- dependency
- library

### Define the content for a package

1. Before we can create an Apax package, we need to define, what the package shall contain.

1. Open the apax.yml

    ![debug](./doc/images/../../images/apax_files.png)

    In the section `files` you seem which folders/files will be shipped with that package.
    Beside the `README.md` and the `LICENCE.md` the complete folders and subfolders of `./src` and `./doc` will be shipped.
    This means, that the package contain the source code and also the documentation for the library. It dos not contain any test code or any binaries.

    >Note: Shipping the compiled binaries instead of the source code is possible, but not part of this tutorial.

### Set the version of the package

1. Before you create your package, you've to set the version. Check the current version in the apax.yml

     ![debug](./doc/images/../../images/apax_version.png)

1. In this case the actual version is `0.0.1`. So enter the command:

    ```cli
    apax version 0.0.2
    ```

    Result:

    ![debug](./doc/images/../../images/apax_newversion.png)

    The version in the apax.yml will be changed

1. In the next step, we create a public/private key pair for signing the packages. Enter the following command into the command line:

    ```cli
    apax keygen --override-existing
    ```
    > usually, a public key needs to be created once

    For what and how the public keys are used, you find later in this tutorial (public keys).



1. now we're able to create the package with the command:

    ```cli
    apax pack
    ```

    Result: The package with the name `simatic-ax-standardizer-tutorial-lib-0.0.2.apax.tgz` appears in the explorer on the left side.

    >Tip: you can open the *.tgz file with any zip/unzip program

### Key generation
Before we can generate a package, a key pair for package  signing has to be created once.

If not already done, the key can created with the command:

```sh
apax keygen
```

### Create package by scripts

With Apax, you're able to define some own scripts. In this example we create a script which create a package with just one command.

1. Open the apax.yml

1. Copy the following code into your clipboard

    ```yml
    scripts:
      createlib:
        - apax build
        - apax version $1
        - apax pack
    ```

1. Insert this code into the apax.yml

    The apax.yml should look like this:

    ![debug](./doc/images/../../images/apax_script.png)

1. Go to the terminal and enter:

    ```cli
    apax createlib 0.0.3
    ```

    Result: The commands

    - apax build
    - apax version 0.0.3
    - apax pack

    will be executed in sequence. In this case the $1 argument will be replaced by 0.0.3 from the command line parameter

### Publish the package on a registry

At this point, you've a deployable Apax package, which can be uploaded to an registry.

For training purposes, you can test the workflow on a local registry. A guide, how to do that, can you find here --> [publish package on a registry](setup_local_registry.md)

## Summary

Goal reached? Check yourself...

- you have a rough overview what Apax is and you know the terms `package manager`, `library` and `registry` ✔
- you have knowledge how the content of a package can be defined ✔
- you know the workflow, how an apax package will be created ✔
- you know, how scripts can be added to the apax.yml ✔
- you know that cli parameter can forwarded to scripts ✔

[Back to overview](./../README.md)
