# LiveWire Designer (LWDesigner)

This application will help you in managing and documenting your new (or existing) Axia Audio Livewire+ network

this application is built with ruby on rails, and uses a pgsql database for production deployments.

## Current Features
* Node Documentation
  - hostname
  - node location
  - IP address
  - subnet Mask
  - Node type
  - Node Mode

# TO DO
Core feature that still need to be completed
- [ ] Global Search
- [ ] Global channel listing
- [ ] show disabled channels
- [ ] show nodes with empty inputs or output
- [ ] support for powerstation and QOR I/O - ** in progress **
- [ ] Proper GPIO node documentation - ** in progress **
- [ ] Button pannels and XY selectors
- [ ] Pathfinder stuff (maybe)
- [ ] Serial numbers - ** in progress **
- [ ] mac addresses - ** in progress **
- [ ] add header
  - [x] create header
  - [ ] style header
- [ ] add dashbaord
  - [x] create dashbaord
  - [ ] style dashboard


## Wishlist
Features that I would like to impliment eventually
- [ ] DNS management
  - [ ] update windows DNS server from hostname
  - [ ] update BIND from hostname
- [ ] add static IP mapping in router or switch
- [ ] switchport mac locking (not sure on this one)
- [ ] network cable documentation
- [ ] pull snmp from nodes (probably not soon)
- [ ] pathfinder API?
