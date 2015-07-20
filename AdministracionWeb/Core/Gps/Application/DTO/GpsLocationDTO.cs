using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Core.Gps.Application.DTO
{
    class GpsLocationDTO
    {
        public int IdGpsLocation { get; set; }
        public DateTime LastUpdate { get; set; }
        public float Latitude { get; set; }
        public float Longitude { get; set; }
        public String PhoneNumber { get; set; }

    }
}
