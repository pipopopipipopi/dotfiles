{
  home.file.vesktop = {
    target = ".config/vesktop/themes/system24_rosepine.css";
    text = ''
      /**
       * @name system24
       * @description A tui-style discord theme.
       * @author refact0r
       * @version 1.0.0
       * @invite nz87hXyvcy
       * @website https://github.com/refact0r/system24
       * @source https://github.com/refact0r/system24/blob/master/system24.theme.css
       * @authorId 508863359777505290
       * @authorLink https://www.refact0r.dev
      */

      /* import theme modules */
      @import url('https://refact0r.github.io/system24/src/main.css'); /* main theme css. DO NOT REMOVE */
      @import url('https://refact0r.github.io/system24/src/unrounding.css'); /* gets rid of all rounded corners. remove if you want rounded corners. */

      /* customize things here */
      :root {
        --font: 'DM Mono'; /* UI font name. it must be installed on your system. */
        letter-spacing: 0; /* decreases letter spacing for better readability. */
        font-weight: 400; /* UI font weight. */
        --label-font-weight: 400; /* font weight for panel labels. */
        --corner-text: 'system24'; /* custom text to display in the corner. only works on windows. */
        --pad: 16px; /* padding between panels. */
        --txt-pad: 10px; /* padding inside panels to prevent labels from clipping */
        --panel-roundness: 0px; /* corner roundness of panels. ONLY WORKS IF unrounding.css IS REMOVED (see above). */

        /* background colors */
        --bg-0: #191724; /* main background color. */
        --bg-1: #1f1d2e; /* background color for secondary elements like code blocks, embeds, etc. */
        --bg-2: #26233a; /* color of neutral buttons. */
        --bg-3: #403d52; /* color of neutral buttons when hovered. */

        /* state modifiers */
        --hover: color-mix(in srgb, var(--bg-3), transparent 60%); /* color of hovered elements. */
        --active: color-mix(in srgb, var(--bg-3), transparent 80%); /* color of elements when clicked. */
        --selected: var(--active); /* color of selected elements. */

        /* text colors */
        --txt-dark: var(--bg-0); /* color of dark text on colored backgrounds. */
        --txt-link: var(--rose); /* color of links. */
        --txt-0: #ffffff; /* color of bright/white text. */
        --txt-1: #e0def4; /* main text color. */
        --txt-2: #908caa; /* color of secondary text like channel list. */
        --txt-3: #6e6a86; /* color of muted text. */

        /* accent colors */
        --acc-0: var(--rose); /* main accent color. */
        --acc-1: var(--rose-1); /* color of accent buttons when hovered. */
        --acc-2: var(--rose-2); /* color of accent buttons when clicked. */

        /* borders */
        --border-width: 2px; /* panel border thickness. */
        --border-color: var(--bg-2); /* panel border color. */
        --border-hover-color: var(--acc-0); /* panel border color when hovered. */
        --border-transition: 0.2s ease; /* panel border transition. */

        /* status dot colors */
        --online-dot: var(--green); /* color of online dot. */
        --dnd-dot: var(--pink); /* color of do not disturb dot. */
        --idle-dot: var(--yellow); /* color of idle dot. */
        --streaming-dot: var(--purple); /* color of streaming dot. */

        /* mention/ping and message colors */
        --mention-txt: var(--acc-0); /* color of mention text. */
        --mention-bg: color-mix(in oklch, var(--acc-0), transparent 90%); /* background highlight of mention text. */
        --mention-overlay: color-mix(in oklch, var(--acc-0), transparent 90%); /* overlay color of messages that mention you. */
        --mention-hover-overlay: color-mix(in oklch, var(--acc-0), transparent 95%); /* overlay color of messages that mention you when hovered. */
        --reply-overlay: var(--active); /* overlay color of message you are replying to. */
        --reply-hover-overlay: var(--hover); /* overlay color of message you are replying to when hovered. */

        /* color shades */
        --pink: oklch(69.77% 0.1565 4.22);
        --pink-1: oklch(59.77% 0.1565 4.22);
        --pink-2: oklch(49.77% 0.1565 4.22);
        --purple: oklch(77.6% 0.0945 304.99);
        --purple-1: oklch(67.6% 0.0945 304.99);
        --purple-2: oklch(57.6% 0.0945 304.99);
        --cyan: oklch(52.77% 0.0793 227.72);
        --yellow: oklch(84.29% 0.11 74.6);
        --green: oklch(82.19% 0.0543 209.56);
        --green-1: oklch(72.19% 0.0543 209.56);
        --green-2: oklch(62.19% 0.0543 209.56);
        --rose: oklch(83.63% 0.0544 21.14);
        --rose-1: oklch(73.63% 0.0544 21.14);
        --rose-2: oklch(63.63% 0.0544 21.14);
      }
    '';
  };
}
