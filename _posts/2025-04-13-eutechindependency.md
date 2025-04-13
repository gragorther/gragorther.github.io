---
title: Is the EU's Technology Independent Enough to Implement Tariffs on American Tech?
date: "2025-04-13"
categories:
  - tech
  - politics
tags:
  - EU
  - Europe
published: false
---

With the recent tariffs Trump has been mindlessly applying, the only reasonable move is to counter them with our own, however German finance minister Jörg Kukies warns “We simply have to be cautious with digital corporations because we have no real alternatives to the offering by the American digital industry”, mentioning data centres for cloud services and artificial intelligence[^jorg-kukies], but is that really the case? There are many European alternatives listed on [european-alternatives.eu](https://european-alternatives.eu/). One potential issue is with CPUs, which I will discuss in the following section.

## CPUs

It is sadly the case that there are just two x64 "manufacturers" (AMD doesn't have its own semiconductor foundry, it's a fabless[^fabless] company), Intel and AMD. We don't *have* to use x64 CPUs though, as they consume a lot of energy compared to those with the ARM[^arm] architecture, so they are more suited to consumer hardware, however they are also used in servers. Hosting providers like Hetzner, for example, put a lower price on their servers with Ampere[^ampere] processors due to the lower energy costs they provide.

The issue with all of these is that none of them are produced in the EU, so we aren't really independent in that sense. The European Processor Initiative[^european-processor-initiative] aims to design and build European processors for data centers, but not for consumer hardware. Overall, there aren't any truly European CPU manufacturers. ARM is at least Japanese (better than American I guess), but they don't build their own CPUs, they just license designs to other companies. I believe it is crucial that the EU increases its investments in European CPUs so we can be truly independent from American technology.

## Cloud hosting providers

As opposed to CPUs, there are plenty of European cloud hosting providers, listed on [european-alternatives.eu](https://european-alternatives.eu/). In fact, my services run on a Hetzner VPS. I use Cloudflare, an American company, to provide DDoS protection and some other useful features, but I use the free tier so they don't get any money from me. I would switch to an European alternative, but I just can't find any on the same level as Cloudflare. I

[^jorg-kukies]: <https://www.ft.com/content/a0c081a7-b230-429a-8a3c-92bcfd32ff2d>
[^arm]: <https://en.wikipedia.org/wiki/ARM_architecture_family>
[^ampere]: <https://en.wikipedia.org/wiki/Ampere_Computing>
[^fabless]: <https://en.wikipedia.org/wiki/Fabless_manufacturing>
[^european-processor-initiative]: <https://en.wikipedia.org/wiki/European_Processor_Initiative>
