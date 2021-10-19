const express=require('express');
const router = express.Router();
var db=require('../db_connection');
router.get('/', (req, res) => {
    res.render('index');
});
router.get('/home', (req, res) => {
    res.render('home');
});
router.get('/register', (req, res) => {
    res.render('register');
});
router.get('/user', function(req, res, next) {
    var sql='SELECT * FROM student';
    db.query(sql, function (err, data, fields) {
    if (err) throw err;
    res.render('user-list', { title: 'User List', userData: data});
  });
});
module.exports = router;