

INSERT INTO donor (donor_id , password , f_name ,l_name , d_email , d_number , d_address  , agree_to_contact , city )
	VALUES('Rami01' ,'1478523690' , 'Rami' , 'Maqatef' , 'rami_mk@gmail.com' , 0732361480 , 'east _dist' ,  0 , 'Irbid' );
INSERT INTO donor (donor_id , password , f_name ,l_name , d_email , d_number , d_address  , agree_to_contact , city )
	VALUES('Sami02' , '1234569870' , 'Sami', 'Talafha' , 'sami_tla@gmail.com' , 0761233210 , 'east_dist' ,  1 , 'Amman');
INSERT INTO donor (donor_id , password , f_name ,l_name , d_email , d_number , d_address  , agree_to_contact , city )
	VALUES('Ismail03' ,'9632587410', 'Ismail' , 'Amen' , 'ismail_65@gmail.com' , 0731735962 ,'west_dist',  1 , 'Amman');
INSERT INTO donor (donor_id , password , f_name ,l_name , d_email , d_number , d_address  , agree_to_contact , city )
	VALUES('Mervat04' ,'1352587410', 'Mervat' , 'Al_fares' , 'mer_vat_0@gmail.com' , 0731798765 , 'north_dist' ,  0 , 'Aqaba');
INSERT INTO donor (donor_id , password , f_name ,l_name , d_email , d_number , d_address  , agree_to_contact , city )
	VALUES('Yasmen05' ,'6541230789' , 'Yasmen' , 'Sabry' , 'yasso__@gmail.com' , 0763549521 , 'west_dist' ,  1 , 'Jarash');


INSERT INTO blood_bank (location_id ,working_hours, bank_availability , bank_phone_number , bank_email , bank_fax ) 
		VALUES('Irbid_1' , '24 Hrs' , 1 , 0763549577 , 'bank_ir_1@gmail.com' , '866-510-1213');
INSERT INTO blood_bank (location_id ,working_hours, bank_availability,  bank_phone_number , bank_email , bank_fax ) 
		VALUES('Amman_1' , '24 Hrs' , 1 , 0763549111, 'bank_am_1@gmail.com' , '366-710-5454');
INSERT INTO blood_bank (location_id ,working_hours, bank_availability, bank_phone_number , bank_email , bank_fax ) 
		VALUES('Aqaba_1' , '24 Hrs' , 1 , 0763510221 , 'bank_aq_1@gmail.com' , '652-230-8852');
INSERT INTO blood_bank (location_id ,working_hours, bank_availability, bank_phone_number , bank_email , bank_fax ) 
		VALUES('Amman_2' , '24 Hrs' , 1 ,0763236590, 'bank_am_2@gmail.com' , '656-151-1289');
INSERT INTO blood_bank (location_id ,working_hours, bank_availability, bank_phone_number , bank_email , bank_fax ) 
		VALUES('Jarash_1' , '24 Hrs' , 1 , 0765322658 , 'bank_jr_1@gmail.com' , '566-960-1013');



INSERT INTO donor_eligibility (Donor_ID_ELI, Appointment_rn_ELI ,birth_date , gender , chronic_illnesses, weight ,is_eligible)
		VALUES ('Rami01' ,  01 , to_date ('02-02-2000' , 'DD-MM-YYYY') , 'M' , 'None' , 55, 1);
INSERT INTO donor_eligibility (Donor_ID_ELI, Appointment_rn_ELI ,birth_date , gender , chronic_illnesses, weight ,is_eligible)
		VALUES ('Sami02' ,  02 , to_date ('17-09-2000' , 'DD-MM-YYYY') , 'M' , 'None' , 75, 1);
INSERT INTO donor_eligibility (Donor_ID_ELI, Appointment_rn_ELI ,birth_date , gender , chronic_illnesses, weight ,is_eligible)
		VALUES ('Ismail03' ,  03 , to_date ('22-08-2000' , 'DD-MM-YYYY') , 'M' , 'None' , 65, 1);
INSERT INTO donor_eligibility (Donor_ID_ELI, Appointment_rn_ELI ,birth_date , gender , chronic_illnesses, weight ,is_eligible)
		VALUES ('Mervat04' ,  04 , to_date ('09-11-2000' , 'DD-MM-YYYY') , 'F' , 'None' , 59, 1);
INSERT INTO donor_eligibility (Donor_ID_ELI, Appointment_rn_ELI ,birth_date , gender , chronic_illnesses, weight ,is_eligible)
		VALUES ('Yasmen05',  05 , to_date ('06-06-2000' , 'DD-MM-YYYY') , 'F' , 'None' , 66, 1);



INSERT INTO Donated_Blood (  donor_id_db ,blood_rn, blood_test, blood_type, is_ro_subtype, medications_donated , date_taken , is_available , is_expired )
		VALUES ('Rami01' , 'DB01' , null , 'A-', 1,'Medi_IDK' ,to_date ('15-05-2005' , 'DD-MM-YYYY'),1,0);
INSERT INTO Donated_Blood (  donor_id_db ,blood_rn, blood_test, blood_type, is_ro_subtype, medications_donated , date_taken , is_available , is_expired )
		VALUES ('Sami02' , 'DB02' , null , 'O-', 0,'Medi_IDC' ,to_date ('18-08-2005' , 'DD-MM-YYYY'),1,0);
INSERT INTO Donated_Blood (  donor_id_db ,blood_rn, blood_test, blood_type, is_ro_subtype, medications_donated , date_taken , is_available , is_expired )
		VALUES ('Ismail03' , 'DB03' , null , 'AB-', 0,'Medi_WK' ,to_date ('11-01-2005' , 'DD-MM-YYYY'),1,0);
INSERT INTO Donated_Blood (  donor_id_db ,blood_rn, blood_test, blood_type, is_ro_subtype, medications_donated , date_taken , is_available , is_expired )
		VALUES ('Mervat04', 'DB04' , null , 'O+', 0,'Medi_WW' ,to_date ('12-12-2005' , 'DD-MM-YYYY'),1,0);
INSERT INTO Donated_Blood (  donor_id_db ,blood_rn, blood_test, blood_type, is_ro_subtype, medications_donated , date_taken , is_available , is_expired )
		VALUES ('Yasmen05', 'DB05' , null , 'B-', 0,'Medi_WW' ,to_date ('12-12-2005' , 'DD-MM-YYYY'),1,0);


INSERT INTO Blood_Request(request_rn , requested_type , request_date, Hospital_name,
Requested_volume, is_given , is_ro_request ,  Medications_requested ,  Priority )
VALUES (01, 'O-' , to_date ('25-12-2005' , 'DD-MM-YYYY'), 'Al- Jamaa' , 10 , 0 , 1 , 'Med-Poxi' ,1);

INSERT INTO Blood_Request(request_rn , requested_type , request_date, Hospital_name,
Requested_volume, is_given , is_ro_request ,  Medications_requested ,  Priority )
VALUES (02, 'A-' , to_date ('20-02-2005' , 'DD-MM-YYYY'), 'Somia ' , 5 , 1 , 1 , 'Med-Soxi' ,1);

INSERT INTO Blood_Request(request_rn , requested_type , request_date, Hospital_name,
Requested_volume, is_given , is_ro_request ,  Medications_requested ,  Priority )
VALUES (03, 'A+' , to_date ('05-01-2006' , 'DD-MM-YYYY'), 'Al - Rahabat' , 3 , 1 , 1 , 'Med-Woai' ,0);

INSERT INTO Blood_Request(request_rn , requested_type , request_date, Hospital_name,
Requested_volume, is_given , is_ro_request ,  Medications_requested ,  Priority )
VALUES (04, 'B-' , to_date ('19-08-2006' , 'DD-MM-YYYY'), 'Al - Rahabat' , 3 , 0 , 1 , 'Med-Poxi' ,1);

INSERT INTO Blood_Request(request_rn , requested_type , request_date, Hospital_name,
Requested_volume, is_given , is_ro_request ,  Medications_requested ,  Priority )
VALUES (05, 'O+' , to_date ('19-09-2006' , 'DD-MM-YYYY'), 'Al - Ramtha' , 12 , 1 , 1 , 'Med-Poxi' ,1);



INSERT INTO Appointment(Location_ID_A,Donor_ID_A ,Appointment_rn,is_booked, Appointment_status, Appointment_date )
		VALUES ('Irbid_1' ,  'Rami01',  01  , 1 ,       'Confirmed' ,	to_date ('18-08-2005' , 'DD-MM-YYYY'));
INSERT INTO Appointment(Location_ID_A,Donor_ID_A ,Appointment_rn,is_booked, Appointment_status, Appointment_date )
		VALUES ('Amman_1' ,  'Sami02',  02  , 1 ,       'Confirmed' ,	to_date ('15-08-2005' , 'DD-MM-YYYY'));
INSERT INTO Appointment(Location_ID_A,Donor_ID_A ,Appointment_rn,is_booked, Appointment_status, Appointment_date )
		VALUES ('Amman_1' ,  'Ismail03',  03  , 0 ,       'Cancelled' ,	to_date ('15-08-2005' , 'DD-MM-YYYY'));
INSERT INTO Appointment(Location_ID_A,Donor_ID_A ,Appointment_rn,is_booked, Appointment_status, Appointment_date )
		VALUES ('Aqaba_1'  ,  'Mervat04' ,  04  , 1 ,       'Confirmed' ,	to_date ('13-08-2005' , 'DD-MM-YYYY'));
INSERT INTO Appointment(Location_ID_A,Donor_ID_A ,Appointment_rn,is_booked, Appointment_status, Appointment_date )


INSERT INTO Answered_Requests ( Request_RN_A , Blood_RN_A)
VALUES (01 ,'DB01' );
INSERT INTO Answered_Requests ( Request_RN_A , Blood_RN_A)
VALUES (02 ,'DB02' );
INSERT INTO Answered_Requests ( Request_RN_A , Blood_RN_A) --error
VALUES (03 ,'DB03' );
INSERT INTO Answered_Requests ( Request_RN_A , Blood_RN_A)
VALUES (04 ,'DB04' );
INSERT INTO Answered_Requests ( Request_RN_A , Blood_RN_A)
VALUES (05 ,'DB05' );