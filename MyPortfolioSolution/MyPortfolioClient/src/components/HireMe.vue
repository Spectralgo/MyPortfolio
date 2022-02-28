<template>
  <div class="container mt-64 flex justify-between items-center mx-auto px-8 md:px-14 ">
    <section class="w-full">
      <h2 id="hire-me" class="secondary-title">Contactez moi</h2>
      <p class="section-paragraph">
        N'hésitez pas à me contacter si vous pensez que mon profil peut vous aider à atteindre vos objectifs.</p>
      <div class="w-full  mt-8 ">
        <div class="flex space-x-6">
          <a href="https://www.linkedin.com/in/florian-renard-3243b5140" class=" btn btn-primary flex justify-center items-center space-x-2">
            <svg class="fill-white" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"/></svg>
            <span>Contactez moi</span>

          </a>

        </div>
        <div class="mt-12">
          <img class="h-6" src="../assets/img/spectralgo.png" >

          

        </div>
      </div>
    </section>
  </div>

</template>

<script>
export default {
  name: "HireMe"
}
// todo: add logic to send email to dotnet api
</script>

<style scoped>
.card {
  @apply rounded-none
}
</style>