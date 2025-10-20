const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  // A simple message to confirm the container is running
  res.send('Hello from the Node.js CI/CD App!');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
