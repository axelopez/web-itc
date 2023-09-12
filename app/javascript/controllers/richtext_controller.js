import { Controller } from "@hotwired/stimulus"
import suneditor from 'suneditor'
import plugins from 'suneditor/src/plugins'
// Connects to data-controller="richtext"
export default class extends Controller {

  connect() {
    suneditor.create('blog_contenido', {
      plugins: plugins,
      buttonList: [
          ['undo', 'redo'],
          ['font', 'fontSize', 'formatBlock'],
          ['paragraphStyle', 'blockquote'],
          ['bold', 'underline', 'italic', 'strike', 'subscript', 'superscript'],
          ['fontColor', 'hiliteColor', 'textStyle'],
          ['removeFormat'],
          '/', // Line break
          ['outdent', 'indent'],
          ['align', 'horizontalRule', 'list', 'lineHeight'],
          ['table', 'link', 'image', 'video', 'audio' /** ,'math' */], // You must add the 'katex' library at options to use the 'math' plugin.
          /** ['imageGallery'] */ // You must add the "imageGalleryUrl".
          ['fullScreen', 'showBlocks', 'codeView'],
          ['preview', 'print'],
          //['save', 'template'],
          /** ['dir', 'dir_ltr', 'dir_rtl'] */ // "dir": Toggle text direction, "dir_ltr": Right to Left, "dir_rtl": Left to Right
      ]
  });
   
  }
}
