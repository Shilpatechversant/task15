<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Task 15</title>
    </head>
    <body>
        <div class="main-container">
            <section>
                <h1>Task 15</h1>
                <h6> Call that function with different Arguments </h6>
                <hr>
                <div class="col-md-12 ">
                    <cfobject name="multiplyObj" type="component" component="components.multiply">
                        <cfoutput>
                            <p>Multiplication 2 arguments using cfobject - Multiply (1,2):</p>
                            <br> #multiplyObj.multiply(1,2)# <p>Multiplication 3 arguments using cfobject - Multiply (1,2,3):</p>
                            <br> #multiplyObj.multiply(1,2,3)# <p>Multiplication 4 arguments using cfobject - Multiply (1,2,3,4):</p>
                            <br> #multiplyObj.multiply(1,2,3,4)#
                        </cfoutput>
                        <hr>
                        <p>Multiplication 2 arguments using cfinvoke - Multiply (1,2):</p>
                        <br>
                        <cfinvoke component="components.multiply" method="multiply" returnvariable="process">
                            <cfoutput>
                                <cfinvokeargument name="a" value="1">
                                <cfinvokeargument name="b" value="2">
                            </cfoutput>
                        </cfinvoke>
                        <hr>
                        <p>Multiplication 3 arguments using cfinvoke- Multiply (1,2,3):</p>
                        <br>
                        <cfinvoke component="components.multiply" method="multiply" returnvariable="process">
                            <cfoutput>
                                <cfinvokeargument name="a" value="1">
                                <cfinvokeargument name="b" value="2">
                                <cfinvokeargument name="c" value="3">
                            </cfoutput>
                        </cfinvoke>
                        <hr>
                        <p>Multiplication 4 arguments using cfinvoke- Multiply (1,2,3,4):</p>
                        <br>
                        <cfinvoke component="components.multiply" method="multiply" returnvariable="process">
                            <cfoutput>
                                <cfinvokeargument name="a" value="1">
                                <cfinvokeargument name="b" value="2">
                                <cfinvokeargument name="c" value="3">
                                <cfinvokeargument name="d" value="4">
                            </cfoutput>
                        </cfinvoke>
                        <hr>
                        <b>Using Createobject:</b>
                        <p>Multiplication 4 arguments Multiply (1,2,3,4):</p>
                        <br>
                        <cfscript> ob1=CreateObject("component","components.multiply"); ob1.multiply(1,2,3,4); </cfscript>
                </div>
           </section>    
        </div>    
    </body>
</html>
