import { createApp } from 'vue'
import VueSmoothScroll from 'v-smooth-scroll'
import axios from 'axios'
import VueAxios from 'vue-axios'
import App from './App.vue'
import './index.css'

createApp(App).use(VueSmoothScroll).use(VueAxios, axios).mount('#app')
function updateDotNav() {
    const titles = [...document.querySelectorAll('h1, h2')].sort((a,b)=>{
        return Math.abs(a.getBoundingClientRect().top) - Math.abs(b.getBoundingClientRect().top);
    });

    document.querySelectorAll(".selected-circle").forEach(c => c.classList.remove("selected-circle"));

    document.querySelectorAll(".nav-dot")[[...document.querySelectorAll('h1,h2')].indexOf(titles[0])].classList.add("selected-circle");
}
updateDotNav()
window.addEventListener('scroll', () => {
    updateDotNav()
})