<template>
  <div
    class="container mt-64 flex justify-between items center mx-auto px-8 md:px-14 lg:px-24 w-full"
  >
    <section class="w-full">
      <h2 id="my-work" class="secondary-title">C# ASP.NET Core / Vuejs & React</h2>
      <!-- exemple text -->
      <div>
        <p class="section-paragraph">
          Je suis un programmeur autodidacte avec
          <span class="text-white">4 ans d’expérience.</span> J’aime construire
          et concevoir
          des produits innovants. Je recherche un poste de
          <span
            class="text-white"
          >
            Développeur Web Full Stack spécialisé en
            C#/.NET
          </span> où je pourrai apprendre et appliquer mes compétences. J’ai une expérience passée
          dans la vente et la gestion de projet, mais ma passion pour la
          <span
            class="text-white"
          >conception de produits</span> m’a
          poussé à apprendre la programmation. J’aime apprendre de nouvelles langues et faire
          de la vidéo expérimentale. J’aimerais trouver une équipe partageant une
          <span
            class="text-white"
          >
            passion pour
            l’entrepreneuriat et la programmation.
          </span>
        </p>
      </div>
      <div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-6 mt-6">
        <!-- Start Poly Wild-->
        <div class="card bordered">
          <div class="card-body flex-col justify-between">
            <div>
              <h3 class="card-title">Poly Wild</h3>
              <!--Badges-->
              <div class="flex-col">
                <div class="space-x-2 pb-2">
                  <div class="badge badge-outline">CEO</div>
                  <div class="badge badge-secondary px-2">Start-up</div>
                </div>
                <div class="flex-wrap space-x-2">
                  <div class="badge">Electronjs</div>
                  <div class="badge">React</div>
                  <div class="badge">ESP32</div>
                  <div class="badge">Prototyping</div>
                </div>
              </div>
            </div>
            <!--Text-->
            <p class="pt-4 grow">
              Jeu éducatif qui a pour mission d’enseigner, aux
              enfants, les conceptes de bases liés à l’intelligence
              artificielle.
            </p>
            <div class="card-actions">
              <!--Links-->
              <a class="btn btn-primary" href="http://www.polygonewild.com/">Website</a>
              <a
                class="btn btn-neutral hover:bg-info"
                href="https://www.facebook.com/polygonewild/"
              >Facebook</a>
            </div>
          </div>
          <figure>
            <img alt="educational toy" src="../assets/img/polywild.png" />
          </figure>
        </div>
        <hr class="block mx-8 h-1 bg-theme rounded-full mb-1 sm:hidden" />
        <!--End Poly Wild-->

        <!-- Start Poly Wild-->
        <div class="card bordered">
          <div class="card-body flex-col justify-between">
            <div>
              <h3 class="card-title">florianrenard.com</h3>
              <!--Badges-->
              <div class="flex-col">
                <div class="flex-wrap space-x-2 pb-2">
                  <div class="badge badge-outline">Dévellopeur web</div>
                  <div class="badge badge-secondary">Portfolio</div>
                </div>
                <div class="flex-wrap space-x-2">
                  <div class="badge">Docker</div>
                  <div class="badge">GCP</div>
                  <div class="badge">ASP.Net</div>
                  <div class="badge">Vuejs</div>
                </div>
              </div>
            </div>
            <!--Text-->
            <p class="pt-4 grow">
              Site web portfolio construit avec Vuejs et ASP.Net Core, hébergé sur GCP
              Cloud Run dans un conteneur docker et déployé automatiquement à l’aide
              de Github Workflows.
            </p>
            <div class="card-actions">
              <!--Links-->
              <a class="btn btn-primary" href="https://github.com/Spectralgo/MyPortfolio">
                <img
                  alt="github icon"
                  class="pr-3 h-5"
                  src="../assets/icons/GitHub-Mark-Light-32px.png"
                /> Github
              </a>
              <div class="btn btn-accent" @click="openModal">.Net Api</div>
            </div>

            <Modal ref="modal">
              <template v-slot:default>
                <div class="card" @click.self="closeModal">
                  <p class="text-xl p-2">
                    Le changement de couleur sera sauvgardé sur le serveur pour tous les
                    utilisateurs
                  </p>
                  <div
                    class="btn m-1 btn-primary"
                    @click="() => { defaultColor = 'bg-primary'; closeModal() }"
                  >VIOLET</div>
                  <div
                    class="btn m-1 btn-accent"
                    @click="() => { defaultColor = 'bg-accent'; closeModal() }"
                  >CYAN</div>
                  <div
                    class="btn m-1 btn-base-100"
                    @click="() => { defaultColor = 'bg-base-100'; closeModal() }"
                  >NOIR</div>
                  <div
                    class="btn m-1 btn-secondary"
                    @click="() => { defaultColor = 'bg-secondary'; closeModal() }"
                  >FUCHSIA</div>
                </div>
              </template>
            </Modal>
            <!--              <button class="btn btn-neutral hover:bg-error flex-1">Youtube add the  flex-1 to the github button</button>-->
          </div>
          <figure>
            <svg
              :class="[colorFetched ? defaultColor : '']"
              viewBox="0 0 485 485"
              xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink"
            >
              <g id="Layer_2" data-name="Layer 2">
                <g id="Layer_1-2" data-name="Layer 1">
                  <image
                    height="485"
                    width="485"
                    xlink:href="data:image/png;base64,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"
                  />
                </g>
              </g>
            </svg>
          </figure>
        </div>
        <hr class="block mx-8 h-1 bg-theme rounded-full mb-1 sm:hidden" />
        <!--End Poly Wild-->

        <!-- Start Woder.App-->
        <div class="card bordered col-span-1 sm:col-span-2 xl:col-span-1">
          <div class="card-body flex-col justify-between">
            <div>
              <h3 class="card-title">Woder.app</h3>
              <!--Badges-->
              <div class="flex-col">
                <div class="flex-wrap space-x-2 pb-2">
                  <div class="badge badge-outline">Dévellopeur web</div>
                  <div class="badge badge-secondary">App</div>
                </div>
                <div class="flex-wrap space-x-2">
                  <div class="badge">ASP.Net</div>
                  <div class="badge">IdentityServer4</div>
                  <div class="badge">EF Core</div>
                  <div class="badge">Nuxtjs</div>
                </div>
              </div>
            </div>
            <!--Text-->
            <p class="pt-4 grow">
              Application web moderne, à destination des fans de CrossFit. J’utilise
              ASP.Net Core (backend) pour l’API et Nuxtjs (frontend) pour l’interface
              utilisateur.
            </p>
            <div class="card-actions">
              <!--Links-->
              <!--              <button class="btn btn-primary">Website</button>-->
              <!--              <button class="btn btn-neutral hover:btn-error hover:text-white flex-1">Youtube</button>-->
              <a class="btn btn-primary" href="https://github.com/Spectralgo/CrossFit-Library">
                <img
                  alt="github icon"
                  class="pr-3 h-5"
                  src="../assets/icons/GitHub-Mark-Light-32px.png"
                /> Github
              </a>
            </div>
          </div>
          <figure>
            <img alt="dotnet logo" src="../assets/img/john-arano-h4i9G-de7Po-unsplash.jpg" />
          </figure>
        </div>
        <!--End Poly Wild-->
      </div>
    </section>
  </div>
</template>

<script>
import Modal from "./Modal.vue";
import axios from "axios";

export default {
  name: "MyWork",
  components: { Modal },
  data: () => ({
    colorFetched: false,
    defaultColor: ""
  }),
  beforeMount() {

    this.colorFetched = false
    axios.get("/api/home/color").then(res => {
      this.defaultColor = res.data;
      console.log(res.data)
    })

    this.colorFetched = true
  },
  methods: {
    openModal() {
      this.$refs.modal.openModal();
    },
    closeModal() {
      this.$refs.modal.closeModal();
      axios.put(`/api/home/color/${this.defaultColor}`)
    }
  }
}
</script>

<style scoped></style>