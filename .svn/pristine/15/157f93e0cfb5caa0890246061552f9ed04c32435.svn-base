using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Configuration;

namespace WSCDental
{
    public class Error
    {

        /// <summary>
        /// Añade Texto a un archivo
        /// </summary>
        /// <param name="pTexto">Texto a añadir</param>
        /// <param name="pArchivo">Nombre y ruta del archivo</param>
        private void AddText(string pTexto, string pArchivo)
        {
            try
            {
                string fileName = pArchivo;
                StreamWriter writer = File.AppendText(fileName);
                writer.WriteLine(pTexto);
                writer.Close();
            }
            catch
            {
                CreateText(pTexto, pArchivo);
            }
        }

        /// <summary>
        /// Crea y Añade texto a un Archivo
        /// </summary>
        /// <param name="pTexto">Texto a añadir</param>
        /// <param name="pArchivo">Nombre y ruta del archivo</param>
        private void CreateText(string pTexto, string pArchivo)
        {
            try
            {
                string fileName = pArchivo;
                StreamWriter writer = File.CreateText(fileName);

                writer.WriteLine(pTexto);
                writer.Close();
            }
            catch
            {
                throw;
            }

        }

        /// <summary>
        /// Manejo de errores del Sistema
        /// </summary>
        /// <param name="pEsMetodo">true para Metodo, false Evento de Control</param>
        /// <param name="pNombreMetodo">Nombre del Metodo donde se ejecuta</param>
        /// <param name="pError">Exception o error del cath</param>
        /// <param name="pArchivo">Nombre y ruta del archivo donde se desea dejar el log</param>
        /// <returns></returns>
        public string ManejoError(bool pEsMetodo, string pNombreMetodo, string pError)
        {
            string retorno = string.Empty;
            string ex = string.Empty;
            string pArchivo = ConfigurationSettings.AppSettings["DireccionLog"];
            try
            {
                ex = "\r\n" +
                    "Fecha Hora: " + DateTime.Now.ToShortDateString() + " " + DateTime.Now.ToLongTimeString() +
                    "|| Metodo: " + pNombreMetodo + " , error: " + pError;
                if (pEsMetodo)
                    this.AddText(ex, pArchivo);
                else
                    this.AddText("Evento de Control que Genero el Error: " + ex, pArchivo);

                retorno = ex;
            }
            catch
            {
                throw;
            }
            return retorno;
        }
    }
}