# Setup your library environment

## Goal for this training chapter

After this training session:

- you are able to create workspaces with clone link in the WebIDE
- the login process in to the AX registry is known
- the login into other (external) registries is known
- you've a rough overview about the apax.yml
- you can learn how to install dependencies
- you have heard, that there are different project types `lib`/`app`
- and you've heard the difference between `devDependencies` and `dependencies`
- you know how to add further dependencies

### Cloning the workspace with clone link

1. Copy the clone link to your clipboard:

    ```iec-st
    git@github.com:simatic-ax/standardizer-tutorial-lib.git
    ```

1. Open the cloud IDE on <https://axcite.me/workspaces>
    > it's possible that you've to login first

1. Click on create

1. Select `Clone from Git`, paste the clone link into the `REPOSITORY` field and press `Create`. Wait until the workspace is created.  

   ![drawing](./images/clone-repo.png)
    > WARNING: If your public key of AX is not in your GitHub profile, the creation of the tutorial will fail.

1. Open the workspace

### Login into AX registry

Before we continue with that tutorial, you've to login into the AX registry to be able to install the AX SDK.

1. click on `Log in to AX to download extensions and Aax packages`

    ![login](./images/login-1.png)

    a new browser window opens

1. copy the token into your clipboard by clicking `Copy`

    ![login](./images/copy_token.png)

1. Switch back to workspace

1. Select `enter token manually`

    ![login](./images/login-2.png)  

1. Enter token with `Strg+V` (**don't select "paste" from the context menu**)  

   ![login](./images/login-3.png)

### Login to other registry

For this tutorial are further libraries required, which are hosted at a GitHub registry @simatic-ax. To consume them, it is necessary to login into the GitHub registry.

1. select the file `apax.yml`, click the right mouse button and select `Login to registry`

    ![drawing](./images/apax_login.png)  

1. Enter the github URL

     ![drawing](./images/github_url.png)  

1. Leave the user name field empty and press `Enter`

    ![drawing](./images/enter.png)  

1. Enter your personal access token from GitHub with `Strg+V`

    ![drawing](./images/token.png)  

Now you're able to install all dependencies to develop on your library.

### Content of apax.yml

If you're already familiar with `Apax` and the `apax.yml`

When you want to develop a library with AX then you need some developer tools. It's called SDK. The AX SDK contains some components like:
    - AX Compiler
    - AxUnit testing framework
    - Simatic downloader
    - ...

For this tutorial just the compiler and the AxUnit Testing framework are interesting. This tutorial uses some further dependencies from GitHub.

Before we install all required dependencies, lets have a look into the apax.yml. The apax.yml is a configuration file for the Apax package manager. It contains all relevant information for the workspace.

![drawing](./images/apaxyml.png)  

#### **Project information**

In the header of this file you find some information about the project.

- `name: standardizer-tutorial-lib` Contains the project name. In this case the library has the name `standardizer-tutorial-lib`
- `version: 0.0.1` the version of the library.
- `type: lib` the project type is lib (library project) another valid value is `app` (Application)

> Note:  
>
> - a library need always a namespace
> - a library can not be executed directly on a PLC
> - because a library must not have a `CONFIGURATION` and a `PROGRAM` section, which is necessary to be executed on a PLC

#### **devDependencies**

This section contains dte dependencies,, which are necessary during the development. Here just the `@ax/sdk` in version `0.2.499` is required.

#### **dependencies** and **registries**

In this tutorial we also need some other libraries. Hence this are dependencies which are necessary for building the library.

In this example, there are two further libraries form the `@simatic-ax` registry required.

For the moment, it's not important to know what the content of this libraries is. This libraries are hosted on GitHub. So we've to tell apax, where the GitHub Registry is located. This will be done in the section `registries`
The URL of the Github registry is:

```iec-st
https://npm.pkg.github.com/
```

### Install dependencies

1. Right click on the `apax.yml` and select `Install dependencies`

    ![drawing](./images/install-dependencies.png)  

1. Wait until a the message appears

    ![drawing](./images/installed.png)  

**Alternative workflow:**
You can open a terminal (e.g. by pressing `STRG+SHIFT+ö` German keyboard layout) and enter

```iec-st
apax install -L 
```

This command is equivalent to `Install dependencies`

### Adding dependencies

Further dependencies can be added also via command line if you know the name of the package.

Example:
Install the system library system-timer

```iec-st
apax add @ax/system-timer
```

If you do so, you can find a additional entry in th `apax.yml` in the section `dependencies`.

![drawing](./images/adddep.png)  

If you wondering, why this version is set with `^`0.4.2. That means that at minimum version 0.4.2 has to be used. If there a version 0.4.3 available, the version 0.4.3 will be installed.

//TODO apax extension

### Summary

Goal reached? Check yourself...

- you are able to create workspaces with clone link in the WebIDE ✔
- the login process in to the AX registry is known ✔
- the login into other (external) registries is known ✔
- you've a rough overview about the apax.yml ✔
- you can learn how to install dependencies
- you have heard, that there are different project types `lib`/`app` ✔
- and you've heard the difference between `devDependencies` and `dependencies` ✔
- you know how to add further dependencies ✔

[Back to overview](./../README.md)