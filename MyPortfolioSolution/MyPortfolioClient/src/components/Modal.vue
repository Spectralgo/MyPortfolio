<template>
  <TransitionRoot appear :show="isOpen" as="template">
    <Dialog as="div" @close="closeModal">
      <div class="fixed inset-0 z-10 overflow-y-auto">
        <div class="min-h-screen px-4 text-center">
          <TransitionChild
              as="template"
              enter="duration-300 ease-out"
              enter-from="opacity-0"
              enter-to="opacity-100"
              leave="duration-200 ease-in"
              leave-from="opacity-100"
              leave-to="opacity-0"
          >
            <DialogOverlay class="fixed inset-0" />
          </TransitionChild>
          <span class="inline-block h-screen align-middle" aria-hidden="true">&#8203;</span>
          <TransitionChild
              as="template"
              enter="duration-300 ease-out"
              enter-from="opacity-0 scale-95"
              enter-to="opacity-100 scale-100"
              leave="duration-200 ease-in"
              leave-from="opacity-100 scale-100"
              leave-to="opacity-0 scale-95"
          >
            <div
                class="inline-block w-full my-8 overflow-hidden align-middle transition-all transform bg-base-200 shadow-xl rounded-2xl"
            >
            <div  @click="closeModal">
<svg xmlns="http://www.w3.org/2000/svg" class="cursor-pointer z-30 h-16 w-16  hover:opacity-100 hover:h-20 hover:w-20 hover:bg-primary-focus  ease-in-out duration-300 hover:mt-8 m-auto  rounded-full" fill="none" viewBox="0 0 24 24" stroke="currentColor">
  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" />
</svg>
            </div>
              <slot></slot> <!-- slot for forms -->
            </div>
          </TransitionChild>
        </div>
      </div>
    </Dialog>
  </TransitionRoot>
</template>

<script setup>
import { ref, watch, defineExpose } from 'vue'
import {
  TransitionRoot,
  TransitionChild,
  Dialog,
  DialogOverlay,
  DialogTitle,
} from '@headlessui/vue'

const isOpen = ref(false)

const closeModal =  function() {
  isOpen.value = false
}
const openModal = function() {
  isOpen.value = true
}

defineExpose({
  openModal,
  closeModal
})

</script>
