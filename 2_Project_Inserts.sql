INSERT INTO `appointment` (`APPOINTMENTNO`, `APPOINTMENTDATE`, `APPOINTMENTTIME`, `LATECANCEL`, `TREATMENTNO`, `PATIENTNO`, `BILLNO`) VALUES
(1, '2020-04-22', '09:15:00', b'0', 4, 4, 1),
(2, '2020-04-22', '09:45:00', b'0', 1, 1, 2),
(3, '2020-04-22', '10:45:00', b'0', 1, 2, 3),
(4, '2020-04-22', '13:45:00', b'1', 3, 3, 4),
(5, '2020-04-23', '09:45:00', b'0', 1, 4, 5),
(6, '2020-04-23', '10:30:00', b'0', 2, 5, 6),
(7, '2020-04-24', '09:30:00', b'0', 4, 6, 7),
(8, '2020-04-24', '11:15:00', b'0', 1, 1, 8);



INSERT INTO `bill` (`BILLNO`, `BILLDATE`, `PAIDINFULL`, `BILLOVERDUE`, `PATIENTNO`) VALUES
(1, '2020-04-22', b'1', b'0', 4),
(2, '2020-04-22', b'1', b'0', 1),
(3, '2020-04-22', b'0', b'0', 2),
(4, '2020-04-22', b'0', b'0', 3),
(5, '2020-04-23', b'1', b'0', 4),
(6, '2020-04-23', b'0', b'0', 5),
(7, '2020-04-24', b'0', b'0', 6),
(8, '2020-04-24', b'1', b'0', 1);



INSERT INTO `patient` (`PATIENTNO`, `PATIENTFNAME`, `PATIENTSNAME`, `PATIENTADDRESS`, `PATIENTEIRCODE`, `PATIENTCOUNTY`, `PATIENTTEL`, `PATIENTEMAIL`) VALUES
(1, 'Conor', 'Keating', '6 The Way, Blackrock', 'P43DH34', 'Cork', '0214377698', 'conorkeating@yahoo.com'),
(2, 'Alan', 'Murphy', '12 Grove street, Blackrock', 'P43DL84', 'Cork', '0214376858', 'alanmurphy@yahoo.com'),
(3, 'Jean', 'Casey', '5 Uptick, Knockdown', 'P43LR34', 'Cork', '0214897698', 'jeancasey@yahoo.com'),
(4, 'April', 'May', '76 The Nile, Splashtown', 'S53DH34', 'Limerick', '0214355698', 'aprilmay@yahoo.com'),
(5, 'Jimmy', 'Joe', '8 Dry Road, Oasis', 'T54FH34', 'Tipperary', '0214785698', 'jimmyjoe@yahoo.com'),
(6, 'Barry', 'Black', '15 Zeppelin Avenue, Awesometown', 'P43DO04', 'Cork', '0214373228', 'barryblack@yahoo.com');



INSERT INTO `payment` (`RECEIPTNO`, `RECEIPTAMOUNT`, `PAYMENTTYPE`, `BILLNO`) VALUES
(1, '75.00', 'VISA', 1),
(2, '50.00', 'Cash', 2),
(3, '25.00', 'Cheque', 3),
(4, '50.00', 'Cash', 5),
(5, '50.00', 'Cash', 6),
(6, '50.00', 'VISA', 8);



INSERT INTO `specialist` (`SPECNO`, `SPECFNAME`, `SPECSNAME`, `SPECADDRESS`, `SPECEIRCODE`, `SPECCOUNTY`, `SPECTEL`, `SPECEMAIL`) VALUES
(1, 'Jeremiah', 'Bullfrog', '2 Expensive Street, Uptown', 'P48JH04', 'Cork', '0214395198', 'jerrythefrog@yahoo.com'),
(2, 'Rick', 'Shaw', '1 Expensive Road, Noriffraff', 'P47YT64', 'Cork', '0214376728', 'dontlaughatmyname@yahoo.com');



INSERT INTO `treatment` (`TREATMENTNO`, `TREATMENTNAME`, `TREATMENTDESC`, `TREATMENTCOST`) VALUES
(1, 'Cleaning', 'This is a thorough cleaning of the patients teeth', '50.00'),
(2, 'Filling', 'This is the application of fillings to the patients teeth', '90.00'),
(3, 'Root Canal', 'This is nerve removal and filling of the patients teeth', '250.00'),
(4, 'Extraction', 'This is a removal of the patients teeth', '75.00');