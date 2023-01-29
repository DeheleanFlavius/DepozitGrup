using System.Collections.Generic;
using DepozitGrup.Domain.Models;

namespace DepozitGrup.Infrastructure.Interfaces
{
    public interface IIntrare
    {
        List<Intrare> GetIntrari(string ConnectionString);

        Intrare GetIntrare(string ConnectionString, int Id);
        void CreateIntrare(string ConectionString, string ProductName, string PartnerName, int Qty);
        void UpdateIntrare(string ConnectionString, int Id, string ProductName, string PartnerName, int Qty);
        void DeleteIntrare(string ConnectionString, int Id);

    }
}
