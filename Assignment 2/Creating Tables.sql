create database itahari_arts;

create table gauri_loyalty_scheme_levels (
Loyalty_Level varchar (10) primary key, 
No_of_Bookings_Required int (3) not null, 
Discount varchar (5) not null
);
select * from gauri_loyalty_scheme_levels;

create table gauri_customer_details (
Customer_Ref int (10) primary key, 
Customer_First_Name varchar (15) not null,
Customer_Last_Name varchar (15) not null,
Address varchar (45) not null, 
Contact_Number varchar (15) not null, 
Email varchar (25) not null, 
Loyalty_Level varchar (10) default null, 
foreign key (Loyalty_Level) references gauri_loyalty_scheme_levels (Loyalty_Level) on delete cascade on update cascade
);
select * from gauri_customer_details;

create table gauri_venues (
Venue_ID int (10) primary key,
Venue_Name varchar (25) not null,
Address varchar (45) not null,
Contact_First_Name varchar (15) not null,
Contact_Last_Name varchar (15) not null,
Tel_Number varchar (15) not null,
Capacity int (10) not null
);
select * from gauri_venues;

create table gauri_event_details (
Event_ID int (10) primary key, 
Event_Description varchar (100) not null, 
Venue_ID int(10)  not null, 
Full_Price varchar (10) not null, 
foreign key (Venue_ID) references gauri_venues (Venue_ID) on delete cascade on update cascade
);
select * from gauri_event_details;

Create table gauri_payments (
Payment_ID int (5) primary key,
Payment_Method varchar (25) not null
);
select * from gauri_payments;

create table gauri_bookings (
Booking_Ref int (10) primary key,
Booking_Date varchar (15) not null,
Customer_Ref int (10) not null, 
Event_ID int (10) not null,
Event_Date varchar (15) not null,
Event_Time varchar (10) not null,
Ticket_QTY int (5) not null,
Payment_ID int (5) not null,
Discount varchar (5) default null,
foreign key (Customer_Ref) references gauri_customer_details (Customer_Ref) on delete cascade on update cascade,
foreign key (Event_ID) references gauri_event_details (Event_ID) on delete cascade on update cascade,
foreign key (Payment_ID) references gauri_Payments (Payment_ID) on delete cascade on update cascade
);
select * from gauri_bookings;

create table gauri_tickets (
Ticket_No int (10) primary key,
Seat_No int (10) not null,
Seat_Row varchar(5) not null,
Booking_Ref int (10) not null,
Post_Collect varchar (10) not null,
foreign key (Booking_Ref) references gauri_bookings (Booking_Ref) on delete cascade on update cascade
);
select * from gauri_tickets;

