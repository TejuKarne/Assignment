<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Todo List</title>
  <link rel="stylesheet" href="css/font-awesome.min.css" />
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/style.css" />
</head>

<body>
  <header class="bg-dark mb-3">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <nav class="navbar justify-content-between">
            <a class="navbar-brand">Todo List</a>
            <form class="form-inline">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"
                id="searchtextbox" />
            </form>
          </nav>
        </div>
      </div>
    </div>
  </header>
  <section class="todo-outer">
    <div class="container">
      <div class="row justify-content-md-center">
        <div class="col-sm-12 col-md-8">
          <h1>Welcome in Todo List Application</h1>
          <div class="todo-inner">
            <div class="form-row">
              <div class="col-8 mr-sm-2">
                  <label for="start">Start date:</label>

                    <input type="date" id="Date" name="trip-start"  >

                  
                <input type="text" class="form-control" placeholder="Enter your task" id="addtaskinput" />
                <input type="hidden" id="saveindex">
              </div>
              <button type="button" class="btn btn-success mr-sm-2" id="addtaskbtn">
                Add Task
              </button>
              <button type="button" class="btn btn-success mr-sm-2" id="savetaskbtn" style="display: none;">
                Save Task
              </button>
              <button type="button" id="deleteallbtn" class="btn btn-danger">
                Delete All
              </button>
                
                
                
            </div>
            <div class="to-do-output">
              <table class="table table-striped mt-3 mb-0" id="addedtasklist">
                
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <script src="js/main.js"></script>
  <script>
      
      
      var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                today = mm + '/' + dd + '/' + yyyy;
               // alert(today);
                document.getElementById("Date1").value= today.toDateString();
      
      
      </script>
      
      
      
</body>

</html>