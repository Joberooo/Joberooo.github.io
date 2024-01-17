<script setup>
import "@/assets/styles/singleSubject.scss";
import { ref } from "vue";

const props = defineProps({
  shortName: String,
  subjectName: String,
  subjectDescription: Array,
  subjectFiles: Array,
  subjectLinks: Array,
});

const ifUnrolled = ref(true);

const toogleContent = () => {
  ifUnrolled.value = !ifUnrolled.value;
};
</script>

<template>
  <div class="single-subject">
    <h3 @click="toogleContent">
      {{ subjectName || `Nie załadowano jeszcze niezbędnych elementów` }}
    </h3>
    <div class="toggle-arrow">{{ ifUnrolled ? "&#8593;" : "&#8595;" }}</div>
    <div
      class="single-subject-content"
      :class="{ unrolled: ifUnrolled == true }"
    >
      <p v-for="element in subjectDescription">
        {{ element || `Nie załadowano jeszcze niezbędnych elementów` }}
      </p>
      <div v-if="subjectFiles.length > 0 && shortName" class="subject-files">
        <i>Pliki do pobrania:</i>
        <a
          v-for="file in subjectFiles"
          v-bind:href="'../../subjects/' + shortName + '/' + file.fileName"
          target="_blank"
          download
          >{{ file.title }}</a
        >
      </div>
      <div v-if="subjectLinks.length > 0" class="subject-links">
        <i>Przydatne linki:</i>
        <a
          v-for="link in subjectLinks"
          v-bind:href="link.link"
          target="_blank"
          >{{ link.title }}</a
        >
      </div>
    </div>
  </div>
</template>
