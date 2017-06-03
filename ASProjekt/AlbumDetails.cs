using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASProjekt
{
    public class AlbumDetails
    {
        public int Id
        { set; get; }
        public string Title
        { set; get; }
        public string Category
        { set; get; }
        public int Year
        { set; get; }
        public string Compositor
        { set; get; }
        public string Distributor
        { set; get; }

        public AlbumDetails()
        {
        }

        public AlbumDetails(int id, string title, string category, int year, string compositor, string distributor)
        {
            Id = id;
            SetAlbumAttr(title, category, year, compositor, distributor);
        }

        private void SetAlbumAttr(string title, string category, int year, string compositor, string distributor)
        {
            Title = title;
            Category = category;
            Year = year;
            Compositor = compositor;
            Distributor = distributor;
        }
    }
}