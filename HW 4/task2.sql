
USE pet_database;


UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';


DELETE FROM petPet
WHERE owner = 'Harold' AND species = 'dog';  
