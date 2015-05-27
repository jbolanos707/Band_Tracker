## Band_Tracker

<a href="APP LINK IF APPLICABLE" target="#"><APP LINK NAME></a>

By Jennifer Bolanos (<a href=https://github.com/jbolanos707/Band_Tracker.git target="#">GitHub</a>)

@ Epicodus Programming School, Portland, OR

GNU General Public License, version 3 (see below). Copyright (c) 2015 Jennifer Bolanos.

### Description

Band_Tracker

A simple app that allows you to track bands. You can:
- add bands
- add venues
- see what venues a band is playing
- see what bands are playing at a venue

### Author(s)

Jennifer Bolanos

### Setup

This app was written in `ruby '2.0.0'`.

Clone this repo with
```console
> git clone https://github.com/jbolanos707/Band_Tracker.git
```

Install gems:

```console
> bundle install
```

Create database
```console
> rake db:create
> rake db:migrate
> rake db:test:prepare
```

Start App:
```console
> ruby app.rb
```
Navigate in your browser to localhost:4567

### Database Schema

List of relations

   Name     | Type  
 ---------- | -------
 bands    | table
 venues   | table
 bands_venues   | table

bands table

id  | name | venue_id
----|------------|-----------
int | varchar    | int

venues table

id  | name 
----|------------
int | varchar    

bands_venues join table

band_id | venue_id
--------|---------
int     | int

### License ###
Copyright  (C)  2015  Jennifer Bolanos

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or    
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
