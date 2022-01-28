<script>
import MenuNavBar from "./components/MenuNavBar.vue";
import Sidebar from "./components/Sidebar.vue";
import HeroSection from "./components/HeroSection.vue";
import MyWork from "./components/MyWork.vue";
import HireMe from "./components/HireMe.vue";
import MySkills from "./components/MySkills.vue";


export default {
  name: 'App',
  components: {HireMe, MySkills, MyWork, HeroSection, Sidebar, MenuNavBar},

  data: () => ({
    sidebarIsVisible: false
  }),
  methods: {
    toggleSidebar() {
      this.sidebarIsVisible = !this.sidebarIsVisible
    },
    hideSidebar() {
      this.sidebarIsVisible = false
    },
  },
  created() {
    window.addEventListener('scroll', () => {
      this.sidebarIsVisible = false
    })
  }
}

</script>

<template>
  <body class="min-h-screen font-poppins mx-auto">

  <!-- menu bar/nav -->
  <MenuNavBar @toggle-sidebar="toggleSidebar"/>
  <!-- sidebar -->
  <Sidebar :sidebarIsVisible="sidebarIsVisible" @hide-sidebar="hideSidebar"/>
  <!-- content -->
  <main class="mb-16">
    <HeroSection/>
    <MyWork/>
    <MySkills/>
    <HireMe/>
  </main>
  </body>
</template>

<style>
#app {
}


</style>
