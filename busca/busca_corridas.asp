<!--#Include File="../../Desafio/conexao/conexao.asp"-->
<!--#Include File="../../Desafio/utilidades/JSON.asp"-->

<%
	
	dim Conexao, Rs
	'Dados enviados
	'id = Request("ID")
	
	'Abre conexão
	call openDb()
	
	SQL_Query = Empty
	SQL_Query = "SELECT m.nome as nomemoto ,p.nome as nomepass,*"
	SQL_Query = SQL_Query & " FROM motoristas m inner join corridas c "
	SQL_Query = SQL_Query & "on m.idMot = c.idMoto "
	SQL_Query = SQL_Query & "inner join passageiros p "
	SQL_Query = SQL_Query & "on c.idPassa = p.idPass"
	
	'response.write(SQL_Query)
    'Executando string SQL_Query
	Set Rs = Conexao.Execute(SQL_Query)
	Response.Write((new JSON).toJSON("json", Rs, false))

	'Fecha conexão

	Call FechaDB()

%>