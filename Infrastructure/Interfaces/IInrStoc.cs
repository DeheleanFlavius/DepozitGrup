using DepozitGrup.Domain.Models;
using System.Collections.Generic;

namespace DepozitGrup.Infrastructure.Interfaces
{
    public interface IInrStoc
    {
        List<InrStoc> GetStoc(string ConnectionString);
        InrStoc GetInrStoc(string ConnectionString, int Id);


    }
}
