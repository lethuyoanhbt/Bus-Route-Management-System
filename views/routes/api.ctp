<?php 
$xml =new SimpleXMLElement("<?xml version=\"1.0\"?><student_info></student_info>");
array_walk_recursive($routes, array ($xml, 'addChild'));
print $xml->asXML();
?>