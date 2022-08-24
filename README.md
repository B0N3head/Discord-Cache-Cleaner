# Discord-Cache-Cleaner
Simple Discord cache **viewer and cleaner** written in batch

## Requirements
- [x] Convert all unprefixed files to correct file type (Using [trid](https://mark0.net/soft-trid-e.html "trid"))
- [x] Give the user the option to delete cache or keep

## DCC Process
- Check for dependencies 
- Download dependencies 
- Extract dependencies
- Open cache with file explorer
- Run trid with specified arguments
- Wait for user input to delete cache

## Produced Product
There are three files to chose from (they all fundamentally do the same thing)
|File|Size|Description|
|--|--|--|
|DCC-Min  |  362 bytes| As small as possible |
|DCC-Main  |  582 bytes | Without most fancy tricks, still readable |
|DCC-Full  |  819  bytes| No variable tricks, full status updates for user |

### DCC Min
Made to be as small as possible, no explanations for anything, made to show how small I could get it.

*ONLY WORKS ON C:\ DRIVE. MUST BE RUN BY A USER WITH NO SPACES IN THEIR NAME*

### DCC
Just the base script, nothing fancy, only explains things when it needs to. Works with users that have spaces in their usernames.

### DCC Full
Most user friendly. Works with users that have spaces in their usernames. Explains to the user what it is doing at every stage to try and avoid scaring them. Especially when a paranoid user is seeing a script that they got off the internet downloading something without their consent. All variables in this script were given their full names, this was done to make it easier to edit/learn by a human.

#### If you are confused on which to download just use **DCC-Full**, it is the best as it explains itself as it is doing said tasks.
> This was just a challenge, to try make something as small as possible
