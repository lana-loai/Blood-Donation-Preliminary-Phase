create table Donor(
DONOR_ID         varchar2(10) constraint PK_Donor_Donor_ID primary key,
PASSWORD         varchar2(10) constraint CC_Donor_Password check(length(password)=10),
CITY             char(15),
F_NAME           char(20),
L_NAME           char(20),
D_EMAIL          varchar2(20),
D_NUMBER         number(20),
D_ADDRESS        varchar2(30),
AGREE_TO_CONTACT number(1));


create table Blood_Bank(
LOCATION_ID          varchar2(10) constraint PK_Location_Location_ID primary key,
WORKING_HOURS        varchar2(10),
BANK_AVAILABILITY    number(1),
BANK_PHONE_NUMBER    number(10),
BANK_EMAIL           varchar2(20),
BANK_FAX             varchar2(20));


create table Appointment(
Location_ID_A          varchar2(10),
Donor_ID_A             varchar2(10),
Appointment_rn         number(10) constraint PK_APPOINTMENT_REF_NUM primary key,
is_booked              number(1),
Appointment_status     char(10),
Appointment_date       date,
Appointment_new_date   date default null,
constraint FK_A_DONOR_ID_DONOR foreign key(donor_id_a) references donor(donor_id),
constraint FK_A_LOC_ID_BLOOD_BANK foreign key(location_id_a) references blood_bank(location_id));


create table Donor_Eligibility(
Donor_ID_ELI          varchar2(10),
Appointment_rn_ELI    number(15),
birth_date            date,
age                   number(2),
gender                char(1),
chronic_illnesses     varchar2(30),
weight                number(4,2),
is_eligible           number(1), 
constraint FK_DE_DONOR_ID_DONOR foreign key(donor_id_eli) references donor(donor_id));


create table Donated_Blood(
Donor_ID_DB           varchar2(10),
Blood_rn              varchar2(20) constraint PK_DONATED_BLOOD_RN primary key,
Blood_test            clob DEFAULT NULL,
Blood_type            char(3),
Is_ro_subtype         number(1),
Blood_strength        number(3,1),
Medications_donated   varchar2(30),
Date_taken            date,
Is_available          number(1),
Is_expired            number(1),
constraint FK_DB_DONOR_ID_DONOR foreign key(donor_id_db) references donor(donor_id));


create table Blood_Request(
Request_rn                number(10) constraint PK_BR_REQ_RN primary key,
requested_type            char(3),
Request_date              date,
Hospital_name             varchar2(20),
Requested_volume          number(3),
is_given                  number(1),
is_ro_request             number(1),
Medications_requested     varchar2(30),
Priority                  number(1));

 
create table Answered_Requests(
Request_RN_A   number(10),
Blood_RN_A     varchar2(20),
constraint FK_ANSWERED_RRN_REQUEST foreign key(request_rn_a) references Blood_Request(request_rn),
constraint FK_ANSWERED_BRN_DB foreign key(blood_rn_a) references Donated_blood(blood_rn),
constraint PK_ANSWERED_RRN_BRN primary key(request_rn_a, blood_rn_a));

create sequence SEQ_APP_RN
start with 1100000001
increment by 1;

create sequence SEQ_BLOOD_REQUEST_RN
start with 2341
increment by 1;
