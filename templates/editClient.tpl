{include file="header.tpl"}

<div class= 'content'>
    <form action='editClient/{$clients['id_cliente']}' method='POST'>
        <div class='mb-3'>
            <label for='exampleInputEmail1' class='form-label'>Nombre y Apellido</label>
            <input type='text' class='form-control' id='exampleInputNombre' aria-describedby='emailHelp' name='nameEdit' value="{$clients['nombre_apellido']}">
        <div id='emailHelp' class='form-text'></div>
        </div>
        <div class='mb-3'>
            <label for='exampleInputEmail1' class='form-label'>DNI</label>
            <input type='number' class='form-control' id='exampleInputDni' aria-describedby='emailHelp' name='dniEdit' value="{$clients['dni']}">
        <div id='emailHelp' class='form-text'></div>
        </div>
        <div class='mb-3'>
            <label for='exampleInputEmail1' class='form-label'>Numero de Cuenta</label>
            <input type='number' class='form-control' id='exampleInputDni' aria-describedby='emailHelp' name='account_idEdit' value="{$clients['num_cuenta']}">
        <div id='emailHelp' class='form-text'></div>
        </div>
        <div class='mb-3'>
            <label for='exampleInputEmail1' class='form-label'>Direccion</label>
            <input type='text' class='form-control' id='exampleInputDireccion' aria-describedby='emailHelp' name='adressEdit' value="{$clients['direccion']}">
        <div id='emailHelp' class='form-text'></div>
        </div>
        <div class='mb-3'>
            <label for='exampleInputEmail1' class='form-label'>Fecha Nacimiento</label>
            <input type='date' class='form-control' id='exampleInputDate' aria-describedby='emailHelp' name='dateEdit' value="{$clients['fecha_nacimiento']}">
        <div id='emailHelp' class='form-text'></div>
            <input type="hidden" value="{$clients['id_cliente']}" name="id_cliente">
            <button type='submit' class='btn btn-primary'>Editar</button>
    </form>
</div>