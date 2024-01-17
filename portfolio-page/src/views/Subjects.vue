<script setup>
import "@/assets/styles/subjects.scss";
import SingleSubject from "@/components/SingleSubject.vue";
import json from "../../subjects/subjects.json";

json.forEach((x) => {
  console.log(x);
});
</script>

<template>
  <div class="subjects-container">
    <SingleSubject
      v-for="element in json"
      :shortName="element.shortName"
      :subjectName="element.subjectName"
      :subjectDescription="element.subjectDescription"
      :subjectFiles="element.subjectFiles"
      :subjectLinks="element.subjectLinks"
    />
  </div>
</template>
