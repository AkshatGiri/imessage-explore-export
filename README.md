# iMessage Explore and Export

iMessage on macos saves all the chats and message in a sqlite database. Located at `~/Library/Messages/chat.db`. This project is to explore the database and export the messages to a csv file.

`main.sql` contains some queries to explore the database.

I would recommend copy pasting the chat.db file to this directory, installing this vscode extension to explore sqlite database and running the queries - https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite

## References

I learned about the existence of this database and some idea of how to explore it from this article - [https://www.izzy.co/blogs/robo-boys.html](https://www.izzy.co/blogs/robo-boys.html)

The articles also links to this notebook on hex - [https://app.hex.tech/hex-public/app/84f25a08-95c6-4203-ae4e-9952b2ee4c66/18/bba4e329-8253-4b9f-8535-165602c40a3f](https://app.hex.tech/hex-public/app/84f25a08-95c6-4203-ae4e-9952b2ee4c66/18/bba4e329-8253-4b9f-8535-165602c40a3f)
