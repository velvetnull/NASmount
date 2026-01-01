# SMB Mount Service

The SMB Mount Service will mount or unmount any SMB shares that are included in the script.  This is made to be used on Linux systems.  The script will run in a loop until it is exited via the options menu or ctrl + c.  

I created this script to provide a way for me to be able to mount or unmount my network shares as needed on my laptop.  I previously used /etc/fstab but had issues when I used my laptop not on my home network mainly on resuming from sleep after leaving home.  I could not find a solution so I made this.

![NASmount menu](https://github.com/velvetnull/NASmount/blob/main/NASmountMenu.png)

## How to Use

* Requirements:
    + Linux
    + cifs-utils package installed on your Linux system.
    + a file named .cred that is located in ~/.config and has its permissions set to 600 (chmod 600 .cred).  

The .cred file should include two fields as formatted below:
username=<your_username>
password=<your_password>

* How to make it work
    + Fill out lines 52 and 58.
    + Line 52 will need to have the path to the nas and the path to the mount location entered, and remove the comment(#).
    + Line 58 needs to have the mount location entered and the comment(#) removed.

1. Run the script ./NASmount.sh
2. Select an option from the menu
3. The script can be ended my using option 5 or ctrl + c.  The script will loop otherwise.  This allows convenient future access to the options.


## Support

If you happen to need help or experience an issue you can email me at velvetnull@proton.me.

I am the sole maintainer and contributor to this project.

