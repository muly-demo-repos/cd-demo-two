using Microsoft.EntityFrameworkCore;

namespace Purchases.Infrastructure;

public class PurchasesDbContext : DbContext
{
    public PurchasesDbContext(DbContextOptions<PurchasesDbContext> options)
        : base(options) { }
}
