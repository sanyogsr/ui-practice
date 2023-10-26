const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routes/auth");

const PORT = process.env.PORT || 3000;

const app = express();

app.use(express.json());
app.use(authRouter);

const DB =
  "mongodb+srv://sanyogsinghrajput:sanyogvks14321@cluster0.p0vlc7a.mongodb.net/?retryWrites=true&w=majority";

mongoose
  .connect(DB)
  .then(() => {
    console.log("connected with the mangoDb");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at the port ${PORT}`);
});
