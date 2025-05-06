<!DOCTYPE html>
<html>
<head>
    <title>NGO Programmes</title>
</head>
<body>

    <h1>Connected to ngo_data!</h1>
    <h2>List of Current Programmes:</h2>

    <?php
    $servername = "localhost";
    $username = "root";
    $password = ""; // Use your actual root password if you have one for this instance
    $port = 3306;
    $dbname = "ngo_data";
    $socket = "C:/xampp/mysql/mysql.sock"; // Keep this

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname, $port, $socket);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    echo "<ol>"; // Start an ordered (numbered) list
    $sql = "SELECT programme_name FROM programmes";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Output data of each row
        while($row = $result->fetch_assoc()) {
            echo "<li>" . htmlspecialchars($row["programme_name"]) . "</li>";
        }
    } else {
        echo "<li>No programmes found in ngo_data</li>";
    }
    echo "</ol>"; // End the ordered list

    $conn->close();
    ?>

</body>
</html>