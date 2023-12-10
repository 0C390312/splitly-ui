<script setup>
import { ref, computed } from "vue";

const count = ref(0)
const data = ref([])
const runtimeConfig = useRuntimeConfig()
const baseUrl = runtimeConfig.public.serverUrl
onMounted(() => {
    console.log('base url is: ', baseUrl)
})

const config = useRuntimeConfig()

console.log('Runtime config:', config)
if (process.server) {
    console.log('API secret:', config.apiSecret)
}

function generate() {
    fetch(`${baseUrl}/generate-people?count=${count.value}`)
        .then(res => res.json())
        .then(res => data.value = res)
}
</script>

<template>
    <UContainer>
        <UCard class="mt-4" color="pink">
            <template #header>
                <div class="flex flex-row mr-4">
                    <div class="flex-none mr-4">People count to generate: </div>
                    <div class="flex-initial w-20">
                        <UInput v-model="count" placeholder="count..." variant="outline" color="primary" />
                    </div>
                    <div class="flex-initial ml-3">
                        <UButton @click="generate" icon="i-heroicons-beaker">GO!</UButton>
                    </div>
                    <div class="flex-initial ml-3"> {{ count }}</div>
                </div>
            </template>

            <div class="flex gap-4">
                <UTable :rows="data" />
                <div class="grid grid-cols-3 gap-4">
                    <div v-for="(item, index) in  data " :key="index" class="shadow-xl">
                        <UCard :ui="{ background: 'bg-gray-200 dark:bg-gray-800' }">
                            <p>ID: {{ item.id }}</p>
                            <p>First name: {{ item.firstname }}</p>
                            <p>Last name: {{ item.lastname }}</p>
                            <p>Age: {{ item.age }}</p>
                            <p>City of Birth: {{ item.cityOfBirth }}</p>
                        </UCard>
                    </div>
                </div>
            </div>

        </UCard>
    </UContainer>
</template>
