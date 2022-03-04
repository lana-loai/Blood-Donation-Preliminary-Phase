-- 1st Quere 
SELECT donor_id , is_ro_subtype FROM donor , donated_blood
WHERE is_ro_subtype = 1;

--2nd Quere 
SELECT donor_id , location_id FROM donor , blood_bank 
WHERE (location_id = 'Irbid_1');

--3rd Quere 
SELECT working_hours, location_id  FROM blood_bank 
WHERE location_id = 'Amman_1'; 


