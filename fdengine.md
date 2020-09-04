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

The plugin API will be defined later in this document but, as a resource the plugin must be initializable, releasable and registrable to events in the application.

