-- Query 1: Select the latest 5 users ordered by their creation date
SELECT * FROM users ORDER BY created_at LIMIT 5;

-- Query 2: Count the number of users created on each day of the week
SELECT COUNT(*), DAYNAME(created_at) FROM users GROUP BY 2;

-- Query 3: Select usernames and image URLs of users who have not posted any photos
SELECT username, image_url FROM users LEFT JOIN photos ON users.id = photos.user_id WHERE image_url IS NULL;

-- Query 4: Count the number of likes for each photo and retrieve the photo_id and image_url
SELECT COUNT(*), photo_id, image_url FROM likes
JOIN photos ON photos.id = likes.photo_id
GROUP BY photo_id;

-- Query 5: Retrieve the top 5 tags with the highest number of associations in photo_tags
SELECT tags.tag_name, COUNT(*) AS total FROM photo_tags
JOIN tags ON photo_tags.tag_id = tags.id
GROUP BY tags.id ORDER BY total DESC LIMIT 5;

-- Query 6: Retrieve usernames of users who have liked all photos, along with the count of likes for each user
SELECT username, COUNT(*) AS num_likes FROM users
INNER JOIN likes ON users.id = likes.user_id
GROUP BY likes.user_id HAVING num_likes = (SELECT COUNT(*) FROM photos);
