using DepozitGrup.Domain.Models;
using System.Collections.Generic;

namespace DepozitGrup.Infrastructure.Interfaces
{
    public interface IIesire
    {
        List<Iesire> GetIesiri(string ConnectionString);

        Iesire GetIesire(string ConnectionString, int Id);
        void CreateIesire(string ConectionString, string ProductName, string PartnerName, int Qty);
        void UpdateIesire(string ConnectionString, int Id, string ProductName, string PartnerName, int Qty);
        void DeleteIesire(string ConnectionString, int Id);
    }
}
