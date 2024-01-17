<script setup>
import '@/assets/styles/contact.scss'
import TextWithIcon from '@/components/TextWithIcon.vue'

const clockContent = [
  'Konsultacje:',
  'Pon, śr, pt: 11:40 - 13:15',
  'Po wcześniejszym skontaktowaniu się',
]
const telephoneContent = ['+48 261-839-060', '+48 735-295-120']
const mailContent = ['patryk.serafin@wat.edu.pl']
const geoContent = ['Sztab', 'Pokój 254B']
</script>

<template>
  <div class="contact-container">
    <img
      src="@img/logo.png"
      alt="Logo firmy Neuroterapia Info Szczecinek"
      class="contact-logo"
    />
    <TextWithIcon
      :contentArray="clockContent"
      :imgName="`clock.svg`"
      :imgAlt="`Ikona zegarka`"
    />
    <TextWithIcon
      :contentArray="geoContent"
      :imgName="`geo-alt-fill.svg`"
      :imgAlt="`Ikona lokalizacji`"
    />
    <TextWithIcon
      :contentArray="telephoneContent"
      :imgName="`telephone.svg`"
      :imgAlt="`Ikona telefonu`"
    />
    <TextWithIcon
      :contentArray="mailContent"
      :imgName="`envelope-at-fill.svg`"
      :imgAlt="`Ikona koperty email`"
    />
  </div>
</template>
