# CTF-challenge - CTF players and bughunters united!

## Introduction
Bug bounty hunting and playing CTF games are 2 distinct things. CTF players are known for their incredible in depth knowledge on very specific topics. Bug bounty hunters are known for their patience in doing recon. Most CTF players however dislike doing recon and bug bounty hunters sometimes miss the expertise to solve the last piece of a puzzle that's needed in order to complete a full blown exploit chain. 

## The Idea
If we as bug bounty hunters present small chunks of work in the form of a CTF challenge, we might be able to bridge the gap between CTF players and bug bounty hunters. The CTF player would not have to waste time on doing recon and the bug bounty hunter gets an extra helping hand in solving the last piece of a puzzle. Both the CTF player and the bug bounty hunter could profit from bounties that would normally be out of reach for them. The company/target would receive high(er) quality reports. 

## The Objective
In this repository you will find a golang binary named 'victim-binary'. This binary in fact is a custom webserver that plays a major role in Google's Cloudshell. If authentication can be bypassed on this webserver, we _might_ be able to complete a full exploit chain and submit a report to Google VRP. Note that this webserver runs on a remote host, so ENV vars can not be changed. The bypass has to work remotely. 

## Running the binary
git clone https://github.com/offensi/CTF-challenge  
cd CTF-challenge  
bash run-victim-binary.sh  

curl -k https://localhost:980 -v  

Good luck!  



## Rules
- I can only authorize testing on this binary ;)
- I will collaborate with the first CTF player to contact me with a working authentication bypass on this binary (DM or e-mail me)
- If you can complete a full exploit chain yourself, you don't need my help. Just let me know you've succeeded and report it to the Google VRP directly
- Don't be evil


## Credits
This idea was born out of the comments posted by @the_st0rm on Twitter in reaction to @LiveOverflow's new video, featuring a bug i did discover. Thanks to @GoogleVRP and @sirdarckcat, i had the opportunity to talk to several of the worlds top CTF players in London last year. My assumptions on CTF games and players are based on these conversations. 


#### Contact
- e-mail : wtm@offensi.com
- website: https://offensi.com
- twitter: https://twitter.com/wtm_offensi





