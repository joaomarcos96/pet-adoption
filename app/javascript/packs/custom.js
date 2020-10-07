export default function ready(fn) {
  if (typeof fn !== 'function') {
    return;
  }

  if (document.readyState != 'loading') {
    fn();
  } else if (document.addEventListener) {
    document.addEventListener('DOMContentLoaded', fn);
  } else {
    document.attachEvent('onreadystatechange', function() {
      if (document.readyState != 'loading') {
        fn();
      }
    });
  }
}
