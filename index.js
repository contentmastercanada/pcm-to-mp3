import express from "express";
import convert from "./api/convert.js";

const app = express();
app.post("/api/convert", convert);

app.get("/", (req, res) => {
  res.send("PCM to MP3 API is running.");
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Listening on port ${PORT}`));
