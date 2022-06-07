const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const app = express();
const multer = require('multer');
const forms = multer();
const { db } = require('./model/dbconnect');

app.use(cors());
app.use(express.json());
app.use(forms.array());
app.use(bodyParser.urlencoded({ extended: true}));

// readData
app.get('/api/readData', (req, res) => {
    const sqlQuery = "SELECT * FROM user";

    db.query(sqlQuery, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
            console.log(result);
        }
    });
});

//readdata berdasarkan email
app.get('/api/readUser/:email', (req, res) => {
    const userEmail = req.params.email;

    const sqlQuery = "SELECT * FROM user WHERE email = ?";
    db.query(sqlQuery, userEmail, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
            console.log(result);
        }
    });
});

//readartikel
app.get('/api/readArticle', (req, res) => {
    const sqlQuery = "SELECT * FROM articles";

    db.query(sqlQuery, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
            console.log(result);
        }
    });
});

//readarticle berdasarkan id
app.get('/api/readArticle/:id', (req, res) => {
    const userId = req.params.id;

    const sqlQuery = "SELECT artikel FROM articles WHERE id = ?";
    db.query(sqlQuery, userId, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
            console.log(result);
        }
    });
});

//create data
app.post('/api/createUser', (req, res) => {
    const userName = req.body.username;
    const userEmail = req.body.useremail;
    const userPassword = req.body.userpassword;

    const sqlQuery = "INSERT INTO user (username, email, password) VALUE (?, ?, ?)";
    db.query(sqlQuery, [userName, userEmail, userPassword], (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
            console.log(result);
        }
    });
});

//update data

app.put('/api/updateUser', (req, res) => {
    const userName = req.body.username;
    const userEmail = req.body.useremail;
    const userPassword = req.body.userpassword;

    const sqlQuery = "UPDATE user SET username = ?, password = ? WHERE email = ?";
    db.query(sqlQuery, [userName, userPassword, userEmail], (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
            console.log(result);
        }
    });
});

//Delete data
app.delete('/api/deleteUser', (req, res) => {
    const userId= req.body.userid;

    const sqlQuery = "DELETE FROM user WHERE user_id = ?";
    db.query(sqlQuery, userId, (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
            console.log(result);
        }
    });
})

app.listen(3001, () => {
    console.log('Server Running! Port 3001');
});

