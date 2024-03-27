const db = require('../config/db')

//get all users
const getAllUsers = async (req, res) => {
    try {
        const data = await db.query('SELECT * FROM userdata')
        if (!data) {
            return res.status(404).send({
                message: 'no records found'
            })
        }
        res.status(200).send({
            message: "data fetched",
            data: data[0]
        })
    } catch (error) {
        console.log(error)
        res.send({
            message: 'Error in getAllUSer API',
            error
        })
    }
}


//get users by id
const getUsersById = async (req, res) => {
    try {
        const userid = req.params.id
        if (!userid) {
            return res.status(404).send({
                message: 'invalid id!'
            })
        }

        const data = await db.query(`SELECT * FROM userdata WHERE id=?`,[userid])
        if (!data) {
            return res.status(404).send({
                message: 'no record found!'
            })
        }
        res.status(200).send({
            userdata: data[0]
        })
    }
    catch (error) {
        console.log(error)
        res.send({
            message: 'Error in ID api',
            error
        })

    }
}

//add user

const addUser = async (req,res) => {
    try{
        const {firstName,lastName,email,password,gender,hobbies,departmentId} = req.body
        if(!firstName || !lastName || !email || !password || !gender || !hobbies || !departmentId){
            return res.status(500).send({
                message:'add all fields'
            })
        }

        const data = await db.query(`INSERT INTO userdata (firstName,lastName,email,password,gender,hobbies,departmentId) VALUES (?,?,?,?,?,?,?)`,[firstName,lastName,email,password,gender,hobbies,departmentId])

        if(!data){
            return  res.status(404).send({
                message: 'error in INSERT query'
            })
        }

        res.status(201).send({
            message: 'record created!'
        })


    }catch(error){
        console.log(error)
        res.send({
            message:'error in addUser api!'
        })
    }
}

//update user by id

const updateUser = async (req,res)=>{
    try{

        const userId = req.params.id
        if(!userId){
            return res.status(404).send({
                message: 'invalid id'
            })
        }

        const {firstName,lastName,email,password,gender,hobbies,departmentId} = req.body

        const data = db.query ("UPDATE userdata SET firstName = ?, lastName = ?, email = ?, password = ?, gender = ?, hobbies = ?, departmentId = ? WHERE id = ?",[firstName,lastName,email,password,gender,hobbies,departmentId,userId])

        if(!data) {
            return res.status(500).send({
                message:'error in update data' 
            })
        }
        res.status(200).send({
            message: 'data updated!'
        })

    }catch(error){
        console.log(error)
        res.send({
            message:'error in addUser api!'
        })

    }
}

//delete user by id

const deleteUser = async (req,res) => {

    try{
        const userId = req.params.id
        if(!userId){
           return res.status(404).send({
                message: 'invalid id'
        })}

        await db.query(`DELETE FROM userdata WHERE id = ?`,[userId])
        res.send(200).send({
            message:'deletes user!'
        })

    }catch(error){
        console.log(error)
        res.status(500).send({
            message:'error in delete api'
        })
    }

}

module.exports = { getAllUsers, getUsersById, addUser, updateUser, deleteUser };