SELECT user_id, name, mail
FROM Users
WHERE RIGHT(mail, 13) = '@leetcode.com'
  AND LEFT(mail, 1) SIMILAR TO '[a-zA-Z]'
  AND mail ~ '^[A-Za-z0-9_.-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';

