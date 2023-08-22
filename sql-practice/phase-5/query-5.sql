-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
SELECT DISTINCT name FROM cats
    JOIN cat_owners ON (cats.id = cat_owners.cat_id)
    JOIN owners ON (cat_owners.owner_id = owners.id)
    WHERE owners.first_name = 'George' OR owners.first_name = 'Melynda';
