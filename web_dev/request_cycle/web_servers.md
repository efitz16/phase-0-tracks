# Release 1: Research Web Servers

## Elizabeth Fitzpatrick

What are some of the key design philosophies of the Linux operating system?

One unique aspect of Linux is its collaborative nature: it's developed and improved by people all over the internet debugging and writing software and documentation ([1](http://www.science.unitn.it/~fiorella/guidelinux/gs/node22.html)). Thus, like UNIX (of which Linux is a free version), the design is bottom-up, not top-down, and Linux, with its renunciation of organized development, can be said to be even more so ([2](http://www.catb.org/esr/writings/taoup/html/ch01s06.html), [3](http://www.tldp.org/LDP/gs/node3.html)). Surprisingly, this has resulted in an efficient and robust system.

Linux also frequently releases new kernel versions regularly, and its software is usually released as a distribution, or pre-packaged and constituting an entire system. This results in one software distribution supplying everything needed to run and install the complete system. It should be noted, however, that there exist many different distributions. ([1](http://www.science.unitn.it/~fiorella/guidelinux/gs/node22.html))

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?

As the name suggests, a virtual private server, or VPS, is a server, or program that interacts with other programs on the same or different computers (the computer that runs such a program may also be referred to as a server), that is accessed via the Internet and is both shared by owners of a website as well as administered individually by each owner that uses it ([4](http://searchservervirtualization.techtarget.com/definition/virtual-private-server), [5](http://searchnetworking.techtarget.com/definition/virtual-server), [6](http://whatis.techtarget.com/definition/server)).

Virtual private servers offer a number of advantages (as well as disadvantages). One primary distinction is that VPSs offer more independence; because they are "private" servers and are administred individually, a user doesn't need to worry about its site's performance time being impacted by other users on the server (as would be the case in shared web server hosting) or waiting for the hosting server to install software you wish to use ([7](https://blog.servermania.com/the-5-major-benefits-of-using-a-virtual-private-server/)). VPSs are also more environmentally-friendly, as the resources and power of one server are split among the many people using it. Finally, VPSs may be more cost-effective, as technology is improving and VPSs can themselves be small hosting environments. ([7](https://blog.servermania.com/the-5-major-benefits-of-using-a-virtual-private-server/))

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?

My guess is that the root user is something like the master branch in Git--the other users are where the changes take place, and if there's a mistake, you can undo it by copying the root version into the other user's version ([8](http://www.howtogeek.com/124950/htg-explains-why-you-shouldnt-log-into-your-linux-system-as-root/)).