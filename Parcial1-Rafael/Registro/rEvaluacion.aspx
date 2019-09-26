<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="rEvaluacion.aspx.cs" Inherits="Parcial1_Rafael.Registro.rEvaluacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <br>
    <div class="form-row justify-content-center">
        <aside class="col-sm-6">

                <article class="card-body">
                    <form>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label3" runat="server" Text="Id"></asp:Label>
                                    <asp:Button class="btn btn-info btn-sm" ID="BuscarButton" runat="server" Text="Buscar" />
                                    <asp:TextBox class="form-control" ID="IdTextBox" Text="0" type="number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label10" runat="server" Text="Fecha"></asp:Label>
                                    <asp:TextBox class="form-control" ID="fechaTextBox" type="date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                                                    <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label5" runat="server" Text="Estudiante"></asp:Label>
                                    <asp:TextBox class="form-control" ID="EstudianteTextBox" placeholder=""  runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                            <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label1" runat="server" Text="Categoria"></asp:Label>
                                    <asp:TextBox class="form-control" ID="CategoriaTextBox" placeholder="0" type="number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label4" runat="server" Text="Valor"></asp:Label>
                                    <asp:TextBox class="form-control" ID="ValorTextBox" placeholder="0" type="number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                                                <div class="col-md-6 col-md-offset-3">
                            <div class="container">
                                <div class="form-group">
                                    <asp:Label ID="Label2" runat="server" Text="Logrado"></asp:Label>
                                    <asp:TextBox class="form-control" ID="LogradoTextBox" placeholder="0" type="number" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <asp:GridView ID="DetalleGridView" runat="server">
                            <Columns>
                                <asp:BoundField HeaderText="Categoria" />
                                <asp:BoundField HeaderText="Valor" />
                                <asp:BoundField HeaderText="Logrado" />
                                <asp:BoundField HeaderText="Perdido" />
                            </Columns>

                        </asp:GridView>


                        <div class="panel-footer">
                            <div class="text-center">
                                <div class="form-group" style="display: inline-block">
                                    <asp:Button class="btn btn-primary btn-sm" ID="nuevoButton" runat="server" Text="Nuevo" />
                                    <asp:Button class="btn btn-success btn-sm" ID="guardarButton" runat="server" Text="Guardar" />
                                    <asp:Button class="btn btn-danger btn-sm" ID="eliminarutton" runat="server" Text="Eliminar" />
                                </div>
                            </div>
                        </div>

                    </form>
                </article>
        </aside>
    </div>
    <br>
</asp:Content>

