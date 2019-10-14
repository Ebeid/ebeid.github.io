---
title:  "Operations Management - Module 1 : Operastions Strategy"
header:
  teaser: "/assets/images/500x300.png"
categories: 
  - Jekyll
tags:
  - update
---

This post is my notes for module 1 of course [Operations Management: Analysis and Improvement Methods](https://www.coursera.org/learn/operations-management/home/welcome) by Professor [Udatta Palekar](https://www.linkedin.com/in/udatta-palekar-56a16017)

Course syllabus is available [here](https://www.coursera.org/learn/operations-management/supplement/CkTwH/syllabus) 

### 1-1.1 Process View of Operations

**Operations** are composed of a collections of activities. 
- These activities have distinctive charachteristics: Purposeful, Planned, Coordinated. 
- To perform these activites you need resources.

**Process View** Processes are structured activities that transform inputs to outputs (and are usually repetitive).
- The outputs can be products or services.
- The process view shows how an organization uses resources to coordinate activities.

**Process Flow Units**
The basic unit of flow at which we wish to study a process. Examples:
- Customers at a bank.
- Students in a graudate program.
- Credit card applications.
- Cases at the Supreme court
- Parts produced in job shop. 

**Process Representation**
Processes can be represented as a connected network of activities:
- Squares represent activities
- Arrows in the network represent precedence requirements between activities.
- Triangle represent inventory i.e. flow units waiting to undergo the next activity.

TODO: Add screen shots

Over time we may move from process flow to product flow within an organization.

**Product focused operations** resources and activites required for a "product family" or customer type are grouped together in one area.
**Process focused operations** similar skills or technologies are grouped togther in specialized departments.

**Layout Characterization**
Linear: flow units move sequentially from one activity to the next in a fixed sequence (e.g. getting your food at chipotle, Car assembly).
Jambled or Job-shop: flow units may have different sequence of activities (e.g. patient flow in a clinic).

**Batching**
Processes can be characterized based on how flow units move between activities through the process:
- Continuous flow
- Single unit flow
- Batch flow

**Reasons for batching**
- Economy of scale (cost per unit of output decreasing with increasing scale. Hence batching.)
- Shared resources with changeover (Decrease wasted switch time beteen individual units of flow.)

**Types of linear flow**
- Large batch vs small batch vs single-unit
- Discrete vs continuous flow
- Unpacked vs worker-packed vs automated pacing
    - Upacked: single worker processes where there is no movement for the flow unit from one activity to another.
    - Worker-packed: worker assigned to an activity controls the pace at which the flow units move through the system.
      - Workers may wait for other workers to finish their work.
      - Some workers maybe busier than other workers
    - Automated pacing: conveyor belt, automated cranes, or robotic equipments move the flow unit from one locagion to the other.
      - Worker has fixed amount of time to get their work done.

**Process type selection**

Which process type should one choose ?
- Project: one off (very low volume), very expensive, unique, very felxible.
- Job shop: multiple products, low volume, moderate felxibility.
- Batch: many products, moderate volume, low flexibility.
- Line: Few products, high volume, very low flexibility.
- Continuous: very few products, very high volume, very low flexibility.

**Product-Process Matrix**

TODO insert screenshots here

mass customization high-high
one of a kind low-low

**Process Flow Analysis Metrics**
- Cycle Time: time between two consecutive flow units departing the process.
- Flow Rate: rate at which units depart the system within a unit of time (e.g hour). Flow Rate = 1/(Cycle Time)
- Flow Time or Throuput Time: time it takes for a flow unit to go through the entire process. [Departure time - arrival time time].
  - Flow time is the time for the longest path from start to finish.

Flow Rate, Cycle Time and Flow Time can be defined for any contiguous sub-process we want to study down to an **individual activity**. In that case, the cycle time is simply the processing time for that activity if one flow unit is worked on at a time.

**Multiple Stations**

What if we have multiple stations doing the same activity ? (e.g hand waxing in a car wash)

cycle time for this station will decrease to be original cycle time for this station devided by number of stations. Hence flow rate will increase.

Cycle time of an activity = processing time / number of stations.

**Multiple Stations 2**

A special case of multiple stations occurs when many flow units are processed at the same time. e.g baking a batch of 50 cookies for 20 minutes.
- Processing time of the activity is 20 minutes.
- Cycle time is 20 minutes / 50 cookies = 0.4 mins/cookie
- Flow rate is 1/0.4 = 2.5 cokkies/min

**Bottleneck Activity**

Each activity has an associated flow rate and cycle rate.
- The activity with the smallest flow rate is called the bottleneck activity.
- The bottleneck is the activity with the longest cycle time.
- We may have many bottlenecks.

TODO insert example screenshots

**Activity Capacity** The activity is capable of producing the flow rate. We define this as the capacity of the activity.

**Setup Times and Activity Capacity**