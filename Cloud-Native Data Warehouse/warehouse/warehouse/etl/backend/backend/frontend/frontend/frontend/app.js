fetch('http://localhost:8000/revenue-by-category')
.then(res => res.json())
.then(data => {
const ul = document.getElementById('data');
data.forEach(item => {
const li = document.createElement('li');
li.textContent = `${item.category}: ${item.revenue}`;
ul.appendChild(li);
});
});