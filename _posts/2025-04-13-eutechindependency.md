---
title: Is the EU's Technology Independent Enough to Implement Tariffs on American Tech?
date: "2025-05-03T13:20"
categories:
  - tech
  - politics
tags:
  - EU
  - Europe
---

With the recent tariffs Trump has been mindlessly applying, the only reasonable move is to counter them with our own to avoid collaboration with fascists, however German finance minister Jörg Kukies warns “We simply have to be cautious with digital corporations because we have no real alternatives to the offering by the American digital industry”, mentioning data centres for cloud services and artificial intelligence[^jorg], but is that really the case? There are European alternatives listed on [european-alternatives.eu](https://european-alternatives.eu/). One potential issue is with CPUs, which I will discuss in the following section.

## CPUs

It is sadly the case that there are just two x64 "manufacturers" ([AMD doesn't have its own semiconductor foundry, it's a fabless company](https://en.wikipedia.org/wiki/Fabless_manufacturing)), Intel and AMD. We don't *have* to use x64 CPUs though, as they consume a lot of energy compared to those with the [ARM architecture](https://en.wikipedia.org/wiki/ARM_architecture_family), so they are more suited to consumer hardware, however they are also used in servers. Hosting providers like Hetzner, for example, put a lower price on their servers with [Ampere processors](https://en.wikipedia.org/wiki/Ampere_Computing) due to the lower energy costs they provide.

The issue with all of these is that none of them are produced in the EU, so we aren't really independent in that sense. The [European Processor Initiative](https://en.wikipedia.org/wiki/European_Processor_Initiative) aims to design and build European processors for data centers, but not for consumer hardware. Overall, there aren't any truly European CPU manufacturers. ARM is at least Japanese-owned, based in the UK (better than American, I guess), but they don't build their own CPUs, they just license designs to other companies. I believe it is crucial that the EU increases its investments in European CPUs so we can be truly independent from American technology.

## Cloud hosting providers

As opposed to CPUs, there are plenty of European cloud hosting providers, listed on [european-alternatives.eu](https://european-alternatives.eu/). In fact, my services run on a Hetzner VPS. I use Cloudflare, an American company, to provide DDoS protection and some other useful features, but I use the free tier so they don't get any money from me. I would switch to an European alternative, but I just can't find any on the same level as Cloudflare. All other categories also have many European companies providing services, so I don't think there is an issue with the lack of these. [OVHcloud](https://en.wikipedia.org/wiki/OVHcloud), a French company, is the third largest hosting provider in the world based on physical servers.

## Web browsers

Let me start off with saying that there is no 100% European browser, they all use either [WebKit](https://en.wikipedia.org/wiki/WebKit) (developed by Apple), [Blink](https://en.wikipedia.org/wiki/Blink_(browser_engine)) (developed by Google and mostly used in forks[^fork] of [Chromium](https://en.wikipedia.org/wiki/Chromium_(web_browser))) or [Gecko](https://en.wikipedia.org/wiki/Gecko_(software)) (developed by Mozilla). The fact that all of these are American doesn't really matter, the code is freely accessible, and it allows anyone to modify it. If Chromium, for example, got abandoned it could get picked up by a European company or a government project. What actually matters is whether the fork is open-source and doesn't contain any tracking (some basic telemetry is fine; it gives devs data useful when deciding where to take the project and which features to work on).

What makes absolutely no sense to me is when people claim proprietary European alternatives, such as Vivaldi, are better than their open-source American counterparts. This notion is wrong, for multiple reasons. Open-source is global. Even if the developers are from North Korea, the source code can be freely reviewed by experts from all around the world for vulnerabilites or backdoors.

Europeans should, instead of switching to proprietary European alternatives, use open-source browsers without malicious tracking and data mining. This would cut off a large part of companies' which live off digital advertising revenue, and it would allow European companies to continue working on it should the original company stop development.

## Conclusion

Overall, I think the EU should drastically increase its funding of open-source and fully European products. Then we could ban or tax the import of American technology.

[^fork]: A project fork happens when developers take a copy of source code from one software package and start independent development on it, creating a distinct and separate piece of software.
[^jorg]: <https://www.ft.com/content/a0c081a7-b230-429a-8a3c-92bcfd32ff2d>
