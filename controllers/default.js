exports.install = function () {
  ROUTE('/', viewIndex)
  ROUTE('/key', viewJson)
}

function viewIndex () {
  var self = this
  self.view('index')
}

function viewJson () {
  var self = this
  self.json({
    key: CONFIG('SECRET_KEY')
  })
}
