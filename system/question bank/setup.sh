#!/bin/bash

# Create the database and table
mysql -u root -p < system/database_creation.sql

# Insert questions for each subject
mysql -u root -p eduai < system/question_bank/algorithms.sql
mysql -u root -p eduai < system/question_bank/data_structure.sql
mysql -u root -p eduai < system/question_bank/machine_learning.sql
mysql -u root -p eduai < system/question_bank/web_development.sql

echo "Database setup complete!"