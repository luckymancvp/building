# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


NotifyCenter.delete_all
NotifyCenter.create(
    :title   => "Title 1",
    :content => "Content 1",
    :checked => 0,
    :time    => "2012-11-08 09:00:00",
)
NotifyCenter.create(
    :title   => "Title 2",
    :content => "Content 2",
    :checked => 0,
    :time    => "2012-11-08 09:30:00"
)
NotifyCenter.create(
    :title   => "Title 3",
    :content => "Content 3",
    :checked => 0,
    :time    => "2012-11-08 10:30:00"
)
NotifyCenter.create(
    :title   => "Title 4",
    :content => "Content 4",
    :checked => 0,
    :time    => "2012-11-08 11:30:00"
)
NotifyCenter.create(
    :title   => "Title 5",
    :content => "Content 5",
    :checked => 0,
    :time    => "2012-11-08 12:30:00"
)
#