SELECT 
    band_name, 
    (IFNULL(split, 2022) - formed) AS lifespan
FROM 
    metal_bands
WHERE 
    style = 'Glam rock'   -- Filter for bands with 'Glam rock' style
ORDER BY 
    lifespan DESC;  -- Rank bands by lifespan in descending order

