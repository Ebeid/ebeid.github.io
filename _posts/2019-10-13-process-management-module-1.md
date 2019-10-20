---
title:  "Operations Management - Module 1 : Process Analysis"
header:
  teaser: "/assets/images/500x300.png"
categories: 
  - iMBA
tags:
  - Operations Management
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

![Process representation](/assets/images/process-management-00001.png "Process representation")


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

![Product-Process Matrix](/assets/images/process-management-00002.png "Product-Process Matrix")
- mass customization high-high 
- one of a kind low-low

### Process Flow Analysis Metrics
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

**Example** 
Job applicants for a warehouse position have to undergo a medical examination as shown below. Activity process times (PT) and number of parallel stations (m) are shown below

![Bottleneck Activity](/assets/images/process-management-00003.png "Bottleneck Activity")

- Activities 5 & 7 are the bottlenecks for this process since they have the smallest flow rate and the longest cycle time.
- The process cycle time is the same as the cycle time of the bottleneck activity, 10 minutes
- The process flow rate is 1/10 applicants per minute. What's the flow time for this particular operation? 
- For this process as a whole we can look for the longest path through it [activities 1, 2, 3, 4, 7, and 8], then add up the processing times of those activities we get 65 minutes. 
  - So, for this process as a whole flow time is 65 minutes. 
  - In other words an applicant who enters the process will take 65 minutes to complete this particular process. 

### Activity Capacity

- Cycle time = processing time / number of parallel stations
- Flow rate = 1 / Cycle time
- The activity is capable of producing the flow rate. We define this as the capacity of the activity.
  - If process have 10 per hour flow rate, process capacity is 10.

**Setup Times and Activity Capacity**
- Consider an oven in which metal parts are heat treated. A batch of 50 parts are treated each time for 60 miutes but it takes 20 minutes between each batch to cool and reheat the oven. What is the capacity of the oven ?
  - Each oven cycle is 80 minutes [60 + 20]
  - Each oven cycle produce 50 parts
  - Flow rate = 50/80 = 0.625 parts/minute or 37.5 parts/hour
  - Effective flow time = processing time + waiting times = 60 + 20 = 80
    - Effective (real life), theortical (without wait time)

**Process Capacity**
- The capacity of a process is equal to the capacity of its bottleneck activity
![Example](/assets/images/process-management-00004.png "Example")
- The prsence of a bottleneck activity means that other activities will be idle for some of the time.
- How much of an activity's capacity is being utilized ?

**Capacity Utilization**
- Utilization is always between 0 and 1 or as a percentage.
- The bottleneck process has 100% utilization.
- Utilization = Actual Production Rate / Avaiable Capacity
  - Example ![Example](/assets/images/process-management-00005.png "Example")
    - Utilization = Time Used for Production / Available Time
    - for activity 1 to produce 7.5 units per hour it needs 45 minutes (6 * 7.5). Hence Utilization is 45/60 = 75%
  - Another example 
    - ![Example](/assets/images/process-management-00006.png "Example")
    - ![Example](/assets/images/process-management-00007.png "Example")

**Implied Utilization**

What if the demain is less or more than the process flow rate ? In this case: </br>
Implied Utilization = Demand Rate / Available Capacity </br>
![Example](/assets/images/process-management-00008.png "Example")

- If the demand rate is higher than the available capacity then implied utilization will be grater than 100%
- This means that this process need more resources to meet its demand

**Capacity in a continuous flow process**
- Process is continuous and there is not intermediate inventories between tasks. 
- If one task stoped, the whole process have to stop.
- ![Example](/assets/images/process-management-00009.png "Example")
- If any task (sprayer) need to stop for maintenance or cleaning, then that wait time get added to the total cycle time.
- For this example assume the cycle time is 3 hours. Then total cycle time is 3.5 hours.
- ![Example](/assets/images/process-management-00010.png "Example")

### Little's Law

- Assumptions
  - System is in steady state: Rate of arrival = Rate of departure
  - Average values of metrics being considered [not for each individual flow unit]
- Little' Law : I = R * T
  - I = Inventory
  - R = Flow Rate
  - T = Flow Time
  