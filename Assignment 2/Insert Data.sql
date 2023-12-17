insert into gauri_loyalty_scheme_levels values 
("Gold", 10, "10%"),
("Silver", 5, "7%"),
("Bronze", 2, "5%")
;
select * from gauri_loyalty_scheme_levels;

insert into gauri_customer_details values
(1, "Manish", "Bhattarai", "Dharan-4", "07858987789", "bmanish@gmail.com", "Gold"),
(2, "Anmol", "Basnet", "Itahari-4", "07754895632", "Banmol1@gmail.com", "Silver"),
(3, "Biru", "Rai", "Itahari-2", "07587774147", "rbiru@gmail.com", "Gold"),
(4, "Suv", "Regmi", "BIR-12", "07999852147", "dgirl@gmail.com", "Bronze")
;
select * from gauri_customer_details;

insert into gauri_venues values
(1, "The Imperial", "Itahari-4", "Kiran", "Rana", "07898564456", 450),
(2, "Durbar INN", "Itahari-2", "Pratik", "Bhushal", "07877458854", 200),
(3, "Kundaline", "Itahri-1", "Achyut", "Timsina", "07785456123", 124),
(4, "Mahjeri", "Itahari-12", "Laxmi", "Khanal", "07787452145", 50)
;
select * from gauri_venues;

insert into gauri_event_details values
(1, "The G5 Crew", 1, "1200"), 
(2, "The Edge", 3, "2500"),
(3, "Sabin Rai", 2, "1500")
;
select * from gauri_event_details;

insert into gauri_payments values
(1, "Esewa"),
(2, "COD"),
(3, "Khalti")
;
select * from gauri_payments;

insert into gauri_bookings values
(12, "12/06/2019", 1, 1, "25/10/2019", "7pm", 3, 1, "10%"),
(25, "04/07/2019", 2, 3, "01/11/2019", "7pm", 2, 2, "7%"),
(32, "14/09/2019", 3, 2, "05/11/2019", "2pm", 2, 1, "10%"),
(45, "04/10/2019", 3, 1, "30/10/2019", "7pm", 1, 3, "10%"),
(47, "15/10/2019", 4, 2, "05/11/2019", "2pm", 1, 2, "5%")
;
select * from gauri_bookings;

insert into gauri_tickets values
(1, 34, "B", 12, "Post"),
(2, 35, "B", 12, "Post"),
(3, 36, "B", 12, "Post"),
(4, 2, "A", 25, "Collect"),
(5, 3, "A", 25, "Collect"),
(6, 45, "D", 32, "Post"),
(7, 46, "D", 32, "Post"),
(8, 5, "F", 45, "Collect"),
(9, 3, "H", 47, "Collect")
;
select * from gauri_tickets;