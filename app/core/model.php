<?php
/*
Explanation:

This base model class extends the database class and provides common database operations for models.
insert: Inserts data into the specified table, only including allowed columns.
where: Retrieves records from the table that match the given criteria.
first: Retrieves the first record that matches the given criteria, ordered by ID in descending order.
*/

class Model extends Database{
    protected $table = "";
    protected $allowedCols = [];
    public function insert($data){
        if(!empty($this->allowedCols)){
            foreach($data as $key => $value){
                if(!in_array($key, $this->allowedCols)){
                    unset($data[$key]);
                }
            }
        }
        $keys = array_keys($data);
        $values = array_values($data);
        
        $query = "insert into " . $this->table;
        $query .="(".implode(",", $keys).") values (:".implode(",:" ,$keys). ")";
        
      //  $db = new Database();
        $this->query($query, $data);
    }
   
    public function where($data){
        $keys = array_keys($data);
        $query = "select * from ".$this->table." where " ;
     //   $query.= " ".implode(",", $keys)." && id = :id limit 1";
        foreach($keys as $key){
            $query .= $key . "=:" . $key . " && ";
        }
        $query = trim($query, "&& ");
       
        $res = $this->query($query, $data);

        if(is_array($res)){
            return $res;
        }
        return false;
       
        
        
        // $query = "insert into " . $this->table;
        // $query .="(".implode(",", $keys).") values (:".implode(",:" ,$keys). ")";
        
      //  $db = new Database();
        
    }
    public function first($data){
        $keys = array_keys($data);
        $query = "select * from ".$this->table." where " ;
     //   $query.= " ".implode(",", $keys)." && id = :id limit 1";
        foreach($keys as $key){
            $query .= $key . "=:" . $key . " && ";
        }
        $query = trim($query, "&& ");
        $query .= " order by id desc limit 1";
       
        $res = $this->query($query, $data);

        if(is_array($res)){
            return $res[0];
        }
        return false;
       
        
        
        // $query = "insert into " . $this->table;
        // $query .="(".implode(",", $keys).") values (:".implode(",:" ,$keys). ")";
        
      //  $db = new Database();
        
    }
}
