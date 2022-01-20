var builder = WebApplication.CreateBuilder(args);

builder.Services.AddControllers();
builder.Services.AddSpaStaticFiles(config => { config.RootPath = "dist"; });

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseDeveloperExceptionPage();
    // app.UseCors(corsPolicyBuilder => corsPolicyBuilder.AllowAnyHeader().AllowAnyOrigin().AllowAnyMethod());
}

app.UseRouting();
app.UseEndpoints(endpoints =>
{
    endpoints.MapDefaultControllerRoute();
});
app.UseSpaStaticFiles();
app.UseSpa(spaBuilder =>
{
    if (app.Environment.IsDevelopment())
    {
        spaBuilder.UseProxyToSpaDevelopmentServer("http://localhost:3000/");
    }
});
app.MapControllers();
app.Run("http://0.0.0.0:5000");