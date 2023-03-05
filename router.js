const express = require('express')
const router = express.Router()
const mysql = require("./mysql")
//引入上传模块
const multer = require('multer')
const upload = multer({ dest: "./public/upload" })
// 时间日期
const moment = require('moment')


//用户登录
router.post('/login', (request, resposne) => {
    let sql = 'select * from users where username=? and password=?'
    let params = [
        request.body.username,
        request.body.password
    ]
    mysql.query(sql, params, (err, results) => {
        if (err) return console.log(err.message)
        if (results && results.length >= 1) {
            resposne.json({
                code: 200,
                msg: '登录成功',
                data: results[0],
            })
        } else {
            resposne.json({
                code: 201,
                msg: '登录失败'
            })
        }
    })

})

// 用户注册 
router.post('/register', (request, resposne) => {
    let sql = 'insert into users(`username`,`password`,`nickname`,`sex`,`phone`,`email`)values(?,?,?,?,?,?)'
    let params = [
        request.body.reg_username,
        request.body.reg_password,
        request.body.reg_nickname,
        request.body.reg_sex,
        request.body.reg_phone,
        request.body.reg_email
    ]
    mysql.query(sql, params, (err, results) => {
        if (err) return console.log(err.message)
        if (results && results.affectedRows >= 1) {
            resposne.json({
                code: 200,
                msg: '注册成功',
                data: results[0],
            })
        } else {
            resposne.json({
                code: 201,
                msg: '注册失败'
            })
        }
    })

})

// 图书图片上传
router.post('/photouploadurl', upload.single('file'), (request, resposne) => {
    const file = request.file
    file.url = `http://localhost:5001/public/upload/${file.filename}`
    resposne.json(file.url)
})

// 分享图书
router.post('/sharebook', (request, resposne) => {
    let sql = 'insert into book(`username`,`bookphoto`,`bookname`,`bookthink`,`bookrate`,`booktype`,`booktime`,`createtime`)values(?,?,?,?,?,?,?,?)'
    let params = [
        request.body.username,
        request.body.bookphoto,
        request.body.bookname,
        request.body.bookthink,
        request.body.bookrate,
        request.body.booktype,
        request.body.booktime,
        moment().format('YYYY-MM-DD HH:mm:ss')
    ]
    mysql.query(sql, params, (err, results) => {
        if (err) return console.log(err.message)
        if (results && results.affectedRows >= 1) {
            resposne.json({
                code: 200,
                msg: '分享成功',
            })
        } else {
            resposne.json({
                code: 201,
                msg: '分享失败'
            })
        }
    })

})

// 分享书单
router.post('/sharelist', (request, resposne) => {
    let sql = 'insert into list(`username`,`title`,`booklist`,`createtime`)values(?,?,?,?)'
    let params = [
        request.body.username,
        request.body.title,
        request.body.booklist,
        moment().format('YYYY-MM-DD HH:mm:ss')
    ]
    mysql.query(sql, params, (err, results) => {
        if (err) return console.log(err.message)
        if (results && results.affectedRows >= 1) {
            resposne.json({
                code: 200,
                msg: '分享成功',
            })
        } else {
            resposne.json({
                code: 201,
                msg: '分享失败'
            })
        }
    })
})

// 查询图书
router.get('/getbooks', (request, resposne) => {
    let sql = 'select * from book'
    mysql.query(sql, (err, results) => {
        if (err) return console.log(err.message)
        if (results && results.length >= 1) {
            resposne.json({
                code: 200,
                msg: '查询成功',
                data: results
            })
        } else {
            resposne.json({
                code: 201,
                msg: '查询失败'
            })
        }
    })

})

// 查询书单
router.get('/getlist', (request, resposne) => {
    let sql = 'select * from list'
    mysql.query(sql, (err, results) => {
        if (err) return console.log(err.message)
        if (results && results.length >= 1) {
            resposne.json({
                code: 200,
                msg: '查询成功',
                data: results
            })
        } else {
            resposne.json({
                code: 201,
                msg: '查询失败'
            })
        }
    })

})

// 查询图书详情
router.post('/getbooksdetail', (request, resposne) => {
    let sql = 'select * from book where id=?'
    let params = [
        request.body.id
    ]
    mysql.query(sql, params, (err, results) => {
        if (err) return console.log(err.message)
        if (results && results.length >= 1) {
            resposne.json({
                code: 200,
                msg: '查询成功',
                data: results
            })
        } else {
            resposne.json({
                code: 201,
                msg: '查询失败'
            })
        }
    })

})

// 查询书单详情
router.post('/getlistdetail', (request, resposne) => {
    let sql = 'select * from list where id=?'
    let params = [
        request.body.id
    ]
    mysql.query(sql, params, (err, results) => {
        if (err) return console.log(err.message)
        if (results && results.length >= 1) {
            resposne.json({
                code: 200,
                msg: '查询成功',
                data: results
            })
        } else {
            resposne.json({
                code: 201,
                msg: '查询失败'
            })
        }
    })

})
module.exports = router