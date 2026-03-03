​🦁 Zoo Management Database
​This repository contains the SQL script for creating and populating a relational database designed for zoo management.
​📊 Data Architecture
​The database follows a normalized relational structure consisting of:
​Animals: Species records and individual profiles.
​Staff: Records of personnel responsible for animal care.
​Food: Catalog of food supplies including brand and pricing.
​Food_Animals: A junction table to handle dietary requirements (Many-to-Many relationship).
​🛠️ Technical Features
​Referential Integrity: Implementation of Foreign Keys to link animals and staff members correctly.
​Automation: Use of ON DELETE CASCADE and ON UPDATE CASCADE constraints for consistent data management.
​Optimization: Use of precise data types (UNSIGNED, Decimal) for memory efficiency and data accuracy.