<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
</head>
<script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
<body>
  <script>

   
  
  $.ajax({
      post: 'get',
      url: "http://api.data.go.kr/openapi/tn_pubr_public_trdit_mrkt_api?serviceKey=2wnq2GRmfQuqU%2FcTKjoF6Ezy4JTOIdJ%2BvIhFw35DKWd%2Bbtm2Ugu2xgAJWccPB7VknG1pt%2BKu%2BmLvSAl3NUy7%2Bw%3D%3D&pageNo=0&numOfRows=100&type=json",
      dataType: 'json',
      success: function(result){
           console.log(result);
      }
  });
  
  </script>
</body>
</html>