{include file="header.tpl"}
<div class='content'>
            <h1>Listado de clientes</h1>
            <ul class='list-group'>
                     {foreach from= $clients  item=client}
                        <li class="list-group-item"><b>Nombre y apellido: </b>{$client['nombre_apellido']} <b>Dni: </b>{$client['dni']} <b>Direccion: </b>{$client['direccion']} <b>Fecha de Nacimiento: </b>{$client['fecha_nacimiento']}<b>Tipo de cuenta: </b>{$client['tipo_cuenta']} <b>Numero de cuenta: </b>{$client['num_cuenta']} <b>Saldo: $</b>{$client['saldo']} <b>Moneda: </b>{$client['moneda']} <b>Ultimo movimiento: </b>{$client['ultimo_movimiento']}</li>
                     {/foreach}  
            </ul>