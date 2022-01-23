# File-upload-on-web
This is a dynamic web project developed using Servlet, JSP and hibernate(database storage interface ORM)
1. The hibernate provides the quaries and Object relational model to store and delete data from database.
2. This project lists the image data from the database.
3. The database stores the image information and path where image file is stored in filesystem.
4. There is a option to load delete and update the image data from and to the database.
This application has functionality to upload the data to web, 
locally on uploading image file it will just be copying data to someeother location whose information will be stored in database.
There is a View Page line which will view the current status of database and upload image option to upload the image to filesystem.
  List page:  provides an option to Update , View image and delete the image options
  Upload : Option will upload the image data in the form of hibernate entity and DAO operations
  ViewImage: This will view the image with image informations.
  DeleteImage: will delete the image from database as well as from web server filesystem.
  By default the index page will be displayed.
