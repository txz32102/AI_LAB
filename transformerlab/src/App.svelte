<script>
  import Main from './Main.svelte';
  import GraphView from './GraphView.svelte';
  import Saliency from './Saliency.svelte';
  import CircleView from './CircleView.svelte';
  import GridView from './GridView.svelte';
  import RadialView from './RadialView.svelte';
</script>

<svelte:head>
  <script
    type="module"
    src="https://unpkg.com/recommender-overlay/dist/recommender-overlay.es.js"
  ></script>
</svelte:head>

<div class="app-page">
  <!-- <div class='saliency'>
    <GraphView />
  </div> -->
  <Main />
</div>
