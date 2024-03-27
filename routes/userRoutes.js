const express = require('express');
const { getAllUsers, getUsersById, addUser, updateUser, deleteUser } = require('../controllers/userController');

//router
const router = express.Router();

//all user

router.get('/allusers', getAllUsers)

//get user by id

router.get('/get/:id', getUsersById)

//add user

router.post('/addUser', addUser)

//update user by id

router.put('/updateUser/:id',updateUser)

//delete user

router.delete('/deleteUser/:id',deleteUser)


module.exports = router