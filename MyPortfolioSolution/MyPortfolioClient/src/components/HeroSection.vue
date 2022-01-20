<template>
  <div id="HeroSection" class="container mt-16 flex justify-between items-center mx-auto">
    <div class="flex flex-wrap md:flex-nowrap">

      <!-- 1/3 section dot-nav -->
      <nav class="inline-block lg:mr-24 lg:w-4 fixed left-percentage hidden xl:block">
        <div class="absolute left-5p  transform -translate-x-1/2 space-y-6 mt-36">
          <a v-smooth-scroll class="nav-dot selected-circle block w-7 h-7 rounded-full border-4 border-nav bg-body"
             href="#HeroSection">
            <span class="absolute bg-black px-2 py-1 rounded-md ml-10 opacity-0">Home</span>
          </a>
          <a v-smooth-scroll class="nav-dot block w-7 h-7 rounded-full border-4 border-nav bg-body" href="#MyWork">
            <span class="absolute bg-black  px-2 py-1 rounded-md ml-10 opacity-0">Travail</span>
          </a>
          <a v-smooth-scroll class="nav-dot  block w-7 h-7 rounded-full border-4 border-nav bg-body" href="#MyClients">
            <span class="absolute bg-black px-2 py-1 rounded-md ml-10 opacity-0">Clients</span>
          </a>
          <a v-smooth-scroll class="nav-dot block w-7 h-7 rounded-full border-4 border-nav bg-body" href="#HireMe">
            <span class="absolute bg-black px-2 py-1 rounded-md ml-10 opacity-0">Contact</span>
          </a>
        </div>
      </nav>

      <!-- 2/3 section Call to action-->
      <div class="flex flex-wrap lg:ml-20 justify-center md:justify-start max-w-xl md:my-36">
        <h1 class="font-bold text-5xl md:text-6xl  text-center md:text-left mb-5">
          Construisons<br>
          un produit<br>
          innovant<br>
          de A à Z </h1>
        <h1 class="font-bold text-5xl md:text-6xl  text-center md:text-left mb-5">
          {{message_from_api}}</h1>

        <ul class="text-center md:text-left font-bold space-y-1 mb-5">
          <li><span class="text-accent">Dévelopeur Web</span> Full Stack</li>
          <li><span class="text-accent">Designer</span> de produits technologiques</li>
          <li><span class="text-accent">Manager</span> de projets innovants</li>
        </ul>

        <div class="w-full flex justify-center md:justify-start mt-2">
          <a v-smooth-scroll class="btn btn-primary capitalize" href="#MyWork">
            <svg class="mr-3" height="20" viewBox="0 0 32 32" width="20" xmlns="http://www.w3.org/2000/svg"><title>
              zoom</title>
              <g class="nc-icon-wrapper" fill="#ffffff">
                <path
                    d="M30.414,27.586,22.77,19.942a12.038,12.038,0,1,0-2.828,2.828l7.644,7.644a2,2,0,0,0,2.828-2.828ZM3,13A10,10,0,1,1,13,23,10.011,10.011,0,0,1,3,13Z"
                    fill="#ffffff"></path>
              </g>
            </svg>
            Mon travail</a>
        </div>
      </div>

      <!-- 3/3 section photo  -->

      <img alt="sig" class="w-11/12 sm:w-3/4 max-w-3xl mx-auto  2xl:relative 2xl:mr-52  md:absolute -mt-16 xl:-mt-5  right-0 -z-1 transform opacity-100 md:opacity-70 lg:opacity-100 "
           src="../assets/img/signatureFr.jpg">

      
    </div>

  </div>
</template>

<script setup>
import axios from "axios";
import {ref} from "vue"; 
let message_from_api  = ref("");
axios.get('/api/home/hello').then(res => message_from_api.value = res.data)

</script>

<style scoped>
.hero-quote {
  margin-top: 15%;
}
</style>