<template>
  <div class="tag-cloud">
    <div id="tc">
      <svg :width="width" :height="height" @mousemove="listener($event)">
        <a v-for="tag in tags" :key="tag">
          <text
            :x="tag.x"
            :y="tag.y"
            :font-size="20 * (600/(600-tag.z))"
            :fill-opacity="((400+tag.z)/600)"
            @click="sendIndex(tag.index)"
          >{{ tag.text }}</text>
        </a>
      </svg>
    </div>
  </div>
</template>

<script>
export default {
  name: "TagCloud",
  data() {
    return {
      width: 500,
      height: 500,
      tagsNum: 13,
      RADIUS: 200,
      speedX: Math.PI / 360,
      speedY: Math.PI / 360,
      tags: [
        { text: "1995", index: 0 },
        { text: "1997", index: 1 },
        { text: "1999", index: 2 },
        { text: "2001", index: 3 },
        { text: "2003", index: 4 },
        { text: "2005", index: 5 },
        { text: "2007", index: 6 },
        { text: "2009", index: 7 },
        { text: "2011", index: 8 },
        { text: "2013", index: 9 },
        { text: "2015", index: 10 },
        { text: "2017", index: 11 },
        { text: "2019", index: 12 },
      ]
    }
  },
  computed: {
    CX() {
      return this.width / 2 - 20;
    },
    CY() {
      return this.height / 2;
    }
  },
  // 初始化标签位置
  created() {
    let tags = [];
    for (let i = 0; i < this.tagsNum; i++) {
      let tag = {};
      let k = -1 + (2 * (i + 1) - 1) / this.tagsNum;
      let a = Math.acos(k);
      let b = a * Math.sqrt(this.tagsNum * Math.PI)
      tag.text = this.tags[i].text;
      tag.x = this.CX + this.RADIUS * Math.sin(a) * Math.cos(b);
      tag.y = this.CY + this.RADIUS * Math.sin(a) * Math.sin(b);
      tag.z = this.RADIUS * Math.cos(a);
      tag.index = this.tags[i].index
      tags.push(tag)
    }
    this.tags = tags;
  },
  // 使球开始旋转
  mounted() {
    setInterval(() => {
      this.rotateX(this.speedX);
      this.rotateY(this.speedY);
    }, 17)
  },
  unmounted() {
    this.$mybus.off("sendYearIndex");
  },
  methods: {
    rotateX(speedX) {
      const cos = Math.cos(speedX);
      const sin = Math.sin(speedX);
      for (let tag of this.tags) {
        const y1 = (tag.y - this.CY) * cos - tag.z * sin + this.CY;
        const z1 = tag.z * cos + (tag.y - this.CY) * sin;
        tag.y = y1;
        tag.z = z1;
      }
    },
    rotateY(speedY) {
      const cos = Math.cos(speedY);
      const sin = Math.sin(speedY);
      for (let tag of this.tags) {
        const x1 = (tag.x - this.CX) * cos - tag.z * sin + this.CX;
        const z1 = tag.z * cos + (tag.x - this.CX) * sin;
        tag.x = x1;
        tag.z = z1;
      }
    },
    listener(event) {//响应鼠标移动
      const x = event.clientX - this.CX;
      const y = event.clientY - this.CY;
      this.speedX = x * 0.0001 > 0 ? Math.min(this.RADIUS * 0.00002, x * 0.0001) : Math.max(-this.RADIUS * 0.00002, x * 0.0001);
      this.speedY = y * 0.0001 > 0 ? Math.min(this.RADIUS * 0.00002, y * 0.0001) : Math.max(-this.RADIUS * 0.00002, y * 0.0001);
    },
    // 发送年份标识
    sendIndex(index) {
      this.$mybus.emit("sendYearIndex", index);
    },
  }
}
</script>

<style scoped>
.tag-cloud {
  min-width: 500px;
}

a:hover {
  cursor: pointer;
}
</style>