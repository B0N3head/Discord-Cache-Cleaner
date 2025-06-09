# Discord-Cache-Cleaner
A dead simple Discord cache **viewer and cleaner** written in batch

## DCC Process
- Check for dependencies
- Download dependencies
- Extract dependencies
- Open cache with file explorer
- Run trid.exe with specified arguments to rename files in the cache directory 
- Wait for user input to delete cache

## Requirements
- [x] Convert all unprefixed files to the correct file type (Using [trid](https://mark0.net/soft-trid-e.html "trid"))
- [x] Other than file prefix conversion all logic must be done within the script
- [x] Give the user the option to delete cache or keep

## Produced Product
There are three files to chose from (they all fundamentally do the same thing)
|File|Size|Description|
|--|--|--|
|DCC-Min | 337 bytes| As small as possible, zero compromises |
|DCC-Main | 582 bytes | Without most fancy tricks, logic is still readable |
|DCC-Full | 819 bytes| No variable tricks, full status updates for user |

### DCC Min
Made to be as small as possible, no explanations for anything that's happening. Just a pure test to see how small I could make it using all the tricks I know.

The choice of keeping/deleting the cache is made by either:
- Closing the program (keep)
- Hitting any key to continue (delete)

*ONLY WORKS ON C:\ DRIVE & MUST BE RUN BY A USER WITH NO SPACES IN THEIR NAME*

### DCC
A "base" script, nothing fancy, super basic logic and it only explains things to the user when it needs to.

*Works with users that have spaces in their usernames.*

### DCC Full
Most user friendly. Works with users that have spaces in their usernames. Explains to the user what it is doing at every stage to try and avoid scaring them. Especially when a paranoid user is seeing a script that they got off the internet downloading something without their consent. All variables in this script were given their full names, this was done to make it easier to edit/learn by a human.

*Works with users that have spaces in their usernames.*

#### If you are confused on which to download if you actually want to use this program then just use **DCC-Full**. It explains itself as it is doing said tasks instead of keeping you in the dark while it works it's black magic.
> This was just a challenge, to try make something as small as possible
