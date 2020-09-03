<!--#Include File="../../Desafio/conexao/conexao.asp"-->
<%
	dim Conexao, rs
	call openDB()
	
		SQL_Query = Empty
		SQL_Query = "SELECT *  "
		SQL_Query = SQL_Query & " FROM motoristas "
		SQL_Query = SQL_Query & " WHERE status=0 "		
		SQL_Query = SQL_Query & " ORDER BY nome ASC"
		
		set rs = nothing
		set rs = Conexao.execute(SQL_Query)
%>
	<option value="" selected>Selecione Um Motorista</option>
<%
		if not rs.EOF then
			while not rs.EOF	
%>
				<option value="<%=rs("idMot")%>"><%=rs("nome")%></option>
<%
				rs.MoveNext
				
			wend
		else
%>
			<option value="0">Nenhum registro encontrado</option>
<%		end if 
%>