import Component from "@glimmer/component";
import { service } from "@ember/service";
import ComposerCounter from "../../components/composer-counter";

export default class ShowTitleComposerCounter extends Component {
  @service siteSettings;

  get composer() {
    return this.args.outletArgs?.composer;
  }

  get titleRequiredLength() {
    return this.composer?.archetypeId === "private_message"
      ? this.siteSettings.min_personal_message_title_length
      : this.siteSettings.min_topic_title_length;
  }

  <template>
    {{#if this.composer}}
      {{#if settings.composer_counter_show_title}}
        <ComposerCounter
          @length={{this.composer.titleLength}}
          @minimumLength={{this.titleRequiredLength}}
        />
      {{/if}}
    {{/if}}
  </template>
}
