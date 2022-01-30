<template>
  <div class="container mt-64 flex justify-between items center mx-auto px-8 md:px-14 lg:px-24 w-full">
    <section class="w-full">
      <h2 id="my-work" class="secondary-title">C# .NET Developer / Product Owner</h2>
      <!-- exemple text -->
      <div>
        <p class="section-paragraph">
          En 2016, j'ai créé une <span class="text-white">start-up de jeux vidéo éducatif</span> sous le nom de Poly
          Wild. J'ai été repsonable de
          la conceptualisation du produit
          et de la <span class="text-white"> gestion de projets</span>.
          J'ai pris la décision de fermer cette entreprise en 2020, lors du premier confinement, afin me concentrer sur
          mes compétences techniques. </p>
        <p class="section-paragraph">
          À l'époque, mes reponsabilitées m'obligeaient à délaisser cet aspect de mon métier, que j'estime être
          extrement important. Prendre le temps de renforcer mes compétences de <span class="text-white">programmeur informatique</span> à été l'une de mes
          meilleurs décision. </p>
        <p class="section-paragraph">
          Aujourd'hui je suis non seulement capable de <span class="text-white">conceptualiser un produit</span>
          technologique et <span class="text-white">d'encadrer sa crétation</span>,
          je suis également capable de <span class="text-white">le construire </span> et de <span
            class="text-white">le vendre</span>. </p>
      </div>
      <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mt-6">
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
                <div class="badge">MVP</div>
                <div class="badge">Prototypage Chine</div>
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
                  <iframe allow="autoplay; clipboard-write; encrypted-media; gyroscope;" allowfullscreen
                          class="m-auto  aspect-video w-full  sm:p-8" frameborder="0"
                          src="https://www.youtube.com/embed/w72YwH1qXUs" title="YouTube video player"></iframe>
                </div>
              </template>
            </Modal>
          </figure>
        </div>
        <hr class="block mx-8 h-1 bg-theme rounded-full mb-1 sm:hidden">
        <!--End Poly Wild-->
        
        <!-- Start Poly Wild-->
        <div class="card bordered">
          <div class="card-body">
            <h3 class="card-title">SpectralGo.com</h3>
            <!--Badges-->
            <div class="flex-col">
              <div class="flex-wrap space-x-1 pb-2">
                <div class="badge badge-outline">Dévellopeur web</div>
                <div class="badge badge-secondary">News</div>
              </div>
              <div class="flex-wrap space-x-2">
                <div class="badge">Spectral Imaging</div>
                <div class="badge">Maching Learning</div>
                <div class="badge">Blockchain</div>
                <div class="badge">Supply Chain</div>
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
        <hr class="block mx-8 h-1 bg-theme rounded-full mb-1 sm:hidden">
        <!--End Poly Wild-->

        <!-- Start Woder.App-->
        <div class="card bordered col-span-1 sm:col-span-2 lg:col-span-1">
          <div class="card-body">
            <h3 class="card-title">Woder.app</h3>
            <!--Badges-->
            <div class="flex-col">
              <div class="space-x-2 pb-2">
                <div class="badge badge-outline">Dévellopeur web</div>
                <div class="badge badge-secondary px-2">App</div>
              </div>
              <div class="flex-wrap space-x-2">
                <div class="badge">C#</div>
                <div class="badge">Asp.net</div>
                <div class="badge">JS</div>
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
              <button class="btn btn-outline">
                <img alt="github icon" class="pr-3 h-5" src="../assets/icons/GitHub-Mark-Light-32px.png"/> Github
              </button>
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