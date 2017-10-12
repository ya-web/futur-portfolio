<?php
require_once('data/database.php');

$dsn = $config['dsn'] ;
$password = $config['password'];
$user = $config['user'] ;


try
{
$pdo = new PDO($dsn,$user,$password,array(PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));
}
catch (Exception $e)
{
       die('Erreur : ' . $e->getMessage());
}

if(!empty($_GET['s']))
{
    $selector = htmlentities($_GET['s'],ENT_HTML5);
    
    //1.elements
    $query = $pdo->prepare
    (
        'SELECT items.Id AS Id, Cathegory, Name, Subtitle, photos.Title AS Title
        FROM items
        INNER JOIN photos ON items.PhotoId = photos.Id
        WHERE photos.Vignette1 = ?'
        
    );
    $query->execute([$photosId]);
    $elements = $query->fetchAll(PDO::FETCH_ASSOC);
}



if(!empty($_GET['i']) && ctype_digit($_GET['i']) == true)
{
    $itemId=intval($_GET['i']); 

    //2.infos
    $query = $pdo->prepare
    (
        'SELECT Name, NbPersMax, Length, Width, Height, Weight, Price1D, Price2D, NbPersInst, Nbdisp, Special
        FROM items
        WHERE Id = ?'        
    );
    $query->execute([$itemId]);
    $infos = $query->fetch(PDO::FETCH_ASSOC);
   
    //3.photos
    $query = $pdo->prepare
    (
        'SELECT Title
        FROM photos
        INNER JOIN items ON photos.ItemId = items.Id
        WHERE items.Id = ?'        
    );
    $query->execute([$itemId]);
    $photos = $query->fetchAll(PDO::FETCH_ASSOC);

    //4.title
    $query = $pdo->prepare
    (
        'SELECT Title
        FROM photos
        INNER JOIN items ON photos.Id = items.PhotoId
        WHERE items.Id =?'        
    );
    $query->execute([$itemId]);
    $title = $query->fetch(PDO::FETCH_ASSOC);
}
?>