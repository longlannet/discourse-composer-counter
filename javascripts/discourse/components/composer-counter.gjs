import Component from "@glimmer/component";

export default class ComposerCounter extends Component {
  get length() {
    return this.args.length || 0;
  }

  get minimumLength() {
    return this.args.minimumLength || 0;
  }

  get missingCharacters() {
    return Math.max(this.minimumLength - this.length, 0);
  }

  get isInsufficient() {
    return this.missingCharacters > 0;
  }

  get shouldShow() {
    return (
      this.isInsufficient || !settings.composer_counter_hide_when_sufficient
    );
  }

  formatTemplate(template) {
    return template.replace(/%\{(count|current|minimum|remaining)\}/g, (_, key) => {
      return {
        count: this.missingCharacters,
        current: this.length,
        minimum: this.minimumLength,
        remaining: this.missingCharacters,
      }[key];
    });
  }

  get text() {
    return this.formatTemplate(
      settings.composer_counter_template || "%{current} / %{minimum}"
    );
  }

  <template>
    {{#if this.shouldShow}}
      <div class="composer-counter {{if this.isInsufficient 'more-required'}}">
        {{this.text}}
      </div>
    {{/if}}
  </template>
}
