-- ================================
-- TASK 0: COMPLEX JOINS
-- ================================

-- 0.1 INNER JOIN: Retrieve all bookings and the respective users
SELECT 
    b.id AS booking_id,
    b.property_id,
    b.date_from,
    b.date_to,
    u.id AS user_id,
    u.name AS user_name,
    u.email
FROM bookings b
INNER JOIN users u
    ON b.user_id = u.id;

-- 0.2 LEFT JOIN: Retrieve all properties and their reviews (including properties with no reviews)
SELECT 
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    r.id AS review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r
    ON p.id = r.property_id;

-- 0.3 FULL OUTER JOIN: Retrieve all users and all bookings
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    u.email,
    b.id AS booking_id,
    b.property_id,
    b.date_from,
    b.date_to
FROM users u
FULL OUTER JOIN bookings b
    ON u.id = b.user_id;

