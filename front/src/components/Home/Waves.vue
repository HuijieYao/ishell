<template>
  <svg
    class="waves"
    xmlns="http://www.w3.org/2000/svg"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    viewBox="0 24 150 28"
    preserveAspectRatio="none"
    shape-rendering="auto"
  >
    <defs>
      <path
        id="gentle-wave"
        d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"
      />
      <linearGradient id="c1" x1="0%" y1="0%" x2="0%" y2="100%">
        <stop offset="0%" style="stop-color:rgb(98, 126, 152); stop-opacity:0.3" />
        <stop offset="30%" style="stop-color:rgb(255, 255, 255); stop-opacity:0.3" />
      </linearGradient>
      <linearGradient id="c2" x1="0%" y1="0%" x2="0%" y2="100%">
        <stop offset="0%" style="stop-color:rgb(98, 126, 152); stop-opacity:0.5" />
        <stop offset="30%" style="stop-color:rgb(255, 255, 255); stop-opacity:0.5" />
      </linearGradient>
      <linearGradient id="c3" x1="0%" y1="0%" x2="0%" y2="100%">
        <stop offset="0%" style="stop-color:rgb(98, 126, 152); stop-opacity:0.7" />
        <stop offset="30%" style="stop-color:rgb(255, 255, 255); stop-opacity:0.7" />
      </linearGradient>
      <linearGradient id="c4" x1="0%" y1="0%" x2="0%" y2="100%">
        <stop offset="0%" style="stop-color:rgb(98, 126, 152); stop-opacity:1" />
        <stop offset="32%" style="stop-color:rgb(255, 255, 255); stop-opacity:1" />
      </linearGradient>
    </defs>
    <g class="parallax">
      <use xlink:href="#gentle-wave" x="77" y="0" style="fill:url(#c1)" />
      <use xlink:href="#gentle-wave" x="20" y="3" style="fill:url(#c2)" />
      <use xlink:href="#gentle-wave" x="150" y="5" style="fill:url(#c3)" />
      <use xlink:href="#gentle-wave" x="48" y="7" style="fill:url(#c4)" />
    </g>
  </svg>
</template>

<script>
export default {
  name: "Waves",
}
</script>

<style scoped>
</style>