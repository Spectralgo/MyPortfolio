<template>
  <div class="bg-base-100 px-4 py-2 md:py-5 w-full ">
    <div class="max-w-screen-2xl lg:px-20 flex justify-between items-center mx-auto ">
      <a class="flex items-center space-x-2 py-1 " href="#">
        <span class=" font-light text-2xl md:text-3xl font-poiret ">FlorianRenard</span>
      </a>
      <!-- Descktop nav -->
      <div class=" hidden justify-center items-center md:flex  md:space-x-2 ">

        <a v-smooth-scroll @mouseover="isHovering = true" @mouseout="isHovering = false"
           class="hidden lg:block py-2 px-2 lg:px-4 hover:bg-neutral transition duration-200" href="#">Home</a>

        <a v-smooth-scroll @mouseover="isHovering = true" @mouseout="isHovering = false"
           class="block py-2 px-2 lg:px-4 hover:bg-neutral transition duration-200" href="#my-work">Mon travail</a>

        <a v-smooth-scroll  @mouseover="isHovering = true" @mouseout="isHovering = false"
           class="block py-2 px-2 lg:px-4 hover:bg-neutral transition duration-200" href="#my-skills">Mes
          compétences</a>

        <a v-smooth-scroll :class="isHovering ? '' : ' bg-primary hover:bg-primary-focus'"
           class="block py-2 px-2 lg:px-4 transition duration-200 delay-200 " href="#hire-me">Contactez moi</a>

      </div>
      <!-- mobile menu button-->
      <button class="md:hidden fixed focus:outline-none focus:bg-base-200 rounded  md:mt-7 p-2 right-5 z-50"
              @click="$emit('toggle-sidebar')">
        <svg class="h-5 w-5" viewBox="0 0 64 64" xmlns="http://www.w3.org/2000/svg">
          <title>menu</title>
          <g class="nc-icon-wrapper" fill="currentColor">
            <path
                d="M60,34H4c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h56c0.552,0,1,0.448,1,1v2 C61,33.552,60.552,34,60,34z"
                data-color="color-2"/>
            <path
                d="M60,16H31c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h29c0.552,0,1,0.448,1,1v2C61,15.552,60.552,16,60,16 z"/>
            <path
                d="M33,52H4c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h29c0.552,0,1,0.448,1,1v2C34,51.552,33.552,52,33,52z "/>
          </g>
        </svg>
      </button>
    </div>
  </div>


</template>

<script>
export default {
  name: "MenuNavBar",
  data: () => ({
    isHovering: false,
  }),
}
</script>

<style scoped>

</style>