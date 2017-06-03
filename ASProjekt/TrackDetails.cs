using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASProjekt
{
    public class TrackDetails
    {
        public int Id
        { set; get; }
        public string Name
        { set; get; }
        public string Length
        { set; get; }
        public int AlbumId
        { set; get; }

        public TrackDetails()
        {
        }

        public TrackDetails(int id, string name, string length, int albumId)
        {
            Id = id;
            SetAlbumAttr(name, length, albumId);
        }

        private void SetAlbumAttr(string name, string length, int albumId)
        {
            Name = name;
            Length = length;
            AlbumId = albumId;
        }
    }
}