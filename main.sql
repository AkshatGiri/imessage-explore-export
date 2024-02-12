-- Get the chat_id with this query. ( chat_id in other tables is the row_id of the chat table )
SELECT *
FROM chat
WHERE chat_identifier = "+1xxxxxxxxxx";

-- Gets all message_ids for a given chat_id
SELECT * 
FROM chat_message_join
WHERE chat_id = 0
ORDER BY message_date DESC;

-- Gets a single message by message_id
SELECT * 
FROM message
WHERE ROWID == 0;


-- Gets all message for a chatid
SELECT m.*
FROM chat_message_join cmj
JOIN message m ON cmj.message_id = m.ROWID
WHERE cmj.chat_id = 0
ORDER BY m.date ASC;

-- Gets all messages for a chat_identifier which is usually a phone number
SELECT m.*
FROM chat_message_join cmj
JOIN message m ON cmj.message_id = m.ROWID
WHERE cmj.chat_id = (
    SELECT c.ROWID
    FROM chat c
    WHERE c.chat_identifier = "+1xxxxxxxxxx"
    LIMIT 1
)
ORDER BY m.date DESC;

-- Get attachement_id associated for message id
SELECT * 
FROM message_attachment_join
WHERE message_id = 2100;

-- Get attachement from attachement_id
SELECT * 
FROM attachment
WHERE ROWID = 93;