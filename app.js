const express = require('express');
const client = require('prom-client');
const app = express();
const port = 3000;

// Create a registry to register the metrics
const register = new client.Registry();
client.collectDefaultMetrics({ register });

// Define your custom counter (optional)
const httpRequestCounter = new client.Counter({
  name: 'http_requests_total',
  help: 'Total number of HTTP requests',
});
register.registerMetric(httpRequestCounter);

// Root endpoint
app.get('/', (req, res) => {
  httpRequestCounter.inc();
  res.send('🚀 Hello Saed!!, your app just auto-deployed via GitHub Actions!');
});

// Metrics endpoint
app.get('/metrics', async (req, res) => {
  res.set('Content-Type', register.contentType);
  res.end(await register.metrics());
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});

