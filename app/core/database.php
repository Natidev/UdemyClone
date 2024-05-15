<?php
class Database
{
    private function connect()
    {
        $str = DBDRIVER .":hostname=" . DBHOST . ";dbname=".DBNAME;
        $conn = new PDO($str, DBUSER, DBPASS);

        return $conn;
    }
    public function query($query, $data = [], $type = 'object')
    {
        $conn  = $this->connect();
        $stm = $conn->prepare($query);
        if ($stm) {
            $check = $stm->execute($data);
            if ($check) {
                if ($type != 'object') {
                    $type = PDO::FETCH_ASSOC;
                } else {
                    $type = PDO::FETCH_OBJ;
                }
                $result = $stm->fetchAll($type);

                if (is_array($result) && count($result) > 0) {
                    return $result;
                }
            }
        }
        return false;
    }
    public function create_tables()
    {
        //users table
        $query = "
        	CREATE TABLE IF NOT EXISTS `users` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `email` varchar(100) NOT NULL,
            `password` varchar(255) NOT NULL,
            `firstname` varchar(30) NOT NULL,
            `lastname` varchar(30) NOT NULL,
            `role` varchar(20) NOT NULL,
            `date` date DEFAULT NULL,
            PRIMARY KEY (`id`),
            KEY `email` (`email`),
            KEY `firstname` (`firstname`),
            KEY `lastname` (`lastname`)
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
        ";
        $this->query($query);
    }
}
