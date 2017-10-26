---
layout: post
title: About UWPHook
tags: UWP Windows UWPHook 
cover: 'https://camo.githubusercontent.com/59b26dd3ed2601dd30a0523ca119ad5778a211c2/687474703a2f2f696d6775722e636f6d2f675777523032442e706e67'
subtitle: 'Or how to fix simple things with simple code'
---

So when Windows 8 Arrived Microsoft introduced their new way to distribute apps via the ~~Windows~~ Microsoft Store, using what they call "Universal Apps", aka UWP applications, initially it was meant to host mobile apps for phones and tablets, but the scope grew fast.

Years passed and when Windows 10 came, Microsoft released the "Play Anywhere" program, bringing many fan favorites from the consoles to the PC using their store, Like Forza and Gears of War, sadly tho, the inner workings of the UWP platform proved to be a barrier for stablished softwares that the gaming community uses on a daily basis.

Distribution and other problems aside, UWP apps are "installed" in a sandboxed environment, it hides all the files related to those apps on "c:\program files\windowsapps", it's a protected and hidden folder, users usually don't have read nor write rights on this folder as it's owned by NTAUTHORITY. Also, these apps can't be called by opening their '.exe' in any tradicional way.

Many PC gamers use Steam as their primary launcher for games because it offers a good UI and is already stablished in the market, but those restrictions from the UWP eco system means that users are unable to access their apps and use them with Steam, and because of the rights on that folder, many softwares that tried to circunvent this problem just wouldn't work on many machines.

UWP apps can be called by their AUMID although, you don't even need access to the root of that folder if you know the AUMID of the desired app, meaning that you can even read images and any file that is in "c:\program files\windowsapps\ {AUMID}\".

That's how UWPHook is able to simply work on everyones PC.

By running a PowerShell script that lists the AppName and AUMID, i can guess what is the full path to the app, and even a suitable icon, then i write that as a shortcut "non-Steam app" on a VDF file that stores a list of non-Steam games of each user on that PC. Later, when the user 'launches' Forza from Steam, it actually opens UWPHook, which calls ApplicationActivationManager passing the AUMID for Forza as a parameter, then, while the user plays their game, my app keeps looking at the proccess it launched, seeing if it is still running, if it is not, UWPHook closes it self, terminating the "Now Playing" status on Steam, making the user experience flawless.  