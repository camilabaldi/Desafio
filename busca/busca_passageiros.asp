<!--#Include File="../../Desafio/conexao/conexao.asp"-->
<!--#Include File="../../Desafio/utilidades/JSON.asp"-->

<%
	
	dim Conexao, Rs
	'Dados enviados
	'id = Request("ID")
	
	'Abre conexão
	call openDb()
	
	SQL_Query = Empty
	SQL_Query = "SELECT *, dtNiv as data "
	SQL_Query = SQL_Query & "FROM passageiros order by nome asc"
	
	'response.write(SQL_Query)
    'Executando string SQL_Query
	Set Rs = Conexao.Execute(SQL_Query)
	Response.Write((new JSON).toJSON("json", Rs, false))

	'Fecha conexão

	Call FechaDB()

%>