---
title: On "fixing" data bugs
description: On "fixing" data bugs
date: 2023-11-17
tags: ["software engineering", "debugging"]
published: true
---

You are working on a feature when suddenly customer support pings you on Slack because someone has a bug that needs to be solved urgently. They have written a report where it says, "Customer X can't do action Y, we think it's because of Z".

So you pause what you've been working on to focus on the problem. After a little investigation, you realize that this customer's data is in an inconsistent / corrupt state - the data isn't the way it's supposed to be, and this state prevents the customer from performing an action or bubbles up in the UI in a way that does not make sense.

What's the next best course of action for solving this problem?

## Figure out the scale of the problem

It's not because you've been given a ticket where it says, "Customer X can't do action Y, we think it's because of Z" that you should only ensure that "Customer X can do action Y because Z is solved".

It could be that other customers' data is in a poor state; it might require fixing.

What if someone from sales is about to demo a feature that might not work because of corrupted data?

What if the relationship with other customers is way worse, so it'll be better to fix their data first and foremost to ensure they never hear about the problem in the first place?

What if all customers are impacted? Will you wait until customer support raises a ticket for all customers? Of course not.

## Figure out how much you want to solve the problem

Or in other words, figure out what "solving the problem" means for now based on the current circumstances.

Do you want to only fix the data for this specific customer, for this specific instance of the problem as reported in the bug ticket? It could be a viable path of action if, for example, you are working on an important feature with tight deadlines, etc. You could also fix the data for all customers and hope that the issue does not happen again.

Do you want to fix the root cause of the problem? This is great and will ensure that the corrupted data does not spread further into the system. But it'll probably cost you time. How much time are you willing to spend to fix this issue?
