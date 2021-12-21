<script>
import MenuNavBar from "./components/MenuNavBar.vue";
import Sidebar from "./components/Sidebar.vue";
import HeroSection from "./components/HeroSection.vue";
export default {
  name: 'App',
  components: {HeroSection, Sidebar, MenuNavBar},

  data: () => ({
    sidebarIsVisible: false
  }),
  methods: {
    toggleSidebar() {
      this.sidebarIsVisible = !this.sidebarIsVisible
    },
    hideSidebar(){
      this.sidebarIsVisible = false
    },
  },
}

</script>

<template>
<body class="min-h-screen text-white font-poppins mx-auto">

  <!-- menu bar/nav -->
 <MenuNavBar @toggle-sidebar="toggleSidebar" />
  <!-- sidebar -->
  <Sidebar @hide-sidebar="hideSidebar" :sidebarIsVisible="sidebarIsVisible" />
  
  <!-- content -->
  <main >
      <HeroSection/>
  </main>
</body>
</template>

<style>
#app {

}

.btn{

}


</style>
