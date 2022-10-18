{include file= "header.tpl"}
    <div class="content">
    <h1>Listado de cuentas</h1>
        <div class='content-list'>
            <div class="list">
                <ul>
                    <li>Tipo de cuenta</li>
                    <li>Moneda</li>
                    <li>Item</li>
                    <li></li>
                    {if isset($smarty.session.IS_LOGGED)}
                    <li></li>
                    <li></li>
                    {/if}    
                </ul>
            </div>
            <div class="data-list">
                     {foreach from=$accounts item=account}
                        <ul class='list-group'>                         
                            <li>{$account['tipo_cuenta']}</li>
                            <li>{$account['moneda']}</li>
                            <li>{$account['id_cuenta']}</li>
                            {if isset($smarty.session.IS_LOGGED)}
                            <li><a href="editAccount/{$account['id_cuenta']}" type="button" class="btn btn-primary ml-auto">Editar</a></li>
                            <li><a href="deleteAccount/{$account['id_cuenta']}" type="button" class="btn btn-danger ml-auto">Borrar</a></li>
                            {/if}
                            <li><a href="clientsByAccount/{$account['tipo_cuenta']}" type="button" class="btn btn-primary ml-auto">{$account['tipo_cuenta']}</a></li>
                        </ul>
                        {/foreach}
            </div>            
        </div>
        {if isset($smarty.session.IS_LOGGED)}
        {include file= "formAccount.tpl"}
        {/if}
    </div>    
    </body>
    </html>