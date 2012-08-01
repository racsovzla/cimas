<?php

$config = array(
    array(
        'field' => 'nombre',
        'label' => 'Nombre',
        'rules' => 'required'
    ),
    array(
        'field' => 'cedula',
        'label' => 'Cedula',
        'rules' => 'required|integer'
    ),
    array(
        'field' => 'correo',
        'label' => 'Correo',
        'rules' => 'required|valid_email'
    ),
);
?>
