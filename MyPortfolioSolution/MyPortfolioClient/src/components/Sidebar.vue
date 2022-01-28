<template>
  <div
    :class="{ hideSideBarClass: !sidebarIsVisible }"
    class="z-50 bg-base-200 w-64 h-full space-y-6 px-5 pt-5 fixed inset-y-0 left-0 transform duration-200 ease-in-out"
  >
    <nav class="flex flex-col">
      <a  class="flex items-center space-x-2 pt-2" href="#">
        <span class="font-light text-3xl font-poiret px-4">FlorianRenard</span>
      </a>
      <div class="pt-5">
        <a  class="block py-2 px-4 hover:bg-neutral transition duration-100" href="#">Home</a>
        <a v-smooth-scroll
          class="block py-2 px-4 hover:bg-neutral transition duration-100"
          href="#my-work"
        >Mon travail</a>
        <a v-smooth-scroll
          class="block py-2 px-4 hover:bg-neutral transition duration-100"
          href="#my-skills"
        >Mes compétences</a>
        <a v-smooth-scroll
          class="block py-2 px-4 hover:bg-neutral transition duration-100 btn-accent"
          href="#hire-me"
        >Contactez moi</a>
      </div>
      <img src="../assets/icons/fr-sig-web.svg" alt="logo" class="opacity-5" />
    </nav>
  </div>

  <!-- Hide sidebar helper form the body -->
  <div
    v-if="sidebarIsVisible"
    class="bg-red-100 h-screen w-full top-0 fixed z-40 bg-transparent"
    @click="$emit('hide-sidebar')"
  />
</template>

<script>
export default {
  name: "Sidebar",
  props: {
    sidebarIsVisible: {
      required: true,
      type: Boolean,
      default: false
    }
  },
  emits: [
    'hide-sidebar'
  ],
}
</script>

<style scoped>
.hideSideBarClass {
  @apply -translate-x-full;
}
</style>