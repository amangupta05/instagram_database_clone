# Instagram_Database_Clone

The provided SQL code consists of six queries, each serving a specific purpose in the context of an imaginary Instagram-like database. Here's a brief overview:

1. **Latest Users:**
   - The first query retrieves the latest 5 users from the "users" table.
   - It orders the results based on the creation date of users.

2. **User Creation Statistics:**
   - The second query counts the number of users created on each day of the week.
   - It provides a summary of user creation activity over time.

3. **Users Without Photos:**
   - The third query identifies users who have not posted any photos.
   - It selects the usernames and image URLs of these users using a left join between the "users" and "photos" tables.

4. **Popular Photos:**
   - The fourth query counts the number of likes for each photo and retrieves the associated photo_id and image_url.
   - It joins the "likes" and "photos" tables to gather this information.

5. **Top Tags:**
   - The fifth query finds the top 5 tags with the highest number of associations in the "photo_tags" table.
   - It counts the occurrences of each tag and orders the results accordingly.

6. **Super Likers:**
   - The sixth query identifies users who have liked all photos in the database.
   - It retrieves the usernames of these users along with the count of their likes.

These queries collectively provide insights into user activity, content popularity, and tag associations within the Instagram-like database.
