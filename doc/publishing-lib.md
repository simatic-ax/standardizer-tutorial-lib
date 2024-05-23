# Pack and publish packages with Apax

## Goal for this training chapter

After this training session:

- you have a rough overview what Apax is and you know the terms `package manager` `library` and `registry`
- you know what scopes are and how they are used
- you have knowledge how the content of a package can be defined
- you know the workflow, how an apax package will be created
- you know, how scripts can be added to the apax.yml
- you know that cli parameter can forwarded to scripts
- you've knowledge how a package could be transferred to a registry

### Apax the package manager

Apax is the package manager and build system for ST projects. Apax packages can be used to share code and reuse functionality, just like with any other package manager, but we go a step further and deliver the entire ST build toolchain via packages.

[Here](https://console.simatic-ax.siemens.io/docs/apax) you'll find all information for Apax.

[Here](https://console.simatic-ax.siemens.io/docs/apax/apax#glossary) you'll find explanations for the terms:

- package manger
- registry
- dependency
- library

### Organizations and scope of the package

In order to host repositories not just under your own account but for multiple people you can set up organizations in [Github](https://docs.github.com/en/organizations/collaborating-with-groups-in-organizations/about-organizations) and [Gitlab](https://docs.gitlab.com/ee/topics/set_up_organization.html). For example this repository is inside the "simatic-ax" organization. This gives you the advantage of better access right management for all employees in your organization.

When you want to publish your package in a repository that is inside an organization you have to make sure that the project name starts with the name of the organization. In our case we change the name of the project from `standardizer-tutorial-lib` to `@simatic-ax/standardizer-tutorial-lib` since "simatic-ax" is the name of the organization where this package lies.

### Define the content for a package

1. Before we can create an Apax package, we need to define, what the package shall contain.

1. Open the apax.yml

    ![debug](./doc/images/../../images/apax_files.png)

    In the section `files` you seem which folders/files will be shipped with that package.
    Beside the `README.md` and the `LICENCE.md` the complete folders and subfolders of `./src` and `./doc` will be shipped.
    This means, that the package contain the source code and also the documentation for the library. It dos not contain any test code or any binaries.

    >Note: Shipping the compiled binaries instead of the source code is possible, but not part of this tutorial.

### Create a public/private key pair for signing packages

1. By excuting the following command in terminal. The key should be created once for the complete department/company

    ```cli
        apax keygen --override-existing
    ```

    The key file will be located in ~/.apax/apax.signkey in the home directory.
    ![debug](./doc/images/../../images/keypair.PNG)


    >Note the `apax pack`need the key to sign the package. 

1. Users can enter your package scope and public key in the publicKeys section of their apax.yml to detect corruption or manipulation when installing packages.

    ![debug](./doc/images/../../images/addpublickeys.PNG)

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


1. now we're able to create the package with the command:

    ```cli
    apax pack
    ```

    Result: The package with the name `simatic-ax-standardizer-tutorial-lib-0.0.2.apax.tgz` appears in the explorer on the left side.

    >Tip: you can open the *.tgz file with any zip/unzip program



### Create package by scripts

With Apax, you're able to define some own scripts. In this example we create a script which create a package. By excute the command 

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

At this point, you've a deployable Apax package, which can be uploaded to an registry. This apax.yml is configured in a way, that the package will be published at the GitHub registry in the namespace `@simatic-ax`.

In this tutorial, the package can not shipped to our registry

To publish the the package enter:

```cli
apax publish --package *.apax.tgz --registry https://npm.pkg.github.com/
```

## Summary

Goal reached? Check yourself...

- you have a rough overview what Apax is and you know the terms `package manager` `library` and `registry` ✔
- you have knowledge how the content of a package can be defined ✔
- you know the workflow, how an apax package will be created ✔
- you know, how scripts can be added to the apax.yml ✔
- you know that cli parameter can forwarded to scripts ✔
- you've knowledge how a package could be transferred to a registry ✔

[Back to overview](./../README.md)
