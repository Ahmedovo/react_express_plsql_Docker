// Import express
const express = require('express');

// Initialize express app
const app = express();

// Define a route for the root URL
app.get('/', (req, res) => {
  res.send('Hello World!');
});

// Start the server on port 5000
app.listen(5000, () => {
  console.log('Server is running on http://localhost:5000');
});
