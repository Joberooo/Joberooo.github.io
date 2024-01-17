<script setup>
import '@/assets/styles/menu.scss'
import { watch, ref } from 'vue'
import { useRoute, useRouter } from 'vue-router'
import menuConfig from './menuConfig.json'

const route = useRoute()
const router = useRouter()
const selected = ref(null)
const ifUnrolled = ref(false)

const select = (path) => {
  router.push(path)
  ifUnrolled.value = false
}

const toogleMenu = () => {
  ifUnrolled.value = !ifUnrolled.value
}

watch(
  route,
  (to, from) => {
    selected.value = to.name
  },
  { immediate: true }
)
</script>

<template>
  <nav>
    <a href="/" class="logo"><img src="@img/logo-rbg.png" alt="Logo" /></a>
    <div
      id="toogler"
      @click="toogleMenu()"
      class="menu-btn"
      :class="{ unrolledToogler: ifUnrolled == true }"
    ></div>
    <menu :class="{ unrolledMenu: ifUnrolled == true }">
      <ul class="list">
        <li
          v-for="(item, index) in menuConfig"
          :key="index"
          :class="{ selected: selected == item.name }"
          @click="select(item.path)"
        >
          {{ item.pl }}
        </li>
      </ul>
    </menu>
  </nav>
</template>
