const express = require('express');
const app = express()
const port = 3000

app.get('/', (req,res) => {
    res.json(
        {
            message: 'My name is Kiari Lewis',
            timestamp: Date.now(),
        })
})

app.listen(port, () => {
    console.log('Server is running on port ${port}');
});
