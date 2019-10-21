---
title:  "Twelve-Factor Applications"
header:
  teaser: "/assets/images/500x300.png"
categories: 
  - concepts
tags:
  - cloud
---

This post is just my notes about [Twelve-Factor Applications](https://www.12factor.net/). You can consider it my extended version of the original website.

"Twelve-factor applications" is a methodology that focus mainly on developing software-as-a-service applications (or SAAS for short).  Although that's was the main concern, factors in this methodology can be used or **inspire** engineering practices in other types of software development.

## Facor 1 - Codebase
**One codebase tracked in revision control, many deploys.**
- The App need to be tracked in a version controled system [e.g Git] generally refered to as code repo or repo for short.
- It is one-to-one mapping between the codebase and the app.
  - If there is multiple codebases, then each one is an app. Collectively they may form a distributed system.
  - Multiple apps can't share the same codebase.
    - If there is shared code that need to be used in multiple apps, the shared code should be refactored out into libraries and consumed in these applications using a dependency manager (Factor 2).
  - If an app needs another repo as a subdirectory in it and you are using Git you may check [Git Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules). **This is not recommended unless it is absoultely necessary**.
- Using the same repo and application can be deployed (run) as many as we want (Dev, QA, Staging, Production). 
  - Usually different versions run on these enviroments.
  - Different enviroments usually used to check different things with the aim to promote the code version to the next enviroment (until it reach production).

## Facor 2 - Dependencies
Explicitly declare and isolate dependencies
- Most programming languages have a packing system to distribute libraries.
- The explicit dependencies declaration is to ensur that dependencies are uniformally installed on different enviroments.
  - Application shouldn't depend on the implicit existence of any system tools.
    - If needed
  - Some programming language have different tools to install dependencies and to isolate their scope (Pip vs virtualenv). Others isolate dependencies' scope to the current application (C# and Nuget)

## Facor 3 - Config
Store config in the environment.
- Configurations are the only thing that change between deploys (Dev, QA, Staging, Production).
  - examples : credentials, database location, proxy,..
- Configurations can't be part of the application code. They need to be separate.
  - Same code version deployed many times, configs may vary for each deployment.
- Configs can be stored in environment variables.
  - Advantages: 
    - can't mistakenly be checked into code repo.
    - language and OS agnostic standard.

## Facor 4 - Backing services
Treat backing services as attached resources
- A backing service is any service the app consumes over the network as part of its normal operation (e.g. database server, queuing system,..).
- Code shouldn't local or 3rd party services.
  - Application should be able to switch services based on configs without code change (Dev deploy uses on-premises database, where Production deploy uses AWS database).
- Services can be attached and detached from deploys at will without code change.
  - Restoring a database backup or switching to another SMTP server at run-time.

## Facor 5 - Build, release, run
Strictly separate build and run stages
- Code base is transformed to a deploy through three stages:
  - Build : compile and build the code and its dependencies into executable and assets needed during runtime .
  - Release : takes the build stage output and combine it with specific configs to be ready for immediate execution in an execution environment.
  - Run : runs the application release in the intended execution environment.
- Each build, release, run should have a unique ID that link the three stages together for tracebility.
  - Some applications use internal version ID to refer to that ID and distinguish it from the public version number.
  - Some applications use the commit ID as the internal ID.
- Usually builds intiated by developer commits but subsequent stages maybe manual trigger.

## Facor 6 - Processes
Execute the app as one or more stateless processes

## Facor 7 - Port binding
Export services via port binding

## Facor 8 - Concurrency
Scale out via the process model

## Facor 9 - Disposability
Maximize robustness with fast startup and graceful shutdown

## Facor 10 - Dev/prod parity
Keep development, staging, and production as similar as possible

## Facor 11 - Logs
Treat logs as event streams

## Facor 12 - Admin processes
Run admin/management tasks as one-off processes

