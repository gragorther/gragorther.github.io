---
title: How I tarnished my domain's email reputation

categories:
  - tech
  - fediverse
media_subpath: /images/email
---

I recently noticed that most emails sent from my domain to Gmail, even those that aren't automatically sent from the services I host, have been going to spam. This was slightly annoying, as it meant I had a harder time onboarding classmates to a platform for shared notes, but I just assumed this was just Google being Google (anticompetitive). As it turns out, that was not the case.

I host two Fediverse services: [Lemmy](https://join-lemmy.org/) and [Peertube](https://joinpeertube.org/). Until yesterday, I had registration applications enabled, so users could sign up as long as they provided a reason for joining my instance and I approved them. I received a moderate amount of spam applications on Lemmy (around 1 or 2 per day (okay this may not be *moderate* per se but it's manageable)), but after I checked Peertube after a month or so of not using it I noticed I had **3851** pending applications. My main worry at the time was how I could possibly reject them all, because, without figuring out how to use the API and writing a script for it, that can only be done through the admin UI in batches of 100 by setting it to show 100 registrations per page, clicking "select all" and deleting them, so I posted about it on Lemmy and [@
Jerry@feddit.online](https://feddit.online/u/Jerry) kindly explained that a malicious actor took advantage of the email verification process for [email bombing](https://en.wikipedia.org/wiki/Email_bomb).

The idea of email bombing is to flood someone's inbox with mail, either by sending the same mail over and over again through a botnet, by automatically subscribing the unsuspecting victim to thousands of newsletters, or by attempting to sign up to various websites with their e-mail address to prevent them from receiving (or noticing) actually important mail, such as a warning that someone has logged into their bank account.

![Peertube admin panel showing 10 out of 3851 pending applications](screenshot.png)
_the [onosecond](https://youtu.be/X6NJkWbM1xk)_

Due to this, Google's (and some other providers', such as iCloud, but most of the spam was sent to Gmail) spam filters have started flagging most mail from my domain name as spam. I reported a delivery issue on [Google Postmaster Tools](https://postmaster.google.com), but it was closed with the response "more traffic needed". As per the docs (which, admittedly, I should've read earlier), they only provide support for bulk senders (which I'm not):

> Bulk senders who meet all requirements described in our Email sender guidelines can submit an escalation for email delivery issues. Before contacting tech support, make sure that you're following all sender guidelines. Starting in February 2024, we won't provide mitigation for email delivery issues to senders that don't meet the guidelines. For details about mitigation requests, use the Sender contact form.

I guess I'll just have ask my users to move mail Gmail classified as spam to the regular inbox and hope Google eventually realizes it's legitimate. For now, I've also disabled registration on Lemmy and PeerTube. In light of [(somewhat) recent events](https://blog.cloudflare.com/18-november-2025-outage/), and given the fact that more than 20% of Internet traffic is routed through Cloudflare, I'm also not comfortable with putting a man-in-the-middle in front of my server. And CAPTCHAs are just not that effective anymore in the age of neural nets. Something like [Anubis](https://anubis.techaro.lol/) might be a good solution, but frankly, I don't feel like figuring out how to set it up and which API routes need to be whitelisted to avoid breaking clients that need to use those and can't solve a proof of work challenge. I don't have many active users that I don't know IRL on my server anyway.