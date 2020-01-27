---
title:  "Operations Management - Module 2 : Inventory management"
header:
  teaser: "/assets/images/500x300.png"
categories: 
  - iMBA
tags:
  - Operations Management
---

This post is my notes for module 2 of course [Operations Management: Analysis and Improvement Methods](https://www.coursera.org/learn/operations-management/home/welcome) by Professor [Udatta Palekar](https://www.linkedin.com/in/udatta-palekar-56a16017)

Course syllabus is available [here](https://www.coursera.org/learn/operations-management/supplement/CkTwH/syllabus) 

### Inventory Basics

- US Business Inventories in March 2018
    - [TODO] Screenshot
- Inventories are goods or materials that are in any stage of readiness that are being held for future sale.

#### Reasons for inventories

- Transactional efficiency: Minimize setup cost to manifactur or order from supplier. We order in bulk and then consume in smaller units while holding an inventory.
- Speculation: expected price increase or in case of infelation. 
- Hedging: take care of uncertain things (supply and demand) by keeping some inventory of certain items.
- Strategic positioning: keep inventory of strategic items (oil in case of USA)

#### Types of inventories

- Based on stage of completion
    - Raw material: inputs to our process
    - Work-In-Progress: during the process
    - Finished goods: after the process finish
- Based on reason for keeping
    - Cycle inventory due to batching: order large batch then consume it.
    - Anticipation inventory for seasonality: seasonal items
    - Safety stock to buffer against uncertainty: hedging
    - Pipeline inventory that is on-order or in-transit
    - Strategic inventory to position ourselves for better negotiation

#### Inventory Metrics

- Macro level metrics
    - Inventory turnover ratio or inventory turns = Cost of Goods Sold / Average Inventory in $
        - Cost indicates how much we invested in this inventory
        - Average inventory = Start Inventory - End Inventory / 2
    - Periods (days/weeks/months) of Inventory = Average Inventory in $ / Cost of Goods Sold in a Period
        - Cost of Goods Sold COGS
    - Inventory turnover is the reciprocal of periods of inventory

[TODO] Screenshot

### Economic Order Quantity

#### Inventory related costs

- Transaction costs for each order : Setup/Ordering cost denoted by "S"
    - Ordering : cost of person who order or order fees
    - Receiving : cost of receiving goods to our warehouse
    - Fixed costs of transporting to us
- Holding costs (depend on how much average inventory) denoted by "H"
    - Storage costs (cost of physical storage)
    - Cost of working capital (money held in that inventory)
    - Holding Cost/Item/Year = Item Cost * Interest Rate + Storage Cost/Item/Year
        - Cost of holding an item for a year

#### How often to order ?

- Order more often
    - Pay more transaction costs but lower holding costs because I carry smaller inventory
- Order less often
    - Lower transaction costs but higher holding costs

[TODO] Screenshot

#### Annual Cost

[TODO] Screenshot

#### How often to order ?

[TODO] Screenshot

#### Economic Order Quantity 

[TODO] Screenshot

[TODO] Screenshot

#### Robustness of EOQ

[TODO] Screenshot

#### Practical Considerastions

- Difficult to accurately assess costs
- Suppliers insist on minimum order quantities
- Suppliers only supply in package quantity

### Economic Manufacturing Quantity (EMQ)

- Economic Order Quantity EOQ assumes instanteous replenishment (restoration of a stock or supply to a former level or condition)
- Instanteous replenishment may be difficult in a manufacturing environment
- [TODO] screenshot
- R is the rate of production
- If Cayote decides to manfacture detonators at the rate of 5000/year 
- [TODO] screenshot

### Re-order Point

#### Assumptions

- The EOQ/EMQ quantity minimizes the total cost of inventory when:
    - Replenishment begins instantaneously
    - Demand is constant and known with certainty

#### Supplier Leadtime

- Supplier delivers the product a fixed time (L) after the order is placed. This is called the leadtime (L)
- If leadtime is fixed awe can anticipate the delay and order earlier
    - We will order when the amount of inventory on-hand is D * L
    - This is called the Re-Order Point (ROP) 
    - This represent the inventory point that we need to order at so we still have inventory to cover the demand during the leadtime.
- [TODO] screenshot
- On-hand inventory is the same as inventory position untill we reach the re-order point.
    - Re-order if the following check is true: inventory position < re-order point

#### Demand Uncertainty

- [TODO] Screenshot
- Demand uncertainity is ok as long as I still have inventory
- Once I hit the re-order point and make an order, demand uncertainity may cause stock-outs during the leadtime.
- We can avoid stock-out by adding extra inventory : safety stock
- Re-Order Point = Average demand during leadtime + Safety stock
    - This re-order point will be higher than we consdered before because we need to keep safety stock to account for the demand uncertainty during leadtime.

#### Period of Uncertainty (POU)

This depends on how often is inventory observed ?

- Continuous Review System: POU = Leadtime
- Periodic Review System: Review Interval (r) + Leadtime
    - Demand is probabilistic during this period
    - Why consider periodic review system with modern computer systems ?
        - Deliveries may only occur once a week (r = 7 days)
        - Orders maybe transmitted at the end of the day (r = 1 day)
    - Inventory position might drop below ROP right after a review occurs
        - In that case, next review is r days later followed by a leadtime of L : POU = (r + L)

#### Probabilistic Demand

- Usually assumed as Gaussian or Normal Demand Distribution: N(mean, variance)
- Calculate Re-Order Point based on my tolerance (target probability) of stockouts
- [TODO] Screenshot