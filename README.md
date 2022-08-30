# README

## Database tables/models (M)
   (once you migrate)
- Theater
   - id(provided by AR)
   - street_address

- Room
   - room_num
   - capacity:integer (generate amount of seats available)
   - theater_id:integer

- Movie
   - name
   - description
   - rating
   - runtime
   - release_date:datetime
   - genre

- Showtime
   - movie_id:integer
   - start_time:datetime
   - end_time:datetime

- Ticket
   - movie_id:integer
   - showtime_id:integer
   - seat_id:integer
   - price:integer

- Seat
   - movie_id:integer
   - room_id:integer
   - available:boolean (default: true)
   - is_accessible:boolean

- Customer

## Model Methods
   We want to be able to call these methods and get the expected result. If we do this, then w that our database is being setup correctly.
```
   theater => Theater.all
   theater.movies => [list of movies] 
      (it will return a list of movies)
   movie.showtime => [list of showtimes] 
      (it will return a list of showtime. showtime will belong )
   showtime.tickets
   ticket.seat
```

## Controller (C)
   (this will change a long the way )
   Movies
   Showtimes
   Theaters
   Seats 

## View - ReactJS (V)
   exists in the '/client' folder


