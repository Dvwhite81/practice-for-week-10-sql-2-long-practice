-- Find Hermione's cats
SELECT name FROM cats
    JOIN cat_owners ON (cats.id = cat_owners.cat_id)
    JOIN owners ON (owners.id = cat_owners.owner_id)
    WHERE owners.first_name = 'Hermione';
