
/**
 * The Product class
 * 
 * This is just to simulate some way of accessing data about  our products
 */
public class Product
{

	public int Id { get; set; }
	public decimal Price { get; set; }
	public string Description { get; set; }

	public Product(int id)
	{
		this.Id = id;
		switch (id) {
			case 1:
				this.Price = 30000000;
				this.Description = "طراحی وب سایت استاتیک";
				break;
			case 2:
				this.Price = 10000000;
				this.Description = "طراحی وب سایت حرفه ای";
				break;
			case 4:
				this.Price = 10000000;
				this.Description = "نرم افزار مالی و حسابداری";
				break;
            case 3:
                this.Price = 10000000;
                this.Description = "طراحی نرم افزار های موبایل";
                break;
        }
	}

}
