-- query to show bands and their lifespan from the day they formed till split
SELECT band_name, split - formed 
    AS lifespan 
    FROM metal_bands 
    WHERE split < 2023 OR split = 2022 
    ORDER BY lifespan DESC;

