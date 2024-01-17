<script setup>
import '@/assets/styles/textWithIcon.scss'

const props = defineProps({
  contentArray: Array,
  imgName: String,
  imgAlt: String
})
</script>

<template>
  <div class="twi-container">
    <div class="twi-icon">
      <img :src="`./assets/icons/${imgName}`" :alt="imgAlt" />
    </div>
    <div class="twi-content">
      <p v-for="(contentText, index) in contentArray" :key="index">
        {{ contentText || `Nie załadowano jeszcze niezbędnych elementów` }}
      </p>
    </div>
  </div>
</template>
