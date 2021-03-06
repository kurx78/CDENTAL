﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Configuration;

namespace WSCDental
{
    /// <summary>
    /// Summary description for CDental
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class CDental : System.Web.Services.WebService
    {
        public static string strcadena = ConfigurationManager.ConnectionStrings["CDental"].ToString();

        #region Canton

        [WebMethod]
        public List<ElementosBD.Tablas.Canton> CantonSeleccionar(ElementosBD.Tablas.Canton Obj)
        {
            ElementosBD.Procedimientos.Canton ejecuta = new ElementosBD.Procedimientos.Canton();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        #endregion

        #region Cita

        [WebMethod]
        public List<ElementosBD.Tablas.Cita> CitaSeleccionar(ElementosBD.Tablas.Cita Obj)
        {
            ElementosBD.Procedimientos.Cita ejecuta = new ElementosBD.Procedimientos.Cita();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool CitaInsertar(ElementosBD.Tablas.Cita Obj)
        {
            ElementosBD.Procedimientos.Cita ejecuta = new ElementosBD.Procedimientos.Cita();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool CitaModificar(ElementosBD.Tablas.Cita Obj)
        {
            ElementosBD.Procedimientos.Cita ejecuta = new ElementosBD.Procedimientos.Cita();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool CitaEliminar(ElementosBD.Tablas.Cita Obj)
        {
            ElementosBD.Procedimientos.Cita ejecuta = new ElementosBD.Procedimientos.Cita();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region Cliente

        [WebMethod]
        public List<ElementosBD.Tablas.Cliente> ClienteSeleccionar(ElementosBD.Tablas.Cliente Obj)
        {
            ElementosBD.Procedimientos.Cliente ejecuta = new ElementosBD.Procedimientos.Cliente();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool ClienteInsertar(ElementosBD.Tablas.Cliente Obj)
        {
            ElementosBD.Procedimientos.Cliente ejecuta = new ElementosBD.Procedimientos.Cliente();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool ClienteModificar(ElementosBD.Tablas.Cliente Obj)
        {
            ElementosBD.Procedimientos.Cliente ejecuta = new ElementosBD.Procedimientos.Cliente();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool ClienteEliminar(ElementosBD.Tablas.Cliente Obj)
        {
            ElementosBD.Procedimientos.Cliente ejecuta = new ElementosBD.Procedimientos.Cliente();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region Cuentas

        [WebMethod]
        public List<ElementosBD.Tablas.Cuentas> CuentasSeleccionar(ElementosBD.Tablas.Cuentas Obj)
        {
            ElementosBD.Procedimientos.Cuentas ejecuta = new ElementosBD.Procedimientos.Cuentas();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool CuentasInsertar(ElementosBD.Tablas.Cuentas Obj)
        {
            ElementosBD.Procedimientos.Cuentas ejecuta = new ElementosBD.Procedimientos.Cuentas();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool CuentasModificar(ElementosBD.Tablas.Cuentas Obj)
        {
            ElementosBD.Procedimientos.Cuentas ejecuta = new ElementosBD.Procedimientos.Cuentas();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool CuentasEliminar(ElementosBD.Tablas.Cuentas Obj)
        {
            ElementosBD.Procedimientos.Cuentas ejecuta = new ElementosBD.Procedimientos.Cuentas();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region CuentasHistorico

        [WebMethod]
        public bool CuentasHistoricoInsertar(ElementosBD.Tablas.CuentasHistorico Obj)
        {
            ElementosBD.Procedimientos.CuentasHistorico ejecuta = new ElementosBD.Procedimientos.CuentasHistorico();
            return ejecuta.Insertar(strcadena, Obj);
        }

        #endregion

        #region DireccionesCliente

        [WebMethod]
        public List<ElementosBD.Tablas.DireccionesCliente> DireccionesClienteSeleccionar(ElementosBD.Tablas.DireccionesCliente Obj)
        {
            ElementosBD.Procedimientos.DireccionesCliente ejecuta = new ElementosBD.Procedimientos.DireccionesCliente();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool DireccionesClienteInsertar(ElementosBD.Tablas.DireccionesCliente Obj)
        {
            ElementosBD.Procedimientos.DireccionesCliente ejecuta = new ElementosBD.Procedimientos.DireccionesCliente();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool DireccionesClienteModificar(ElementosBD.Tablas.DireccionesCliente Obj)
        {
            ElementosBD.Procedimientos.DireccionesCliente ejecuta = new ElementosBD.Procedimientos.DireccionesCliente();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool DireccionesClienteEliminar(ElementosBD.Tablas.DireccionesCliente Obj)
        {
            ElementosBD.Procedimientos.DireccionesCliente ejecuta = new ElementosBD.Procedimientos.DireccionesCliente();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region Distrito

        [WebMethod]
        public List<ElementosBD.Tablas.Distrito> DistritoSeleccionar(ElementosBD.Tablas.Distrito Obj)
        {
            ElementosBD.Procedimientos.Distrito ejecuta = new ElementosBD.Procedimientos.Distrito();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        #endregion

        #region ExamenDetalle

        [WebMethod]
        public List<ElementosBD.Tablas.ExamenDetalle> ExamenDetalleSeleccionar(ElementosBD.Tablas.ExamenDetalle Obj)
        {
            ElementosBD.Procedimientos.ExamenDetalle ejecuta = new ElementosBD.Procedimientos.ExamenDetalle();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExamenDetalleInsertar(ElementosBD.Tablas.ExamenDetalle Obj)
        {
            ElementosBD.Procedimientos.ExamenDetalle ejecuta = new ElementosBD.Procedimientos.ExamenDetalle();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExamenDetalleModificar(ElementosBD.Tablas.ExamenDetalle Obj)
        {
            ElementosBD.Procedimientos.ExamenDetalle ejecuta = new ElementosBD.Procedimientos.ExamenDetalle();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExamenDetalleEliminar(ElementosBD.Tablas.ExamenDetalle Obj)
        {
            ElementosBD.Procedimientos.ExamenDetalle ejecuta = new ElementosBD.Procedimientos.ExamenDetalle();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region ExamenEncabezado

        [WebMethod]
        public List<ElementosBD.Tablas.ExamenEncabezado> ExamenEncabezadoSeleccionar(ElementosBD.Tablas.ExamenEncabezado Obj)
        {
            ElementosBD.Procedimientos.ExamenEncabezado ejecuta = new ElementosBD.Procedimientos.ExamenEncabezado();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExamenEncabezadoInsertar(ElementosBD.Tablas.ExamenEncabezado Obj)
        {
            ElementosBD.Procedimientos.ExamenEncabezado ejecuta = new ElementosBD.Procedimientos.ExamenEncabezado();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExamenEncabezadoModificar(ElementosBD.Tablas.ExamenEncabezado Obj)
        {
            ElementosBD.Procedimientos.ExamenEncabezado ejecuta = new ElementosBD.Procedimientos.ExamenEncabezado();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExamenEncabezadoEliminar(ElementosBD.Tablas.ExamenEncabezado Obj)
        {
            ElementosBD.Procedimientos.ExamenEncabezado ejecuta = new ElementosBD.Procedimientos.ExamenEncabezado();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region Expediente

        [WebMethod]
        public List<ElementosBD.Tablas.Expediente> ExpedienteSeleccionar(ElementosBD.Tablas.Expediente Obj)
        {
            ElementosBD.Procedimientos.Expediente ejecuta = new ElementosBD.Procedimientos.Expediente();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExpedienteInsertar(ElementosBD.Tablas.Expediente Obj)
        {
            ElementosBD.Procedimientos.Expediente ejecuta = new ElementosBD.Procedimientos.Expediente();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExpedienteModificar(ElementosBD.Tablas.Expediente Obj)
        {
            ElementosBD.Procedimientos.Expediente ejecuta = new ElementosBD.Procedimientos.Expediente();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExpedienteEliminar(ElementosBD.Tablas.Expediente Obj)
        {
            ElementosBD.Procedimientos.Expediente ejecuta = new ElementosBD.Procedimientos.Expediente();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region ExpedienteOpcional

        [WebMethod]
        public List<ElementosBD.Tablas.ExpedienteOpcional> ExpedienteOpcionalSeleccionar(ElementosBD.Tablas.ExpedienteOpcional Obj)
        {
            ElementosBD.Procedimientos.ExpedienteOpcional ejecuta = new ElementosBD.Procedimientos.ExpedienteOpcional();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExpedienteOpcionalInsertar(ElementosBD.Tablas.ExpedienteOpcional Obj)
        {
            ElementosBD.Procedimientos.ExpedienteOpcional ejecuta = new ElementosBD.Procedimientos.ExpedienteOpcional();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExpedienteOpcionalModificar(ElementosBD.Tablas.ExpedienteOpcional Obj)
        {
            ElementosBD.Procedimientos.ExpedienteOpcional ejecuta = new ElementosBD.Procedimientos.ExpedienteOpcional();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool ExpedienteOpcionalEliminar(ElementosBD.Tablas.ExpedienteOpcional Obj)
        {
            ElementosBD.Procedimientos.ExpedienteOpcional ejecuta = new ElementosBD.Procedimientos.ExpedienteOpcional();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region Pais

        [WebMethod]
        public List<ElementosBD.Tablas.Pais> PaisSeleccionar(ElementosBD.Tablas.Pais Obj)
        {
            ElementosBD.Procedimientos.Pais ejecuta = new ElementosBD.Procedimientos.Pais();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        #endregion

        #region ParentescoCliente

        [WebMethod]
        public List<ElementosBD.Tablas.ParentescoCliente> ParentescoClienteSeleccionar(ElementosBD.Tablas.ParentescoCliente Obj)
        {
            ElementosBD.Procedimientos.ParentescoCliente ejecuta = new ElementosBD.Procedimientos.ParentescoCliente();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool ParentescoClienteInsertar(ElementosBD.Tablas.ParentescoCliente Obj)
        {
            ElementosBD.Procedimientos.ParentescoCliente ejecuta = new ElementosBD.Procedimientos.ParentescoCliente();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool ParentescoClienteModificar(ElementosBD.Tablas.ParentescoCliente Obj)
        {
            ElementosBD.Procedimientos.ParentescoCliente ejecuta = new ElementosBD.Procedimientos.ParentescoCliente();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool ParentescoClienteEliminar(ElementosBD.Tablas.ParentescoCliente Obj)
        {
            ElementosBD.Procedimientos.ParentescoCliente ejecuta = new ElementosBD.Procedimientos.ParentescoCliente();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region Piezas

        [WebMethod]
        public List<ElementosBD.Tablas.Piezas> PiezasSeleccionar(ElementosBD.Tablas.Piezas Obj)
        {
            ElementosBD.Procedimientos.Piezas ejecuta = new ElementosBD.Procedimientos.Piezas();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        #endregion

        #region Provincia

        [WebMethod]
        public List<ElementosBD.Tablas.Provincia> ProvinciaSeleccionar(ElementosBD.Tablas.Provincia Obj)
        {
            ElementosBD.Procedimientos.Provincia ejecuta = new ElementosBD.Procedimientos.Provincia();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        #endregion

        #region Telefonos

        [WebMethod]
        public List<ElementosBD.Tablas.Telefonos> TelefonosSeleccionar(ElementosBD.Tablas.Telefonos Obj)
        {
            ElementosBD.Procedimientos.Telefonos ejecuta = new ElementosBD.Procedimientos.Telefonos();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool TelefonosInsertar(ElementosBD.Tablas.Telefonos Obj)
        {
            ElementosBD.Procedimientos.Telefonos ejecuta = new ElementosBD.Procedimientos.Telefonos();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool TelefonosModificar(ElementosBD.Tablas.Telefonos Obj)
        {
            ElementosBD.Procedimientos.Telefonos ejecuta = new ElementosBD.Procedimientos.Telefonos();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool TelefonosEliminar(ElementosBD.Tablas.Telefonos Obj)
        {
            ElementosBD.Procedimientos.Telefonos ejecuta = new ElementosBD.Procedimientos.Telefonos();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region TipoDireccion

        [WebMethod]
        public List<ElementosBD.Tablas.TipoDireccion> TipoDireccionSeleccionar(ElementosBD.Tablas.TipoDireccion Obj)
        {
            ElementosBD.Procedimientos.TipoDireccion ejecuta = new ElementosBD.Procedimientos.TipoDireccion();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoDireccionInsertar(ElementosBD.Tablas.TipoDireccion Obj)
        {
            ElementosBD.Procedimientos.TipoDireccion ejecuta = new ElementosBD.Procedimientos.TipoDireccion();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoDireccionModificar(ElementosBD.Tablas.TipoDireccion Obj)
        {
            ElementosBD.Procedimientos.TipoDireccion ejecuta = new ElementosBD.Procedimientos.TipoDireccion();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoDireccionEliminar(ElementosBD.Tablas.TipoDireccion Obj)
        {
            ElementosBD.Procedimientos.TipoDireccion ejecuta = new ElementosBD.Procedimientos.TipoDireccion();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region TipoEstadoPieza

        [WebMethod]
        public List<ElementosBD.Tablas.TipoEstadoPieza> TipoEstadoPiezaSeleccionar(ElementosBD.Tablas.TipoEstadoPieza Obj)
        {
            ElementosBD.Procedimientos.TipoEstadoPieza ejecuta = new ElementosBD.Procedimientos.TipoEstadoPieza();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        #endregion

        #region TipoOcupacion

        [WebMethod]
        public List<ElementosBD.Tablas.TipoOcupacion> TipoOcupacionSeleccionar(ElementosBD.Tablas.TipoOcupacion Obj)
        {
            ElementosBD.Procedimientos.TipoOcupacion ejecuta = new ElementosBD.Procedimientos.TipoOcupacion();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoOcupacionInsertar(ElementosBD.Tablas.TipoOcupacion Obj)
        {
            ElementosBD.Procedimientos.TipoOcupacion ejecuta = new ElementosBD.Procedimientos.TipoOcupacion();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoOcupacionModificar(ElementosBD.Tablas.TipoOcupacion Obj)
        {
            ElementosBD.Procedimientos.TipoOcupacion ejecuta = new ElementosBD.Procedimientos.TipoOcupacion();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoOcupacionEliminar(ElementosBD.Tablas.TipoOcupacion Obj)
        {
            ElementosBD.Procedimientos.TipoOcupacion ejecuta = new ElementosBD.Procedimientos.TipoOcupacion();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region TipoParentesco

        [WebMethod]
        public List<ElementosBD.Tablas.TipoParentesco> TipoParentescoSeleccionar(ElementosBD.Tablas.TipoParentesco Obj)
        {
            ElementosBD.Procedimientos.TipoParentesco ejecuta = new ElementosBD.Procedimientos.TipoParentesco();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoParentescoInsertar(ElementosBD.Tablas.TipoParentesco Obj)
        {
            ElementosBD.Procedimientos.TipoParentesco ejecuta = new ElementosBD.Procedimientos.TipoParentesco();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoParentescoModificar(ElementosBD.Tablas.TipoParentesco Obj)
        {
            ElementosBD.Procedimientos.TipoParentesco ejecuta = new ElementosBD.Procedimientos.TipoParentesco();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoParentescoEliminar(ElementosBD.Tablas.TipoParentesco Obj)
        {
            ElementosBD.Procedimientos.TipoParentesco ejecuta = new ElementosBD.Procedimientos.TipoParentesco();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region TipoTelefono

        [WebMethod]
        public List<ElementosBD.Tablas.TipoTelefono> TipoTelefonoSeleccionar(ElementosBD.Tablas.TipoTelefono Obj)
        {
            ElementosBD.Procedimientos.TipoTelefono ejecuta = new ElementosBD.Procedimientos.TipoTelefono();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoTelefonoInsertar(ElementosBD.Tablas.TipoTelefono Obj)
        {
            ElementosBD.Procedimientos.TipoTelefono ejecuta = new ElementosBD.Procedimientos.TipoTelefono();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoTelefonoModificar(ElementosBD.Tablas.TipoTelefono Obj)
        {
            ElementosBD.Procedimientos.TipoTelefono ejecuta = new ElementosBD.Procedimientos.TipoTelefono();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool TipoTelefonoEliminar(ElementosBD.Tablas.TipoTelefono Obj)
        {
            ElementosBD.Procedimientos.TipoTelefono ejecuta = new ElementosBD.Procedimientos.TipoTelefono();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion

        #region Usuario

        [WebMethod]
        public List<ElementosBD.Tablas.Usuarios> UsuariosSeleccionar(ElementosBD.Tablas.Usuarios Obj)
        {
            ElementosBD.Procedimientos.Usuarios ejecuta = new ElementosBD.Procedimientos.Usuarios();
            return ejecuta.Seleccionar(strcadena, Obj);
        }

        [WebMethod]
        public bool UsuariosInsertar(ElementosBD.Tablas.Usuarios Obj)
        {
            ElementosBD.Procedimientos.Usuarios ejecuta = new ElementosBD.Procedimientos.Usuarios();
            return ejecuta.Insertar(strcadena, Obj);
        }

        [WebMethod]
        public bool UsuariosModificar(ElementosBD.Tablas.Usuarios Obj)
        {
            ElementosBD.Procedimientos.Usuarios ejecuta = new ElementosBD.Procedimientos.Usuarios();
            return ejecuta.Modificar(strcadena, Obj);
        }

        [WebMethod]
        public bool UsuariosEliminar(ElementosBD.Tablas.Usuarios Obj)
        {
            ElementosBD.Procedimientos.Usuarios ejecuta = new ElementosBD.Procedimientos.Usuarios();
            return ejecuta.Eliminar(strcadena, Obj);
        }

        #endregion
    }
}
