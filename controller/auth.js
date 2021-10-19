const e = require('express');
const express=require('express');
const router = express.Router();
const db = require("../db_connection");

exports.login=(req,res) => {
    console.log(req.body);
    inputData={
      username: req.body.username,
      email: req.body.email,
      password: req.body.password,
      
    };
    
    var sql='SELECT * FROM user WHERE email =?';
    db.query(sql,[inputData.email],function(err,data,fields){
      if(err) throw err;
      if(data.length > 0){
        var msg=inputData.email+"was already exits";
        
      }

      else{
        var sql='INSERT INTO user SET ?';
        db.query(sql,inputData,function(err,data){
          if(err) throw err;
        });
        var msg="You sucessfully singup";
      }
      res.render('./index',{alertMsg:msg});
    })
    
}

