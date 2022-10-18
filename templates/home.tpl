{include file= "header.tpl"}
    <div class="content">
    <h1>Listado de clientes</h1>
        <div class='content-list'>
            <div class="list">
                <ul>
                    <li>Nombre y apellido</li>
                    <li>Dni</li>
                    <li>Direccion</li>
                    <li>Fecha de nacimiento</li>
                    <li>Saldo</li>
                    <li>Ultimo movimiento</li>
                    <li>Numero de cuenta</li>
                    <li>Item</li>
                    <li></li>
                    <li></li>
                    {if isset($smarty.session.IS_LOGGED)}
                    <li></li>
                    <li></li>
                    <li></li>
                    {/if}   
                </ul>
            </div>
            <div class="data-list">
                     {foreach from=$clients item=client}
                        <ul class='list-group'>                         
                            <li>{$client['nombre_apellido']}</li>
                            <li>{$client['dni']}</li>
                            <li>{$client['direccion']}</li>
                            <li>{$client['fecha_nacimiento']}</li>
                            <li>${$client['saldo']}</li>
                            <li>{$client['ultimo_movimiento']}</li>
                            <li>{$client['num_cuenta']}</li>
                            <li>{$client['id_cuenta']}</li>
                            <li><a href="detalle/{$client['id_cuenta']}" type="button" class="btn btn-primary ml-auto">Ver detalle</a></li>
                            {if isset($smarty.session.IS_LOGGED)}
                            <li><a href="editar/{$client['id_cliente']}" type="button" class="btn btn-primary ml-auto">Editar</a></li>
                            <li><a href="delete/{$client['id_cliente']}" type="button" class="btn btn-danger ml-auto">Borrar</a></li>
                            {/if}
                        </ul>    
                     {/foreach} 
            </div>
        </div>
        {if isset($smarty.session.IS_LOGGED)}
        {include file= "formClient.tpl"}
        {/if}
    </div>    
    </body>
    </html>