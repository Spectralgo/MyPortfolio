<template>
  <div class="container mt-64 flex justify-between items-center mx-auto px-8 md:px-14 ">
    <section class="w-full">
      <h2 id="HireMe" class="secondary-title">Hire me</h2>
      <p class="section-paragraph">
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid animi aperiam aspernatur atque beatae consectetur esse eum hic inventore ipsam ipsum nihil nobis odit, quam quia soluta tempore totam, velit?
      </p>
      <div class="w-full grid lg:grid-cols-2 gap-8 lg:gap-32 mt-16 ">
          <div class=" bg-base-100 space-y-10">
            <div>
              <label class="label mb-2">
                <span class="label-text">Quel est votre nom ?</span>
              </label>
              <input type="text" class="bg-base-200 rounded-none input">
            </div>
            <div>
              <label class="label mb-2">
                <span class="label-text">Email</span>
              </label>
              <input type="text"  class="bg-base-200 rounded-none input w-full max-w-sm">
            </div>
            <div>
              <label class="label mb-2 ">
                <span class="label-text">Message</span>
              </label>
              <input type="text" class="bg-base-200 rounded-none input h-40 w-full max-w-sm">
            </div>
            <button class="btn btn-primary capitalize">Envoyer</button>
        </div>

      <div class="mt-12">
        <!-- Contact info -->
        <p class="text-secondary-bis">06 93 21 55 24</p>
        <a href="mailto:contact@florianrenard.com" class="text-secondary-bis underline">contact@florianrenard.com</a>
        
        <!-- Socials -->
        <div class="flex mt-20 space-x-6">
          <a href="https://www.linkedin.com/in/florian-renard-a8a8b8b4/" class="text-secondary-bis underline">
<svg height="42" width="42" xmlns="http://www.w3.org/2000/svg" color="white" viewBox="0 0 256 256"><g fill="none"><path d="M0 18.338C0 8.216 8.474 0 18.92 0h218.16C247.53 0 256 8.216 256 18.338v219.327C256 247.79 247.53 256 237.08 256H18.92C8.475 256 0 247.791 0 237.668V18.335z" fill="#069"/><path d="M77.796 214.238V98.986H39.488v115.252H77.8zM58.65 83.253c13.356 0 21.671-8.85 21.671-19.91-.25-11.312-8.315-19.915-21.417-19.915-13.111 0-21.674 8.603-21.674 19.914 0 11.06 8.312 19.91 21.169 19.91h.248zM99 214.238h38.305v-64.355c0-3.44.25-6.889 1.262-9.346 2.768-6.885 9.071-14.012 19.656-14.012 13.858 0 19.405 10.568 19.405 26.063v61.65h38.304v-66.082c0-35.399-18.896-51.872-44.099-51.872-20.663 0-29.738 11.549-34.78 19.415h.255V98.99H99.002c.5 10.812-.003 115.252-.003 115.252z" fill="#fff"/></g></svg>
          </a>

          <a href="https://www.linkedin.com/in/florian-renard-a8a8b8b4/" class="text-secondary-bis underline">
<svg height="42" width="42" xmlns="http://www.w3.org/2000/svg" color="white" viewBox="0 0 256 256"><g fill="none"><path d="M0 18.338C0 8.216 8.474 0 18.92 0h218.16C247.53 0 256 8.216 256 18.338v219.327C256 247.79 247.53 256 237.08 256H18.92C8.475 256 0 247.791 0 237.668V18.335z" fill="#069"/><path d="M77.796 214.238V98.986H39.488v115.252H77.8zM58.65 83.253c13.356 0 21.671-8.85 21.671-19.91-.25-11.312-8.315-19.915-21.417-19.915-13.111 0-21.674 8.603-21.674 19.914 0 11.06 8.312 19.91 21.169 19.91h.248zM99 214.238h38.305v-64.355c0-3.44.25-6.889 1.262-9.346 2.768-6.885 9.071-14.012 19.656-14.012 13.858 0 19.405 10.568 19.405 26.063v61.65h38.304v-66.082c0-35.399-18.896-51.872-44.099-51.872-20.663 0-29.738 11.549-34.78 19.415h.255V98.99H99.002c.5 10.812-.003 115.252-.003 115.252z" fill="#fff"/></g></svg>
          </a>
        </div>

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
.card{
  @apply rounded-none
}
</style>