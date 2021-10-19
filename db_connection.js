const express=require('express');
const mysql=require('mysql');
const dotenv=require('dotenv');

dotenv.config({path: './.env'});
const db=mysql.createConnection(
    {
        host:process.env.Database_HOST,
        user:process.env.Database_USER,
        password:process.env.Database_PASSWORD,
        database:process.env.DATABASE

    }

);

db.connect(function(err){
    if(err)throw err;
    console.log("connected")
})

module.exports =db