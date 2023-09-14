public class Car
{
    public int Id { get; set; }
    public string Name { get; set; }
    public string Type { get; set; }
    public double Price { get; set; }
    public string Roast { get; set; }
    public string Country { get; set; }
    public string Image { get; set; }
    public string Review { get; set; }

    public Car(int id, string name, string type, double price, string roast, string country, string image, string review)
    {
        Id = id;
        Name = name;
        Type = type;
        Price = price;
        Roast = roast;
        Country = country;
        Image = image;
        Review = review;
    }

    public Car(string name, string type, double price, string roast, string country, string image, string review)
    {
        // TODO: Complete member initialization
        this.Name = name;
        this.Type = type;
        this.Price = price;
        this.Roast = roast;
        this.Country = country;
        this.Image = image;
        this.Review = review;
    }
}