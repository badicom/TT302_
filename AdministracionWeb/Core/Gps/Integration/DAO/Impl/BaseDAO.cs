using System.Collections.Generic;

using Spring.Data.Generic;
using System.Data;

namespace Core.Gps.Integration.DAO.Impl 
{
    /// <summary>
    /// Clase base para los Objetos de acceso a la BD.
    /// <author>Christian E. Badillo - Transportare </author>
    /// <version>1.0</version>
    /// </summary>
    public abstract class BaseDAO : AdoDaoSupport
    {
        /// <summary>
        /// Obtiene el último identificador insertado en la BD asociado con esta conección.
        /// </summary>
        /// <returns>el último identificador insertado en la BD asociado con esta conección.</returns>
        public long obtenerUltimoIdInsertado()
        {
            long idInsertado = -1;

            IList<long> ids = this.AdoTemplate.QueryWithRowMapperDelegate<long>(CommandType.Text, "SELECT @@IDENTITY", delegate(IDataReader reader, int rowNum)
            {
                long id = (long)reader.GetDecimal(0);

                return id;
            });

            if (ids != null && ids.Count > 0)
            {
                idInsertado = ids[0];
            }
            return idInsertado;
        }
    }
}