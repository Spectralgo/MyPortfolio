FROM mcr.microsoft.com/dotnet/aspnet:6.0

WORKDIR /app

COPY production .

EXPOSE 5000

CMD ["dotnet", "MyPortfolioApi.dll"]