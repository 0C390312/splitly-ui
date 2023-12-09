// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  modules: ["@nuxt/ui"],
  runtimeConfig: {
    public: {
      SERVER_URL: process.env.SERVER_URL || "http://localhost:8280"
    },
  },
});
