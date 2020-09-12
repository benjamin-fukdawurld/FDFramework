---
description: The Fanatik Development Game Engine
---

# FDEngine

## Abstract

This page is the analysis page of the FDEngine project.

The aim of this page is to define the features for this project and to design the project. You will find UML definition of the uses cases, the components of the project, the way they interact with one another, their architectural organisation and their API.

## What is FDEngine

The FDEngine is the showcase project of Fanatik Development. This game engine is written mainly in C++. The engine itself consist of several extendable plugins. Developers must be able to select a set of plugins fitting their needs and to customize existing plugins or create new ones.

### The plugins

The engine is basically a scheduler. Its main responsibility is to trigger actions from modules pluged into the engine and register to some events.

Long story short, the engine is a state machine and a message broker for plugins. By the way, as the broker itself is a plugin, it is even possible to customize the broker in order to dispatch message the best way to fit your needs but you will have to implement the minimal API with the expected behavior to allow the engine to work properly.

Some plugin examples:

* A message broker
* A renderer
* A scripting engine
* A serializer
* A sound manager
* An asset loader
* A physics engine
* Whatever you may want to add as an independent block in the application 🤷 

The plugins API will be defined later in this document but, as a resource the plugin must be initializable, releasable and registrable to events in the application.

## Using FDEngine

### Who will use FDEngine ?

FDEngine should be used for both games and developers. Therefore the engine must be embeddable into a game editor software. This editor is an instance of the game engine that uses additional plugins. The editor will help the developers to create and test their games.

### FDEngine use cases

FDEngine must allow a Game application and an Editor application  to lauch a Game.

An editor shall also be able to create, edit, test and debug games

![](.gitbook/assets/fdenginemainusecase.png)

### Launching a game

Launching a game is a set of action that partially depends on the game it self but to schematize lets describe it as following:

1. Initialize the engine with global parametters \(global resources and values, required plugins and their configuration, resource root directory, game entry point, etc.\)
2. Initialize the plugins and their dependencies
3. Launch the game from the scenario entry point. 

Once these step are accomplished, the Game will take control on the scenario and the engine will only run as a scheduller.

![](.gitbook/assets/launchgamesequencediagram.png)

### Creating a game

Creating a game is a complex scenario. It consist pretty much on defining the configuration of the game \(the global parametters discussed in **Launching a game** section\) and implementing the scenario. Implementing the scenario means creating the scenes of the game and organize them and there transitions and add the required content to the game.

![](.gitbook/assets/creategamesequencediagram.png)

### Editing a game

Editing a game means editing the configuration or the scenario \(scenes, scenes' transitions and game's resources\)

![](.gitbook/assets/edigamesequencediagram.png)

### Testing and debugging a game

Testing a game means run a test suit on a game. Debugging it means run it with debugging tools to allow the developper to check the state of the game environment during runtime. This part will be discussed later but it might not be that relevant to explian because it is more about providing debug executables than implementing features

