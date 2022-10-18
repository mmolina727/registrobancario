{include file="header.tpl"}
<div class="content">
            <h1>Listado de cuentas</h1>
            <div class="content-list">
               <div class="list">
                  <ul>
                     <li>Nombre y apellido</li>
                     <li>Dni</li>
                     <li>Direccion</li>
                     <li>Fecha de nacimiento</li>
                     <li>Tipo de cuenta</li>
                     <li>Numero de cuenta</li>
                     <li>Moneda</li>
                     <li>Saldo</li>
                     <li>Ultimo movimiento</li>
                  </ul>
               </div>
               <div class="data-list">
                     {foreach from= $clients  item=client}
                     <ul class='list-group'>
                        <li>{$client['nombre_apellido']}</li>
                        <li>{$client['dni']}</li>
                        <li>{$client['direccion']}</li>
                        <li>{$client['fecha_nacimiento']}</li>
                        <li>{$client['tipo_cuenta']}</li>
                        <li>{$client['num_cuenta']}</li>
                        <li>{$client['moneda']}</li>
                        <li>${$client['saldo']}</li>
                        <li>{$client['ultimo_movimiento']}</li>
                     </ul>
                     {/foreach}  
               </div>
            </div>
</div>            