const express = require("express");
const os = require("os");

const app = express();
const PORT = 3000;

// Root endpoint
app.get("/", (req, res) => {
  res.send("🚀 DevOps Demo Application is Running Successfully!");
});

// Health check endpoint
app.get("/health", (req, res) => {
  res.status(200).json({
    status: "UP",
    hostname: os.hostname(),
    uptime: process.uptime(),
    timestamp: new Date()
  });
});

// App info endpoint
app.get("/api/info", (req, res) => {
  res.json({
    application: "DevOps Demo App",
    version: "1.0.0",
    developer: "Umesh",
    environment: process.env.NODE_ENV || "development"
  });
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port ${PORT}`);
});

