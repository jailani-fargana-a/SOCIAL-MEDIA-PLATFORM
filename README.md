# SOCIAL-MEDIA-PLATFORM
Crafted a comprehensive social media platform facilitating seamless interaction, content sharing, and community engagement. Incorporated intuitive user interfaces, robust security measures, and advanced analytics for enhanced user experience and performance tracking.
# Social Media Platform Database

This repository contains the SQL scripts and documentation for a social media platform database. The database is designed using normalized tables to ensure data integrity and minimize redundancy.

## Normalized Tables

1. **Users**: Contains information about users.
2. **Posts**: Stores user posts.
3. **Comments**: Records comments made on posts.
4. **Friendships**: Stores connections between users.
5. **Notifications**: Records notifications for user activities.
6. **Likes**: Stores likes on posts.
7. **Messages**: Stores private messages between users.
8. **Tags**: Records tags associated with posts.

## Database Normalization

- Tables are designed following normalization rules (e.g., 1st Normal Form, 2nd Normal Form, 3rd Normal Form) to minimize data duplication and maintain data integrity.
- Relationships between tables are established using foreign keys to enforce referential integrity.

## Database Constraints

- Primary keys are defined for each table to ensure unique identification of records.
- Foreign key constraints are enforced to maintain referential integrity between related tables.
- Not null constraints are applied to columns where appropriate to ensure mandatory data entry.
- Auto-incremented IDs are used for primary keys where applicable to ensure uniqueness.

## Triggers

- Triggers are implemented to automatically insert a row into the notification table when a comment, like, message, or tag is inserted related to a user.

## Usage

1. Clone this repository to your local machine.
2. Run the SQL scripts in your MariaDB environment to create the database and tables.
3. Insert sample data into the tables using appropriate SQL statements.
4. Explore the database structure and functionality.

## Table Creation Scripts

- [users.sql](users.sql)
- [posts.sql](posts.sql)
- [comments.sql](comments.sql)
- [friendships.sql](friendships.sql)
- [notifications.sql](notifications.sql)
- [likes.sql](likes.sql)
- [messages.sql](messages.sql)
- [tag.sql](tag.sql)

## Trigger Scripts

- [notification_trigger.sql](notification_trigger.sql)

Feel free to contribute to this project by suggesting improvements or adding new features!
