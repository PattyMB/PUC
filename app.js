var express = require('express');

var app = express();

app.get('/', (req, res)=>{
    res.send('Hello GitlabCI')
} );

app.listen(3000, ()=>{
    console.log('Aplicação rondando na porta 3000');
})