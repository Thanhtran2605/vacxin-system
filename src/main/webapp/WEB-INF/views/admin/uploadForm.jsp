<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Upload Image</title>
</head>
<body>
    <h2>Upload Image</h2>
    <form method="POST" enctype="multipart/form-data" action="uploadImage">
        <label for="imageFile">Choose an image to upload:</label>
        <input type="file" id="imageFile" name="imageFile">
        <br/><br/>
        <input type="submit" value="Upload">
    </form>
</body>
</html>