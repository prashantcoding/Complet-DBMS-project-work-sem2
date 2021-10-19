const express = require('express')
const app = express()
const con=require('./db_connection')
const dotenv=require('dotenv');
var session = require('express-session');
var MySQLStore = require('express-mysql-session')(session);
var options = {
	host: 'localhost',
	port: 3306,
	user: 'session_test',
	password: 'password',
	database: 'session_test'
};
dotenv.config({path: './.env'});
app.use(express.urlencoded({extended: false}));
app.use(express.json());

app.use(express.static(__dirname + '/public'));
app.use(express.static(__dirname + '/static'));
app.set('view engine', 'ejs')
app.get('/',(req,res) => {
    res.render('index.ejs')
    
})
app.use('/auth',require('./routes/auth'))
//define routes
app.use('/',require('./routes/pages'))
app.listen(3000)