<script>
export default {
  name: 'App',
  data: () => ({
    sidebar: false
  }),
  methods: {
    toggleSidebar() {
      this.sidebar = !this.sidebar
    },
  }
}

</script>

<template>
<body class="relative min-h-screen text-white font-poppins">
  <!-- menu bar/nav -->
  <div class="bg-base-100 flex justify-between p-5">
    <a class="flex items-center space-x-2 p-4" href="#">
      <svg
        class="h-5 w-5"
        fill="currentColor"
        viewBox="0 0 20 20"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          clip-rule="evenodd"
          d="M2 5a2 2 0 012-2h12a2 2 0 012 2v10a2 2 0 01-2 2H4a2 2 0 01-2-2V5zm3.293 1.293a1 1 0 011.414 0l3 3a1 1 0 010 1.414l-3 3a1 1 0 01-1.414-1.414L7.586 10 5.293 7.707a1 1 0 010-1.414zM11 12a1 1 0 100 2h3a1 1 0 100-2h-3z"
          fill-rule="evenodd"
        />
      </svg>
      <span class="font-bold">florianRenard</span>
    </a>
    <div class="hidden sm:flex sm:block md:space-x-2 p-4">
      <a
        class="hidden md:block py-2 px-2 lg:px-4 hover:bg-primary rounded transition duration-200"
        href="#"
      >Home</a>
      <a
        class="block py-2 px-2 lg:px-4 hover:bg-primary rounded transition duration-200"
        href="#MyWork"
      >Mon travail</a>
      <a
        class="block py-2 px-2 lg:px-4 hover:bg-primary rounded transition duration-200"
        href="#Clients"
      >Mes clients</a>
      <a
        class="block py-2 px-2 lg:px-4 hover:bg-primary rounded transition duration-200"
        href="#HireMe"
      >Travailler avec moi</a>
    </div>

    <!-- mobile menu button-->
    <button
      class="sm:hidden focus:outline-none focus:bg-base-200 rounded p-4"
      @click="toggleSidebar"
    >
      <svg class="h-5 w-5" viewBox="0 0 64 64" xmlns="http://www.w3.org/2000/svg">
        <title>menu</title>
        <g class="nc-icon-wrapper" fill="currentColor">
          <path
            d="M60,34H4c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h56c0.552,0,1,0.448,1,1v2 C61,33.552,60.552,34,60,34z"
            data-color="color-2"
          />
          <path
            d="M60,16H31c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h29c0.552,0,1,0.448,1,1v2C61,15.552,60.552,16,60,16 z"
          />
          <path
            d="M33,52H4c-0.552,0-1-0.448-1-1v-2c0-0.552,0.448-1,1-1h29c0.552,0,1,0.448,1,1v2C34,51.552,33.552,52,33,52z "
          />
        </g>
      </svg>
    </button>
  </div>
  <!-- sidebar -->
  <div
    :class="{ hideSideBarClass: !sidebar }"
    class="z-20 bg-base-200 text-white w-64 space-y-6 px-5 pt-5 absolute inset-y-0 left-0 transform duration-200 ease-in-out"
  >
    <nav>
      <!-- todo: logo turn your signature into a logo  -->
      <a class="flex items-center space-x-2 pt-2" href="#">
        <svg
          class="h-5 w-5"
          fill="currentColor"
          viewBox="0 0 20 20"
          xmlns="http://www.w3.org/2000/svg"
        >
          <path
            clip-rule="evenodd"
            d="M2 5a2 2 0 012-2h12a2 2 0 012 2v10a2 2 0 01-2 2H4a2 2 0 01-2-2V5zm3.293 1.293a1 1 0 011.414 0l3 3a1 1 0 010 1.414l-3 3a1 1 0 01-1.414-1.414L7.586 10 5.293 7.707a1 1 0 010-1.414zM11 12a1 1 0 100 2h3a1 1 0 100-2h-3z"
            fill-rule="evenodd"
          />
        </svg>
        <span class="font-bold">florianRenard</span>
      </a>
      <div class="pt-5">
        <a class="block py-2 px-4 hover:bg-primary rounded transition duration-200" href="#">Home</a>
        <a
          class="block py-2 px-4 hover:bg-primary rounded transition duration-200"
          href="#MyWork"
        >Mon travail</a>
        <a
          class="block py-2 px-4 hover:bg-primary rounded transition duration-200"
          href="#Clients"
        >Mes clients</a>
        <a
          class="block py-2 px-4 hover:bg-primary rounded transition duration-200"
          href="#HireMe"
        >Travailler avec moi</a>
      </div>
    </nav>
  </div>

  <div
    v-if="sidebar"
    class="bg-red-100 h-screen w-full top-0 absolute z-10 bg-transparent"
    @click="sidebar = false"
  />

  <!-- content -->
  <main class="flex-1 p-6">content goes here</main>
</body>
</template>

<style>
/* 
#app { 
   Global app css
} 

*/
.hideSideBarClass {
  @apply -translate-x-full;
}
</style>
