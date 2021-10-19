const e = require('express');
const express=require('express');
const router = express.Router();
const db = require("../db_connection");
exports.log=(req,res) =>{
        
        inputData={
          email:req.body.email,
          password:req.body.password
        }
        var sql='select * from user where email =? and password =?';
        db.query(sql,[inputData.email,inputData.password],function(err,data,fields){
          if(err) throw err;
          if(data.length>0){
            res.render('./home');
          }
          else{
            res.send("wrong Password")
          }
          
        })
  
    
  }