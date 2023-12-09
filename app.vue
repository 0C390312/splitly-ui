<template>
    <UContainer>
        <UCard class="mt-10">
            <template #header>
                <div class="flex justify-between">
                    <h1>Welcome to Splitly</h1>
                    <ULink to="https://www.youtube.com/watch?v=dQw4w9WgXcQ" active-class="text-primary"
                        inactive-class="text-gray-500 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200">press
                        me</ULink>
                    <ColorScheme>
                        <USelect v-model="$colorMode.preference" :options="['system', 'light', 'dark']" />
                    </ColorScheme>
                </div>
            </template>
            <UButton :ui="{
                strategy: 'override',
                color: {
                    white: {
                        solid: 'bg-white dark:bg-gray-900'
                    }
                }
            }" icon="i-heroicons-book-open" to="https://ui.nuxt.com" target="_blank"
            :disabled="true">Open Nuxt UI Documentation
            </UButton>
        </UCard>
    </UContainer>
    <my-template />
</template>
