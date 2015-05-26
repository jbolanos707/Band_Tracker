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

### Database Schema

List of relations

   Name     | Type  
 ---------- | -------
 <relation_0>    | table
 <relation_1>   | table

<relation_0> table

id  | first_name | last_name | stylist_id
----|------------|-----------|------------
int | varchar    | varchar   | int

<relation_1> table

id  | first_name | last_name
----|------------|-----------
int | varchar    | varchar

bands_venues join table

<relation_0>_id | <relation_1>_id
--------|---------
int     | int

### License ###
Copyright  (C)  2015  Ian C. MacDonald

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


# Band_Tracker



#Contributor
Jennifer Bolanos

# Configuration

This app is built using Ruby and Postgres.

#Gems Used

Sinatra
Sinatra-Contrib
Sinatra-Activerecord
rake
pg
pry
shoulda-matchers
rspec
capybara

#License

MIT License. Copyright 2009-2015 

