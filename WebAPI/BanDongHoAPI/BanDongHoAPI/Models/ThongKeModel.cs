using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BanDongHoAPI.Models
{
    public class ThongKeModel
    {
        private string _key;
        private string _value;

        public ThongKeModel(string key, string value)
        {
            _key = key;
            _value = value;
        }

        public string Key { get => _key; set => _key = value; }
        public string Value { get => _value; set => _value = value; }
    }
}