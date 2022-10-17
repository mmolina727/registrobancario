{include file= "header.tpl"}
        <div class='content-list'>
            <h1>Listado de cuentas</h1>
            <ul class='list-group'>
                     {foreach from=$accounts item=account}                         
                            <li class="list-group-item"><b>Tipo de cuenta: </b>{$account['tipo_cuenta']} <b>Moneda: </b>{$account['moneda']}</li>
                            <li>Item: {$account['id_cuenta']}</li>
                            {if isset($smarty.session.IS_LOGGED)}
                            <li><a href="editAccount/{$account['id_cuenta']}" type="button" class="btn btn-primary ml-auto">Editar</a></li>
                            <li><a href="deleteAccount/{$account['id_cuenta']}" type="button" class="btn btn-danger ml-auto">Borrar</a></li>
                            {/if}
                            <li><a href="clientsByAccount/{$account['tipo_cuenta']}" type="button" class="btn btn-primary ml-auto">{$account['tipo_cuenta']}</a></li>
                        {/foreach} 
            </ul>
        </div>
        {if isset($smarty.session.IS_LOGGED)}
        {include file= "formAccount.tpl"}
        {/if}
    </body>
    </html>