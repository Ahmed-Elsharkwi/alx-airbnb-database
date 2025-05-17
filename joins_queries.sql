select * from Bookings join Users on Bookings.user_id = Users.user_id ;
select * from Properties left join Reviews on Properties.property_id  = Reviews.property_id ;
select * from Bookings left join Users on Bookings.user_id = Users.user_id  union select * from Bookings right join Users on Bookings.user_id = Users.user_id ;
