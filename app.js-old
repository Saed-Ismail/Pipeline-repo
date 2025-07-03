const express = require('express');
const app = express();
const port = 3000;

const client = require('prom-client');
const collectDefaultMetrics = client.collectDefaultMetrics;

// Start collecting default Node.js metrics
collectDefaultMetrics();

// Basic route
app.get('/', (req, res) => {
  res.send('🚀 Hello Saed, your app just auto-deployed via GitHub Actions!');
});

// Metrics endpoint
app.get('/metrics', async (req, res) => {
  res.set('Content-Type', client.register.contentType);
  res.end(await client.register.metrics());
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

