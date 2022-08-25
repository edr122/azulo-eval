<template>
  <div class="app">
    <AirportList/>
  </div>
</template>

<script lang="ts">
import { defineComponent } from 'vue';
import AirportList from './components/AirportList.vue';

export default defineComponent({
  name: 'App',
  components: {AirportList }
});
</script>

<style>
</style>
