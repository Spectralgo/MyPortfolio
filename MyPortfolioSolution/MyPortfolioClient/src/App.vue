<script>
import MenuNavBar from "./components/MenuNavBar.vue";
import Sidebar from "./components/Sidebar.vue";
import HeroSection from "./components/HeroSection.vue";
import MyWork from "./components/MyWork.vue";
import MyClients from "./components/MyClients.vue";
import HireMe from "./components/HireMe.vue";
export default {
  name: 'App',
  components: {HireMe, MyClients, MyWork, HeroSection, Sidebar, MenuNavBar},

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
<body class="min-h-screen font-poppins mx-auto">

  <!-- menu bar/nav -->
 <MenuNavBar @toggle-sidebar="toggleSidebar" />
  <!-- sidebar -->
  <Sidebar @hide-sidebar="hideSidebar" :sidebarIsVisible="sidebarIsVisible" />
  <!-- content -->
  <main class="mb-16">
      <HeroSection/>
    <MyWork/>
    <MyClients/>
    <HireMe/>
  </main>
</body>
</template>

<style>
#app {
}


</style>
