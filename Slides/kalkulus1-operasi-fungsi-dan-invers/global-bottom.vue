<script setup>
function toggleFullscreen() {
  if (!document.fullscreenElement) {
    document.documentElement.requestFullscreen().catch(() => {})
  } else {
    if (document.exitFullscreen) {
      document.exitFullscreen().catch(() => {})
    }
  }
}
</script>

<template>
  <!-- Floating Navigation Controls with Warm High-Contrast Styling -->
  <div class="fixed bottom-3.5 right-6 z-50 flex items-center gap-2 p-1.5 rounded-xl bg-[#EDE4D8] border border-[#D6C5B3] shadow-md select-none font-sans text-[13px]">
    <!-- Home Button -->
    <button
      @click="$slidev.nav.go(1)"
      title="Kembali ke Slide Pertama (Home)"
      class="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-[#FAF8F5] hover:bg-[#C2542D] text-[#23272E] hover:text-white border border-[#D6C5B3] transition-colors duration-150 font-semibold shadow-sm active:scale-95"
    >
      <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
      </svg>
      <span>Home</span>
    </button>

    <!-- Previous Button -->
    <button
      @click="$slidev.nav.prev()"
      title="Slide Sebelumnya (Previous)"
      class="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-[#FAF8F5] hover:bg-[#C2542D] text-[#23272E] hover:text-white border border-[#D6C5B3] transition-colors duration-150 font-semibold shadow-sm active:scale-95"
    >
      <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M15 19l-7-7 7-7" />
      </svg>
      <span>Prev</span>
    </button>

    <!-- Slide Counter Badge -->
    <div class="px-2.5 py-1 text-xs font-bold text-[#585F6D] bg-[#F5EFEB] rounded-md border border-[#D6C5B3]">
      {{ $slidev.nav.currentPage }} / {{ $slidev.nav.total }}
    </div>

    <!-- Next Button -->
    <button
      @click="$slidev.nav.next()"
      title="Slide Berikutnya (Next)"
      class="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-[#FAF8F5] hover:bg-[#C2542D] text-[#23272E] hover:text-white border border-[#D6C5B3] transition-colors duration-150 font-semibold shadow-sm active:scale-95"
    >
      <span>Next</span>
      <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M9 5l7 7-7 7" />
      </svg>
    </button>

    <!-- Fullscreen Button -->
    <button
      @click="toggleFullscreen"
      title="Layar Penuh (Fullscreen - tombol F)"
      class="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-[#FAF8F5] hover:bg-[#226343] text-[#23272E] hover:text-white border border-[#D6C5B3] transition-colors duration-150 font-semibold shadow-sm active:scale-95"
    >
      <svg xmlns="http://www.w3.org/2000/svg" class="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2">
        <path stroke-linecap="round" stroke-linejoin="round" d="M4 8V4m0 0h4M4 4l5 5m11-5h-4m4 0v4m0-4l-5 5M4 16v4m0 0h4m-4 0l5-5m11 5l-5-5m5 5v-4m0 4h-4" />
      </svg>
      <span>Layar Penuh</span>
    </button>
  </div>
</template>
