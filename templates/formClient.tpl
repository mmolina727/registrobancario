<div>
            <h1>Formulario</h1>
        <form action='added' method='POST'>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>Nombre y Apellido</label>
                <input type='text' class='form-control' id='exampleInputNombre' aria-describedby='emailHelp' name='name'>
                <div id='emailHelp' class='form-text'></div>
            </div>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>DNI</label>
                <input type='number' class='form-control' id='exampleInputDni' aria-describedby='emailHelp' name='dni'>
                <div id='emailHelp' class='form-text'></div>
            </div>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>Item de cuenta</label>
                <input type='number' class='form-control' id='exampleInputDni' aria-describedby='emailHelp' name='account_id'>
                <div id='emailHelp' class='form-text'></div>
            </div>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>Direccion</label>
                <input type='text' class='form-control' id='exampleInputDireccion' aria-describedby='emailHelp' name='adress'>
                <div id='emailHelp' class='form-text'></div>
            </div>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>Fecha Nacimiento</label>
                <input type='date' class='form-control' id='exampleInputDate' aria-describedby='emailHelp' name='date'>
                <div id='emailHelp' class='form-text'></div>
            </div>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>Saldo</label>
                <input type='number' class='form-control' id='exampleInputDate' aria-describedby='emailHelp' name='saldo'>
                <div id='emailHelp' class='form-text'></div>
            </div>
            <div class='mb-3'>
                <label for='exampleInputEmail1' class='form-label'>Ultimo movimiento</label>
                <input type='date' class='form-control' id='exampleInputDate' aria-describedby='emailHelp' name='date_move'>
                <div id='emailHelp' class='form-text'></div>
            </div>
            <div class='mb-3'>
                <label for='exampleInputPassword1' class='form-label'>Numero de cuenta</label>
                <input type='number' class='form-control' id='exampleInputPassword1' name='account'>
            </div>
            <button type='submit' class='btn btn-primary'>Dar de alta</button>
        </form>
        </div>