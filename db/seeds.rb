# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  movies = Movie.create([
      { name: 'Star Wars', release_status: true },
      { name: 'The Room', release_status: true },
      { name: 'Raazi', release_status: true },
      { name: 'Bramhastra', release_status: false },
      { name: 'Kedarnath', release_status: false },
      { name: 'Spider Man', release_status: false }
      ])

  halls = Hall.create([
      {hall_number: 'Hall 01'},
      {hall_number: 'Hall 02'},
      {hall_number: 'Hall 03'}
      ])

  shows = Show.create([
      {show_time: '08:00 AM', movie_id: 1, hall_id: 1},
      {show_time: '11:00 AM', movie_id: 2, hall_id: 1},
      {show_time: '05:00 PM', movie_id: 3, hall_id: 1},
      {show_time: '09:00 PM', movie_id: 4, hall_id: 1},

      {show_time: '08:00 AM', movie_id: 2, hall_id: 2},
      {show_time: '11:00 AM', movie_id: 3, hall_id: 2},
      {show_time: '05:00 PM', movie_id: 4, hall_id: 2},
      {show_time: '09:00 PM', movie_id: 1, hall_id: 2},

      {show_time: '08:00 AM', movie_id: 3, hall_id: 3},
      {show_time: '11:00 AM', movie_id: 4, hall_id: 3},
      {show_time: '05:00 PM', movie_id: 1, hall_id: 3},
      {show_time: '09:00 PM', movie_id: 2, hall_id: 3}
   ])

   seats = Seat.create([
      {seat_no: 'A01', show_id: 1},
      {seat_no: 'B01', show_id: 1},

      {seat_no: 'A01', show_id: 2},
      {seat_no: 'B01', show_id: 2},

      {seat_no: 'A01', show_id: 3},
      {seat_no: 'B01', show_id: 3},

      {seat_no: 'A01', show_id: 4},
      {seat_no: 'B01', show_id: 4},

      {seat_no: 'A01', show_id: 5},
      {seat_no: 'B01', show_id: 5},

      {seat_no: 'A01', show_id: 6},
      {seat_no: 'B01', show_id: 6},

      {seat_no: 'A01', show_id: 7},
      {seat_no: 'B01', show_id: 7},

      {seat_no: 'A01', show_id: 8},
      {seat_no: 'B01', show_id: 8},

      {seat_no: 'A01', show_id: 9},
      {seat_no: 'B01', show_id: 9},

      {seat_no: 'A01', show_id: 10},
      {seat_no: 'B01', show_id: 10}
    ])

