<div class='content'>
            <h1>Formulario</h1>
        <form action='add' method='POST'>
            <div class='mb-3'>
                <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="moneda">
                    <option selected>Moneda</option>
                    <option value="Pesos">Pesos</option>
                    <option value="Dolares">Dolares</option>
                    <option value="Euros">Euros</option>
                </select>
            </div>
            <div class='mb-3'>
                <select class="form-select form-select-sm" aria-label=".form-select-sm example" name="tipo_cuenta">
                    <option selected>Tipo de cuenta</option>
                    <option value="Caja de ahorro">Caja de ahorro</option>
                    <option value="Cuenta corriente">Cuenta corriente</option>
                    <option value="Caja de ahorro especial">Caja de ahorro especial</option>
                    <option value="Cuenta sueldo">Cuenta sueldo</option>
                </select>
            </div>
            <button type='submit' class='btn btn-primary'>Dar de alta</button>
        </form>
        </div>