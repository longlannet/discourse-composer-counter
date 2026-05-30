import Component from "@glimmer/component";
import ComposerCounter from "../../components/composer-counter";

export default class ShowBodyComposerCounter extends Component {
  get composer() {
    return this.args.outletArgs?.composer;
  }

  get isComposerEditor() {
    return this.args.outletArgs?.editorType === "composer" && this.composer;
  }

  <template>
    {{#if this.isComposerEditor}}
      {{#if settings.composer_counter_show_body}}
        <ComposerCounter
          @length={{this.composer.replyLength}}
          @minimumLength={{this.composer.minimumPostLength}}
        />
      {{/if}}
    {{/if}}
  </template>
}
