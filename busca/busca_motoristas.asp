<!--#Include File="../../Desafio/conexao/conexao.asp"-->
<!--#Include File="../../Desafio/utilidades/JSON.asp"-->

<%
	
	dim Conexao, Rs
	
	'Abre conexão
	call openDb()
	
	SQL_Query = Empty
	SQL_Query = "SELECT *, idMot as id, dtNiv as data, carModel as car "
	SQL_Query = SQL_Query & "FROM motoristas order by nome asc"
	
	'response.write(SQL_Query)
	
    'Executando string SQL_Query
	Set Rs = Conexao.Execute(SQL_Query)
	Response.Write((new JSON).toJSON("json", Rs, false))

	'Fecha conexão

	Call FechaDB()

%>