{include file= "header.tpl"}
        <div class='content-list'>
            <h1>Listado de clientes</h1>
            <ul class='list-group'>
                     {foreach from=$clients item=client}                         
                            <li class="list-group-item"><b>Nombre y apellido: </b>{$client['nombre_apellido']} <b>Dni: </b>{$client['dni']} <b>Direccion: </b>{$client['direccion']} <b>Fecha de Nacimiento: </b>{$client['fecha_nacimiento']} <b>Saldo: $</b>{$client['saldo']} <b>Ultimo movimiento: </b>{$client['ultimo_movimiento']} <b>Numero de cuenta: </b>{$client['num_cuenta']}</li>
                            <li>Item: {$client['id_cuenta']}</li>
                            <li><a href="detalle/{$client['id_cuenta']}" type="button" class="btn btn-primary ml-auto">Ver detalle</a>
                            
                            {if isset($smarty.session.IS_LOGGED)}
                            <a href="editar/{$client['id_cliente']}" type="button" class="btn btn-primary ml-auto">Editar</a>
                            <a href="delete/{$client['id_cliente']}" type="button" class="btn btn-danger ml-auto">Borrar</a></li>
                            {/if}
                     {/foreach} 
            </ul>
        </div>
        {if isset($smarty.session.IS_LOGGED)}
        {include file= "formClient.tpl"}
        {/if}
    </body>
    </html>