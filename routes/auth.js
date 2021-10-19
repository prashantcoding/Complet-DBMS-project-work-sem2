const express=require('express');
const router = express.Router();
const authController=require('../controller/auth')
const logController=require('../controller/log')
const registerController=require('../controller/register')
router.post('/login',authController.login);
router.post('/log',logController.log);
 router.post('/register',registerController.register);
module.exports =router;