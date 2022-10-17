{include file="header.tpl"}

<div class='content'>
            <h1>Formulario</h1>
        <form action='updatedAccount/{$accounts['id_cuenta']}' method='POST'>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>Tipo de cuenta</label>
                <input type='text' class='form-control' id='exampleInputSaldo' aria-describedby='emailHelp' name='cuentaEdit' value="{$accounts['tipo_cuenta']}">
                <div id='emailHelp' class='form-text'></div>
            </div>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>Moneda</label>
                <input type='text' class='form-control' id='exampleInputMove' aria-describedby='emailHelp' name='coinEdit' value="{$accounts['moneda']}">
                <div id='emailHelp' class='form-text'></div>
            </div>
            <input type="hidden" name="idAccountEdit" value="{$accounts['id_cuenta']}">
            <button type='submit' class='btn btn-primary'>Editar</button>
        </form>
        </div>