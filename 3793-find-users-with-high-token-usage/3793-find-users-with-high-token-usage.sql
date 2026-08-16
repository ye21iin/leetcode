SELECT
    p.user_id,
    COUNT(p.prompt) AS prompt_count,
    ROUND(AVG(p.tokens), 2) AS avg_tokens
FROM prompts p
GROUP BY p.user_id
HAVING COUNT(p.prompt) >= 3
   AND EXISTS (
       SELECT 1
       FROM prompts p2
       WHERE p2.user_id = p.user_id
         AND p2.tokens > (
             SELECT AVG(p3.tokens)
             FROM prompts p3
             WHERE p3.user_id = p.user_id
         )
   )
ORDER BY 3 DESC, 1 ASC;