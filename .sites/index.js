const HOME_DOCUMENT = "/index.html";

export default {
  async fetch(request, env) {
    if (!env?.ASSETS) {
      return new Response("Static asset binding is unavailable.", { status: 500 });
    }

    const assetUrl = new URL(request.url);
    if (assetUrl.pathname === "/") {
      assetUrl.pathname = HOME_DOCUMENT;
    }

    const response = await env.ASSETS.fetch(
      new Request(assetUrl.toString(), request)
    );

    const headers = new Headers(response.headers);
    headers.set("Referrer-Policy", "strict-origin-when-cross-origin");
    headers.set("X-Content-Type-Options", "nosniff");

    return new Response(response.body, {
      status: response.status,
      statusText: response.statusText,
      headers
    });
  }
};
