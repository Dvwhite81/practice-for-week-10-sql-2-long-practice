-- Update the toy with the name of "Cheetos" to have a name of "Pooky"
-- Easy way
UPDATE toys SET name = 'Pooky'
    WHERE name = 'Cheetos';

-- In case there were more toys named 'Cheetos'
UPDATE toys SET name = 'Pooky'
    WHERE toys.id = (
        SELECT toys.id FROM toys
        JOIN cats ON (toys.cat_id = cats.id)
        WHERE toys.name = 'Cheetos'
        AND cats.name = 'Garfield'
    );
