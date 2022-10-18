{include file= "header.tpl"}

<div class="content">
<form action="verificarLogin" method="POST">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Usuario</label>
    <input type="text" class="form-control" id="user" aria-describedby="emailHelp" name="user">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password">
  </div>
  <div>{$message}</div>
  <button type="submit" class="btn btn-primary">Login</button>
</form>
</div>