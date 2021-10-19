const e = require('express');
const express=require('express');
const router = express.Router();
const db = require("../db_connection");

exports.register=(req,res) => {
    console.log("hii");
    console.log(req.body.chk);
    inputData={
      name: req.body.name,
      email: req.body.email,
      enroll:req.body.enroll,
      name: req.body.name,
      mode: req.body.mode,
      section: req.body.section,
      Vaccinated:req.body.chk
      
    };
    
    var sql='SELECT * FROM student WHERE email =?';
    db.query(sql,[inputData.email],function(err,data,fields){
      if(err) throw err;
      if(data.length > 0){
        var msg=inputData.email+"was already exits";
        
      }

      else{
        var sql='INSERT INTO student SET ?';
        db.query(sql,inputData,function(err,data){
          if(err) throw err;
        });
        var msg="You sucessfully registered";
      }
      res.render('./home',{alertMsg:msg});
    })
    
}

