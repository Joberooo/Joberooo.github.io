<script setup>
import Menu from '@/components/layout/Menu.vue'
import Footer from '@/components/layout/Footer.vue'
</script>

<template>
  <Menu />
  <main>
    <div class="main-container" id="main-container">
      <router-view />
    </div>
  </main>
  <Footer />
</template>
