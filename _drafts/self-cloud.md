---
layout: post
title: Moving to the Cloud
---

;; It's April 2020. Big Tech Rules, and they are sounding the wardrums for the march towards
;; The Cloud. It's April 2020. Coronavirus Zoomed my school year and made me a prisoner of my own home. I need
;; to do something before my internship.

I think its about time I followed my primitive urge to 'move myself to the cloud'.

Everybody seems to have a different idea on what 'moving oneself to the cloud' actually means.
These series of posts will be for me to organize my own research about this matter and specify what exactly I want
from this project. I might include development notes at some point. 


Things I want:
- Up to 10tb of storage I can access anywhere. (Less is ok for now, figure out RAID config).
- Can run a suite of apps in headless mode. The apps will be run by the server (cloud) and have
access to all of my storage. The server will stream a gui to a client (can be run anywhere) in some way.
- Low latency for headless gui apps. I should be able to run emacs reasonably.
- A decent computer to run containerized applications (8gb ram?, Xeon processor? I have no idea how server hardware works)
- Decent uptime. I'm not going to run any critical application on it, though.
- security to some extent
- In the case I want to share it with other people, the final product should easy to set up (just a couple of config steps). 
- A gui (or really simple cli) to manage apps|disk|memory|etc
- A not too expensive solution. I can invest some initial time and money into it, but I don't want this to take too much of 
my own resources.
- GPU access.
- Optional: Windows support for Windows only compute heavy apps.
- I would also like everything to work within a browser. Whether this is feasible remains to be seen.

Things I need to figure out:
- Self-hosted and|or Cloud based hosting? The pricing for AWS, GCP, Azure, ect seems a bit much...
- How will I stream graphical apps? What protocols? Xpra? x2go? VNC? some sort of browser hack? Latency is
important here. I don't want barely useable appls. 
- Cost estimates for the whole project.
- Hardware.
- Accessing the server FROM THE INTERNET in a safe way. Also other security concerns which I'm probably not aware of at this point.



April 22, 2020

I've been researching for a couple of days now and I have a general idea of what I want.
I'm still in the process of learning Docker so I there's that.

I also tried setting up an AWS EC2 instance on their 'free' tier. However, I was charged
$5 for starting up an Ubuntu instance for some sort of data transfer reason? Needless to say, this event made me
investigate pricing at Amazon further. I was not impressed.

I also don't want to spend a month figuring out all the AWS only services and locking myself with them.

There's also Amazon Drive, Google Drive, OneCloud, and their equivalents etc etc. I might investigate these solutions later,
but something tells me that they don't offer the services and control I want.

Also, Dropbox?! How are they still alive??? Their pricing is absolutely ridiculous compared to other similar services. $630 for 5tb and
the board-member induced bloatware accompanying it? No thanks. Steve Jobs was right.

I think I'm going to settle on a home hosted NAS-like solution. It would be cool if I could also allocate some storage on demand
If I run out of storage at home.

On the graphical side, I'm still in the process of figuring how to stream gui applications. I will have to set those up at some point and
run some benchmarks. I'm really worried about latency.

I'm strongly leaning towards a home-hosted solution.



April 23, 2020

I was able to install VirtualBox on my Macbook. I installed Ubuntu and was able to
ssh into it with X11. Really happy it worked. Notes on installation here .

![pingus!](/data/self-cloud/pingu.png)





