using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web.Services;
using System.Windows.Forms;
using CDental.WSCDental;
using System.Text.RegularExpressions;
using System.Configuration;

namespace CDental
{
    public class Utilidades
    {
        public List<TipoDireccion> llenarComboTipoDireccion()
        {
            try
            {
                var listDireccion = new List<TipoDireccion>();
                var objTipoDireccion = new TipoDireccion();
                objTipoDireccion.Id_TipoDireccion = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listDireccion = svc.TipoDireccionSeleccionar(objTipoDireccion);
                }
                return listDireccion;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }

        }

        public List<TipoOcupacion> llenarComboTipoOcupacion()
        {
            try
            {
                var listTipoOcupacion = new List<TipoOcupacion>();
                var objTipoTipoOcupacion = new TipoOcupacion();
                objTipoTipoOcupacion.Ocupacion = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listTipoOcupacion = svc.TipoOcupacionSeleccionar(objTipoTipoOcupacion);
                }
                return listTipoOcupacion;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public List<TipoTelefono> llenarComboTipoTelefono()
        {
            try
            {
                var listTipoTelefono = new List<TipoTelefono>();
                var objTipoTelefono = new TipoTelefono();
                objTipoTelefono.Id_TipoTelefono = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listTipoTelefono = svc.TipoTelefonoSeleccionar(objTipoTelefono);
                }
                return listTipoTelefono;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public List<TipoPosicion> llenarComboTipoPosicion()
        {
            try
            {
                var listTipoPosicion = new List<TipoPosicion>();
                var objTipoPosicion = new TipoPosicion();
                objTipoPosicion.Id_TipoPosicion = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listTipoPosicion = svc.TipoPosicionSeleccionar(objTipoPosicion);
                }
                return listTipoPosicion;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public List<TipoParentesco> llenarComboTipoParentesco()
        {
            try
            {
                var listTipoParentesco = new List<TipoParentesco>();
                var objTipoParentesco = new TipoParentesco();
                objTipoParentesco.Id_TipoParentesco = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listTipoParentesco = svc.TipoParentescoSeleccionar(objTipoParentesco);
                }

                return listTipoParentesco;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public List<TipoEstadoPieza> llenarComboTipoEstadoPieza()
        {
            try
            {
                var listTipoEstadoPieza = new List<TipoEstadoPieza>();
                var objTipoEstadoPieza = new TipoEstadoPieza();
                objTipoEstadoPieza.Id_TipoEstadoPieza = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listTipoEstadoPieza = svc.TipoEstadoPiezaSeleccionar(objTipoEstadoPieza);
                }
                return listTipoEstadoPieza;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public List<Pais> llenarComboPais()
        {
            try
            {
                var listPais = new List<Pais>();
                var objPais = new Pais();
                objPais.Id_pais = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listPais = svc.PaisSeleccionar(objPais);
                }
                return listPais;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public List<Provincia> llenarComboProvincia()
        {
            try
            {
                var listProvincia = new List<Provincia>();
                var objProvincia = new Provincia();
                objProvincia.Id_provincia = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listProvincia = svc.ProvinciaSeleccionar(objProvincia);
                }
                return listProvincia;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public List<Canton> llenarComboCanton(int pIdProvincia)
        {
            try
            {
                var listCanton = new List<Canton>();
                var objCanton = new Canton();
                objCanton.Id_provincia = pIdProvincia;
                objCanton.Id_canton = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listCanton = svc.CantonSeleccionar(objCanton);
                }
                return listCanton;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public List<Distrito> llenarComboDistrito(int pIdProvincia, int pIdCanton)
        {
            try
            {
                var listDistrito = new List<Distrito>();
                var objDistrito = new Distrito();
                objDistrito.Id_provincia = pIdProvincia;
                objDistrito.Id_canton = pIdCanton;
                objDistrito.Id_distrito = 0;
                using (CDentalSoapClient svc = new CDentalSoapClient())
                {
                    listDistrito = svc.DistritoSeleccionar(objDistrito);
                }
                return listDistrito;
            }
            catch (Exception ex)
            {
                this.ManejoError(true, System.Reflection.MethodBase.GetCurrentMethod().Name, ex.Message);
                throw ex;
            }
        }

        public string ManejoError(bool pEsMetodo, string pNombreMetodo, string pError)
        {
            string retorno = string.Empty;
            string ubicacion = ConfigurationSettings.AppSettings["DireccionLog"];
            try
            {
                Exception excep = new Exception();
                Error error = new Error();
                retorno = error.ManejoError(pEsMetodo, pNombreMetodo, pError, ubicacion);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error no controlado = 00, mas detalles: " + ex.Message, "Contacte con su administrador", MessageBoxButtons.OK, MessageBoxIcon.Hand);
            }
            return retorno;
        }
        public bool ValidarExpresionRegular(string Valor, string ExpresionEvaluar)
        {
            return Regex.IsMatch(Valor, ExpresionEvaluar);
        }
    }
}
