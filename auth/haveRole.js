//Registrar un role
var express = require("express");
var router = express.Router();

function haveRole(...rol) {
    return router.use((req, res, next)=>{
        if(rol.includes(req.body.role)){
            next();
        }else if(req.body.role == "admin"){
            next();
        }else {
            res.status(401).send({
                "Why":"Unauthorized this role",
            });
        }
    });
}

module.exports = haveRole;