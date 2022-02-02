using Microsoft.AspNetCore.Mvc;

namespace MyPortfolioApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class HomeController : ControllerBase
{
    private const string ColorPath = "defaultColor.txt";
    
    [HttpGet("hello")]
    public IActionResult sayHello()
    {
        return Ok("Hello Big Boï");
    }

    [HttpGet("color")]
    public IActionResult getColor()
    {
        
        var defaultColor = System.IO.File.ReadAllText(ColorPath);
        return Ok($"{defaultColor}");
    }
    
    [HttpPut("color/{newColor}")]
    public async Task<IActionResult> Color(string newColor)
    {
        await using StreamWriter file = new(ColorPath, append:false );
        await file.WriteLineAsync($"{newColor}");
        return Ok($"the new color is {newColor}");
    } 
     
}