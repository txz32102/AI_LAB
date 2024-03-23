<script>
</script>

<style lang="scss">
  @import 'define';

  #header {
    height: 50px;
    display: flex;
    padding: 0 20px;
    align-items: center;
    background: $brown-dark;
    justify-content: space-between;
  }

  #logo {
    display: flex;
    align-items: baseline;
  }

  #logo-text {
    font-size: 2rem;
    color: white;
    font-family: 'Fredoka One';
    margin-right: 10px;
  }

  #logo-icon {
    width: 26px;
    margin-right: 10px;
  }

  #logo-tagline {
    font-size: 1.5rem;
    color: $brown-light;
    font-family: 'Neucha';
  }

  .icons {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    color: white;

    :not(:last-child) {
      margin-right: 15px;
    }
  }

  .icon {
    font-size: 1.5rem;
    display: flex;
    align-items: center;
    color: white;
  }
</style>

<div id="header">
  <div id="logo">
    <div id="logo-icon">
      <img src="PUBLIC_URL/figures/dodrio-logo.svg" alt="logo" />
    </div>
    <div id="logo-text">Transformer 模型</div>

    <div id="logo-tagline">可视化的transformer模型</div>
  </div>

  <div class="icons">
    <a class="icon-a" target="_blank" href="https://arxiv.org/abs/2103.14625">
      <div class="icon" title="Research paper">
        <i class="fas fa-file-pdf" />
      </div>
    </a>

    <a target="_blank" href="https://youtu.be/uboTKqPNU5Y">
      <div class="icon" title="Demo video">
        <i class="fab fa-youtube" />
      </div>
    </a>

    <a target="_blank" href="https://github.com/txz32102/dodrio">
      <div class="icon" title="Open-source code">
        <i class="fab fa-github" />
      </div>
    </a>
  </div>
</div>
