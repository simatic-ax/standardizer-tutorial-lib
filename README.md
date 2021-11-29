# Standardizer Tutorial (only cloud based)

The standardizer tutorial consists of multiple separate sequential chapters from the perspective of a standardizer. 
In this tutorial, you'll develop, test and create AX library. 
Altough the tutorial focusses on the cloud IDE, the workflows are very similar within the local IDE. Differences will be mentioned in within the tutorial, but not explained in detail.

Chapters:
- Apax package manager usage
- Writing libraries in OOP
- Using the testing framework
- Debugging of tests
- Packing and publishing libraries


## Prerequisities
- Access to axite.me WebIDE
- able to login into the AX registry
- a valid GitHub token to access the GitHub registry //TODO link how to create an token


# Setup your library environment

## Goal for this trainig chapter
After this traing session:
- create workspaces with clone link in the WebIDE
- the login process in to the AX registry is known
- the login into other (eternal) registries is known
- you can learns how to install dependencies
- you can add dependencies

### Cloning the workspace with clone link
1. Copy the clone link to your clipboard:

    ```
    git@github.com:simatic-ax/standardizer-tutorial-lib.git
    ```
1. Open the cloud IDE on https://axcite.me/workspaces
    > it's possible that you've to login first
1. Click on create 
1. Select `Clone from Git`
    ![](/doc/images/clone-repo.png)
1. Insert the clone link from your clipboard into the field `REPOSITORY`
1. Click on `Create`
    > WARNING: If your public key of AX is not in your GitHub profile, the creation of the tutorioal will fail. 

### Login into AX registry

Before we continue with that tutorial, you've to login into the AX registry to be able to install the AX SDK.




- the user can use Apax scripts
- the user knows the most important sections in the apax.yml


### Install depednencies
When you want to devlop an library with AX then you'll 

# Writing libraries in OOP

## Goal for this trainig chapter

After this traing session:
- you know how namespaces can be used
- you know how a class and methods will be declared
- you can has understood ... app/vs lib //TODO
 
## Using the testing framework
After this traing session:
- the user is able to create a own test class
- the user can write own simple tests 
- the user knows the test explorer
- the can execute tests within the IDE

## Debugging of tests
After this traing session:
- the user is able to start the debugging of tests

## Packing and publishing libraries
After this traing session:
- the user is able to pack a library
- the user knows how a library can be shipped
- ...

### Snippets
- The user has learned how a snipet can be created


# Writing a library
# Writing tests
# Packing and publishing libraries

## Storylines


## Setup your Demo

### [Web IDE](./doc/WebIDE.md)

### [AXCode (local IDE)](./doc/AxCode.md)

### [Trouble shooting](./doc/Storylines/Troubleshooting.md)
