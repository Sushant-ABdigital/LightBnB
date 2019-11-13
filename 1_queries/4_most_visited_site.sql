SELECT properties.city, count(reservations.*) as reservation_count
FROM properties
JOIN reservations ON property_id = properties.id
GROUP BY properties.city
ORDER BY reservation_count desc;