{include file="header.tpl"}
<div class='content'>
            <h1>Listado de cuentas</h1>
            <ul class='list-group'>
                     {foreach from= $clients  item=client}
                        <li class="list-group-item">{$client['nombre_apellido']} -{$client['dni']}-{$client['direccion']}-{$client['fecha_nacimiento']}-{$client['tipo_cuenta']}-{$client['num_cuenta']} - {$client['moneda']}- {$client['saldo']}- {$client['ultimo_movimiento']}</li>
                     {/foreach}  
            </ul>
</div>            