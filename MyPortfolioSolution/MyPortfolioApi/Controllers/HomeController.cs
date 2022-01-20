using Microsoft.AspNetCore.Mvc;

namespace MyPortfolioApi.Controllers;

[ApiController]
[Route("api/[controller]")]
public class HomeController : ControllerBase
{
    [HttpGet("hello")]
    public IActionResult sayHello()
    {
        return Ok("Hello Big Boï");
    }
}