// Import express and pg (PostgreSQL client)
const express = require('express');
const { Client } = require('pg');

// Initialize express app
const app = express();

// Database connection details
const dbClient = new Client({
  host: 'database',  // Change this to the correct database hostname or service name in Docker
  port: 5432,         // Default PostgreSQL port
  user: 'admin',      // PostgreSQL user
  password: 'admin',  // PostgreSQL password
  database: 'retrocode', // PostgreSQL database name
});

// Connect to the database
dbClient.connect()
  .then(() => {
    console.log('Connected to PostgreSQL database');
  })
  .catch((err) => {
    console.error('Database connection error', err.stack);
  });




// Start the server on port 5000
app.listen(5000, () => {
  console.log('Server is running on http://localhost:5000');
});
