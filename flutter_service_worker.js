'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "99933acae1a30c25c68d9fab00e58ac9",
"index.html": "c8f9bada19b92e935b525ff56aa1e94a",
"/": "c8f9bada19b92e935b525ff56aa1e94a",
"main.dart.js": "0bd685fdf1a6a41432eabd722d2f8ea1",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "56128fc6ec7568b99d6fc24cfa34a218",
"assets/packages/ionicons/assets/fonts/Ionicons.ttf": "a48ca9e5bcc89fccac32592416234257",
"assets/packages/getwidget/icons/whatsapp.png": "30632e569686a4b84cc68169fb9ce2e1",
"assets/packages/getwidget/icons/slack.png": "19155b848beeb39c1ffcf743608e2fde",
"assets/packages/getwidget/icons/twitter.png": "caee56343a870ebd76a090642d838139",
"assets/packages/getwidget/icons/wechat.png": "ba10e8b2421bde565e50dfabc202feb7",
"assets/packages/getwidget/icons/youtube.png": "1bfda73ab724ad40eb8601f1e7dbc1b9",
"assets/packages/getwidget/icons/line.png": "da8d1b531d8189396d68dfcd8cb37a79",
"assets/packages/getwidget/icons/dribble.png": "1e36936e4411f32b0e28fd8335495647",
"assets/packages/getwidget/icons/pinterest.png": "d52ccb1e2a8277e4c37b27b234c9f931",
"assets/packages/getwidget/icons/linkedin.png": "822742104a63a720313f6a14d3134f61",
"assets/packages/getwidget/icons/facebook.png": "293dc099a89c74ae34a028b1ecd2c1f0",
"assets/packages/getwidget/icons/google.png": "596c5544c21e9d6cb02b0768f60f589a",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/simple_icons/fonts/SimpleIcons.ttf": "90580190a5349ea2d3a73ccca4c41e4a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "c6d40713880a1d5d5e243904f5802723",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "893779adf361c651acdf8f8af5d76f94",
"assets/AssetManifest.bin": "b495dbd630cbfd17e2d6de68ce7f760d",
"assets/fonts/MaterialIcons-Regular.otf": "58e62862a418b9f2a2c86c427cb1af47",
"assets/NOTICES": "8be04b005c88dc08de0e5a2e0b6d2da0",
"assets/assets/icons/leetcode.png": "242c48309e8df1bcb5a351c5bdb5705c",
"assets/assets/icons/gfg.png": "8734a7c48d8834b86db526c1c92fc56e",
"assets/assets/fonts/poppins-Bold.ttf": "08c20a487911694291bd8c5de41315ad",
"assets/assets/fonts/poppins-Regular.ttf": "093ee89be9ede30383f39a899c485a82",
"assets/assets/fonts/poppins-Light.ttf": "fcc40ae9a542d001971e53eaed948410",
"assets/assets/fonts/poppins-Medium.ttf": "bf59c687bc6d3a70204d3944082c5cc0",
"assets/assets/images/git.png": "5b2255699fcb506b570720cdbc8ade1b",
"assets/assets/images/android-studio.png": "b640488b883ade9cc40c3d60707edffe",
"assets/assets/images/vector2.png": "e06c96ed7420f6299f7bb9dcdfa047a1",
"assets/assets/images/tailwind.png": "3268e52580f6d02d8ef7ad25af352dc7",
"assets/assets/images/dsajava.png": "0ec046ed74bcd10a505a7426d1fb0cda",
"assets/assets/images/css.png": "13151a9703266bb29e3ad88f98efe51f",
"assets/assets/images/react.png": "856374b4fcd50249e03a242dbf944c03",
"assets/assets/images/geeksforgeeks.png": "0858aa6646a63bf1ff9c75af71ef38f2",
"assets/assets/images/myphoto.png": "91a32bccedfee14941d28457a8bfb973",
"assets/assets/images/leetcode.png": "b6aeb5d806234de566c1c6887cc25634",
"assets/assets/images/j.png": "f21733bc7eeb96db8f780527032e6075",
"assets/assets/images/leaderboard.png": "d3a1cf7fb2ad97a8f9b12cc52b8f3f6e",
"assets/assets/images/icons8-flutter-logo-144.png": "5c030bca1741485521cc112f47bdedc9",
"assets/assets/images/github.png": "50472625bd666f1693cc4ee9fd6dfe50",
"assets/assets/images/sorting.png": "fa16997f8c5a415881f3bf72090ef079",
"assets/assets/images/jsl.png": "ec2fbc40e208200c1365cb9c4187caff",
"assets/assets/images/vector1.png": "2065fb82561ab93babe451e57e92afdb",
"assets/assets/images/instaclone.png": "def91b87ba76e0895b3f4ea6341dce75",
"assets/assets/images/visualstudio.png": "8a67e9b0644001a7d99b4602d0fbd2d1",
"assets/assets/images/password.png": "83429d08baae6c58c83a145af952f2a2",
"assets/assets/images/linux.png": "e1e82f42a889005f38806051f50b58c9",
"assets/assets/images/chat.png": "bf9388960f685b845daa796db0dc33b3",
"assets/assets/images/java-logo.png": "be828ba9dc4c25a3c39af769a5835461",
"assets/assets/images/blinkit.png": "79308207fcb212644e33ba8962ae342c",
"assets/assets/images/flutter.png": "6637b6c64481c76692760d0729b9c10a",
"assets/assets/images/codeclash%2520.png": "fc466c67020b2cb1bdc507b723a2e681",
"assets/assets/images/javaimg.png": "b82c0d65877c828fe8d139b1e5eb393d",
"assets/assets/images/group14.png": "2b448ad596f42da110ca6345ff9ce516",
"assets/assets/images/java.png": "9f0bf18bdbacfd53b3be92714a76b3f6",
"assets/assets/images/javascript%2520.png": "054802423102ba35288b881be6eb0937",
"assets/assets/images/tailwindcss.png": "7ab4851ffca9804e4d4d32223610457a",
"assets/assets/images/rectangle.png": "ad8c69b09dd363c2a84dd553146f7e99",
"assets/assets/images/weatherapp.png": "7ad3f658b93057bc8ff1375b8380ba05",
"assets/assets/images/c.png": "97a64b97829826243ec537ee854c7d75",
"assets/assets/images/bootstrap.png": "04f5de00f6375cc56e5ee1b5d8654005",
"assets/assets/images/html.png": "d79c9866bfdf55d62467faf71f0a8c10",
"assets/assets/images/todo.png": "bc74a8280263cc44a7c693150e8f9be6",
"assets/AssetManifest.bin.json": "b23b3f3f161256b4e68c3da39dade92f",
"assets/AssetManifest.json": "22ce5429fb481d959f49347e64d77331",
"assets/FontManifest.json": "b52c49c299052746838fa1622a76fa9f",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"flutter_bootstrap.js": "6ffd8cc8101023c87e897122e14f4929",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"favicon.png": "5dcef449791fa27946b3d35ad8803796"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
