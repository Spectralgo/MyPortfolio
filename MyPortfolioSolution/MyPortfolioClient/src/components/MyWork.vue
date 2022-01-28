<template>
  <div class="container mt-64 flex justify-between items center mx-auto px-8 md:px-14 lg:px-24 w-full">
    <section class="w-full">
      <h2 id="my-work" class="secondary-title">Mon travail</h2>
      <p class="section-paragraph">
        <!-- exemple text -->
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
      <div class="grid grid-cols-1 md:greid-cols-2 lg:grid-cols-3 gap-6 mt-6">
        <!-- Start Poly Wild-->
        <div class="card bordered">
          <div class="card-body">
            <h3 class="card-title">Poly Wild</h3>
            <!--Badges-->
            <div class="flex-col">
              <div class="space-x-2 pb-2">
                <div class="badge badge-outline">CEO</div>
                <div class="badge badge-secondary px-2">Start-up</div>
              </div>
              <div class="flex-wrap space-x-2">
                <div class="badge">CES 2019</div>
                <div class="badge">Prototypage Chine</div>
                <div class="badge">MVP</div>
              </div>
            </div>
            <!--Text-->
            <p class="pt-4">
              Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed
              molestiae voluptates incidunt iure sapiente. </p>
            <div class="card-actions">
              <!--Links-->
              <button class="btn btn-primary">Site Web</button>
              <button class="btn btn-outline">Facebook</button>
            </div>
          </div>
          <figure>
            <div class="relative" @click="openModal">
              <div class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2" @click="openModal">Open</div>
              <img alt class="w-full" src="https://source.unsplash.com/random/400x400"/>
            </div>
            <Modal ref="modal">
              <template v-slot:default>
                <div class="relative card h-screen" @click.self="closeModal">
                  <iframe allow="autoplay; clipboard-write; encrypted-media; gyroscope;"
                          allowfullscreen class="m-auto  aspect-video w-full  sm:p-8" frameborder="0"
                          src="https://www.youtube.com/embed/w72YwH1qXUs" title="YouTube video player"
                          >
                  </iframe>
                </div>
              </template>
            </Modal>
          </figure>
        </div>
        <!--End Poly Wild-->

        <!-- Start Poly Wild-->
        <div class="card bordered">
          <div class="card-body">
            <h3 class="card-title">SpectralGo.com</h3>
            <!--Badges-->
            <div class="flex-col">
              <div class="space-x-2 pb-2">
                <div class="badge badge-outline">BA/PO</div>
                <div class="badge badge-secondary px-2">Consultant Indépendant</div>
              </div>
              <div class="flex-wrap space-x-2">
                <div class="badge">Design Sprint</div>
                <div class="badge">Prototypage Rapide</div>
                <div class="badge">IA</div>
              </div>
            </div>
            <!--Text-->
            <p class="pt-4">
              Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed
              molestiae voluptates incidunt iure sapiente. </p>
            <div class="card-actions">
              <!--Links-->
              <button class="btn btn-primary">Site Web</button>
              <button class="btn btn-outline">Étude De Cas</button>
            </div>
          </div>
          <figure>
            <img alt src="https://source.unsplash.com/random/400x400"/>
          </figure>
        </div>
        <!--End Poly Wild-->

        <!-- Start Woder.App-->
        <div class="card bordered">
          <div class="card-body">
            <h3 class="card-title">Woder.app</h3>
            <!--Badges-->
            <div class="flex-col">
              <div class="space-x-2 pb-2">
                <div class="badge badge-outline">Dévellopeur web</div>
                <div class="badge badge-secondary px-2">projet personnel</div>
              </div>
              <div class="flex-wrap space-x-2">
                <div class="badge">Asp.net</div>
                <div class="badge">C#</div>
                <div class="badge">Vuejs</div>
                <div class="badge">Nuxtjs</div>
              </div>
            </div>
            <!--Text-->
            <p class="pt-4">
              Rerum reiciendis beatae tenetur excepturi aut pariatur est eos. Sit sit necessitatibus veritatis sed
              molestiae voluptates incidunt iure sapiente. </p>
            <div class="card-actions flex">
              <!--Links-->
              <button class="btn btn-primary">Site Web</button>
              <button class="btn btn-accent">
                <img alt="github icon" class="pr-3 h-5" src="../assets/icons/GitHub-Mark-Light-32px.png"/> Github
              </button>
              <button class="btn btn-outline flex-1">Youtube</button>
            </div>
          </div>
          <figure>
            <img alt src="https://source.unsplash.com/random/400x400"/>
          </figure>
        </div>
        <!--End Poly Wild-->
      </div>
    </section>
  </div>
</template>

<script>
import Modal from "./Modal.vue";

export default {
  name: "MyWork",
  components: {Modal},
  methods: {
    openModal() {
      this.$refs.modal.openModal();
    },
    closeModal() {
      this.$refs.modal.closeModal();
    }
  }
}
</script>

<style scoped></style>