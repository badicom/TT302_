using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Gps.Integration.DAO
{
    /// <summary>
    /// Interfaz que define las operaciones base para las clases DAO.
    /// <author>Christian E. Badillo - Transportare</author>
    /// <version>1.0</version>
    /// </summary>
    public interface IBaseDAO
    {
        /// <summary>
        /// Obtiene el último identificador insertado en la BD asociado con esta conección.
        /// </summary>
        /// <returns>el último identificador insertado en la BD asociado con esta conección.</returns>
        long obtenerUltimoIdInsertado();
    }
}
