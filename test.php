<?php
if(isset($_POST['set_cookie'])) {
    // Tạo một mảng đối tượng trong PHP
    $userData = array("user" => "abc", "password" => "123456");

    // Chuyển đổi mảng PHP thành JSON
    $jsonObject = json_encode($userData);

    // Đặt cookie với tên 'abc' và giá trị là chuỗi JSON
    setcookie('abc', $jsonObject, time() + 3600, '/'); // Thời gian sống của cookie là 1 giờ
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Set Cookie Page</title>
</head>
<body>

<form method="post">
    <button type="submit" name="set_cookie">Set Cookie</button>
</form>

</body>
</html>
