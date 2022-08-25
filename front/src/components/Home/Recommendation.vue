<template>
  <div class="recommendation">
    <el-card class="detail-info" shadow="hover">
      <template #header>
        <div class="card-header">
          <span>{{ name }}({{ sname }})</span>
        </div>
      </template>
      <div class="details">
        <ul class="cardList">
          <li class="value">
            <div class="cardList-info">
              <p class="cardList-name" title="地区">地区</p>
              <el-scrollbar ref="scrollbar1">
                <p title="{{place}}" class="cardList-value">{{ place }}</p>
              </el-scrollbar>
            </div>
          </li>
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="界">界</p>
              <p title="{{kingdom}}" class="cardList-value">{{ kingdom }}</p>
            </div>
          </li>
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="门">门</p>
              <p title="{{phylum}}" class="cardList-value">{{ phylum }}</p>
            </div>
          </li>
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="纲">纲</p>
              <p title="{{classification}}" class="cardList-value">{{ classification }}</p>
            </div>
          </li>
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="地区描述">地区描述</p>
              <el-scrollbar ref="scrollbar2">
                <p title="{{placemess}}" class="cardList-value">{{ placemess }}</p>
              </el-scrollbar>
            </div>
          </li>
        </ul>
        <ul class="cardList">
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="目">目</p>
              <p title="{{order}}" class="cardList-value">{{ order }}</p>
            </div>
          </li>
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="科">科</p>
              <p title="family" class="cardList-value">{{ family }}</p>
            </div>
          </li>
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="属">属</p>
              <p title="genus" class="cardList-value">{{ genus }}</p>
            </div>
          </li>
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="环境">环境</p>
              <el-scrollbar ref="scrollbar3">
                <p title="environment" class="cardList-value">{{ environment }}</p>
              </el-scrollbar>
            </div>
          </li>
          <li>
            <div class="cardList-info">
              <p class="cardList-name" title="描述">描述</p>
              <el-scrollbar ref="scrollbar4">
                <p title="describe" class="cardList-value">{{describe }}</p>
              </el-scrollbar>
            </div>
          </li>
        </ul>
      </div>
    </el-card>
    <ul class="cards">
      <li class="card" v-for="shell in shells" :key="shell" @click="sendInfo(shell)">
        <h1>{{ shell.name }}</h1>
        <el-image style="width: 250px; height: 250px" :src="shell.imgUrl" fit="fill"></el-image>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  props: ['shellData'],
  name: "Recommendation",
  data() {
    return {
      realCount: 0,
      shells: [
        {
          imgUrl: "http://file.sarom.cn/ishell/public/000555-1.jpg",
          sname: "Cypraea arabica arabica",
          name: "阿拉伯宝螺",
          place: "台湾、大陆沿岸、 南沙群岛、日本、菲律宾、印度、澳大利亚",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "腹足纲",
          order: "中腹足目",
          family: "宝螺科",
          genus: "绶贝属",
          environment: "生活在热带、亚带浅海中，常在潮间带低潮线附近岩礁质的海底栖息，潮水退后，多隐人礁石块的下面、珊瑚礁的空隙间和洞穴内，为中国南海常见的种类。",
          describe: "阿拉伯宝螺（学名：Mauritia arabica arabica）是腹足纲宝螺科的软体动物。贝壳呈卵圆形，螺层内卷。壳口狭长，外唇和内唇有细齿，齿舌纽舌形。外套膜薄、二叶型，活体几乎完全覆盖贝壳。螺旋部至成体时几乎消失，成体无厣。壳面平滑而富有光泽，花纹色彩丰富。生活于热带和亚热带暖海区，从潮间带至较深的岩礁、珊瑚礁或泥沙海底均有其踪迹。主要以藻类或珊瑚动物等为食。此种的贝壳的拉丁文学名“arabica”其意义并不是来自阿拉伯，而是它的贝壳表面的花纹，像阿拉伯的文字，故易名阿文绶贝或阿拉伯宝螺。",
          placemess: "此种在中国沿海分布比较普通，如台湾和在大陆沿岸，北自福建厦门以南近海岛屿直至南沙群岛都有它们的踪迹。国外如北自日本南部向南经菲律宾，印度尼西亚至澳大利亚东北部；东自土阿莫土，塔希提向西经中太平洋岛屿至印度洋诸岛达东非沿岸(波斯湾、阿曼湾、红海至南非)等地都有它们的分布。"
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/002749-1.jpg",
          sname: "Paphia undulata",
          name: "波纹巴非蛤",
          place: "福建省,广东省,香港特别行政区,浙江省,台湾省,海南省",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "双壳纲",
          order: "帘蛤目",
          family: "帘蛤科",
          genus: "巴非蛤属",
          environment: "生于潮间带下数米深的浅海区。以泥沙海底为最多。栖息于沙质或沙泥质的潮间带及浅海，尤其是河口海域。以斧足挖掘沙泥，埋栖于滩涂，营底内的生活。每年的10至11月是它的繁殖期。",
          describe: "波纹横帘蛤也称为波纹巴非蛤，即海南著名的“芒果螺”，台湾称作波纹横帘蛤，是帘蛤目帘蛤科横帘蛤属的一种。",
          placemess: "红海世界分布至澳洲及日本中国分布海南、台湾。台湾分布台南市安平，高雄县，屏东县东港。"
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/000806-1.jpg",
          sname: "Murex pecten",
          name: "维纳斯骨螺",
          place: "台湾、中国、印尼、日本、菲律宾、澳洲",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "腹足纲",
          order: "新腹足目",
          family: "骨螺科",
          genus: "骨螺属",
          environment: "浅海泥沙质海底",
          describe: "维纳斯骨螺，即栉棘骨螺，栖息于浅海的砂底，以小型无脊椎动物为食。喜爱食牡蛎和海蛤，常危害贝类养殖。",
          placemess: "中国台湾，印度至太平洋、东海、南海、印尼等。"
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/MLSP101000301-1.jpg",
          sname: "Babylonia oreolata",
          name: "东风螺",
          place: "海南、福建、广东",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "腹足纲",
          order: "中副足目",
          family: "蛾螺科",
          genus: "无",
          environment: "东风螺的活动具有日伏夜出的习性，白天潜伏在沙泥中并露出水管，夜间四处觅食。",
          describe: "东风螺在广东俗称“花螺”、“海猪螺”和 “南风螺”。其肉质鲜美、酥脆爽口，是国内外市场十分畅销的优质海产贝类。我国的主要种类有方斑东风螺、泥东风螺和台湾东风螺三种。东风螺被认为是21世纪最有开发前景的海产养殖良种之一，己在东南沿海为养殖者接受并逐步形成生产规模。南海水产研究所2000-2002年在广东沿海开展了东风螺人工育苗养殖科研试验。",
          placemess: "东风螺属软体动物腹足纲蛾螺科，分布于中国东南沿海，东南亚及日本等。"
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/002208-1.jpg",
          sname: "Perna viridis",
          name: "翡翠股贻贝",
          place: "福建省,广东省,台湾省,海南省",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "双壳纲",
          order: "贻贝目",
          family: "贻贝科",
          genus: "股贻贝属",
          environment: "热带和亚热带种, 多附着在水流通畅的岩石上, 一般分布自低潮线附近至水深20m 左右",
          describe: "绿壳菜蛤是一种贻贝目、壳菜蛤科类生物，贝壳等壳，壳顶在前方，没有明显的雕刻。壳皮明显，某些种类毛状。壳内面有强烈的真珠光泽。分布于菲律宾、台湾。",
          placemess: "原产于菲律宾以南的热带海域，但本种会附在船底，随著台湾拆船业的发达(一九七O到一九八O年代)而可以在台湾沿海发现。台南以南、高雄中洲以至东港、枋寮，甚至於北部及西部沿海等地亦可发现。台湾分布台北县淡水，台北县八里，宜兰县，台南以南，台南市安平，台南县中洲，屏东县东港，枋寮，屏东县恒春半岛，屏东后湾，澎湖东部海域，小金门，金门后湖，金宁，金城，金沙，金湖，烈屿。"
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/000490-1.jpg",
          sname: "Charonia tritonis",
          name: "法螺",
          place: "台湾省,海南省",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "腹足纲",
          order: "中腹足目",
          family: "嵌线螺科",
          genus: "法螺属",
          environment: "无",
          describe: "法螺（学名：Charoniatritonis）：也称大法螺。贝壳大。壳1米，壳0米。螺层层。缝合线浅。螺旋部高，尖锥形，顶部常磨损。体螺层膨圆。每层具宽大光滑的螺肋和纵肿肋，肋间有细肋。缝合线下方的螺肋具结节突起。壳呈黄红色，具黄褐色或紫色鳞状花纹。壳口卵圆形，内桔红色。外唇向外延伸，具成对齿肋和褐色条纹；内唇有褐色条纹的褶襞。前沟向背方弯曲。肉食性壳类，",
          placemess: "菲律宾广布于印度—太平洋暖水区。如日本南部，新喀里多尼亚（各地），斐济群岛，波利尼西亚，夏威夷群岛，，澳大利亚（大堡礁西部至东部昆）。西沙群岛台湾（东北角，恒春半岛，兰屿，绿岛，小琉球屿，澎湖群岛）."
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/001328-1.jpg",
          sname: "Harpa major",
          name: "大杨桃螺",
          place: "台湾、印尼、马来西亚",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "腹足纲",
          order: "新腹足目",
          family: "杨桃螺科",
          genus: "杨桃螺属",
          environment: "浅海、沿岸",
          describe: "大杨桃螺是一种新腹足目杨桃螺科类生物，贝壳卵形，螺塔低，体螺层大，壳的纵肋或轴肋显著。壳口大，轴唇滑层厚，口盖退化或缺乏。分布于印度太平洋全海域、印尼、台湾。",
          placemess: "世界分布印度太平洋全海域、印尼台湾分布台北县贡寮乡蚊子坑，台北县贡寮乡龙洞，台湾东北角，屏东县东港，屏东县海口，高雄，澎湖"
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/002090-1.jpg",
          sname: "Nautilus pompilius",
          name: "鹦鹉螺",
          place: "台湾、中国、印尼",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "头足纲",
          order: "鹦鹉螺目",
          family: "鹦鹉螺科",
          genus: "鹦鹉螺属",
          environment: "深海",
          describe: "无",
          placemess: "无"
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/MLSP101200801-1.jpg",
          sname: "Cypraecassis rufa",
          name: "万宝螺",
          place: "台湾、中国、印尼、阿拉伯东部",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "腹足纲",
          order: "异足目",
          family: "唐冠螺科",
          genus: "万宝螺属",
          environment: "浅海",
          describe: "无",
          placemess: "无"
        },
        {
          imgUrl: "http://file.sarom.cn/ishell/public/002759-1.jpg",
          sname: "Callista chinensis",
          name: "中国仙女蛤",
          place: "福建省,广东省,浙江省,南海,台湾省",
          kingdom: "动物界",
          phylum: "软体动物门",
          classification: "双壳纲",
          order: "帘蛤目",
          family: "帘蛤科",
          genus: "仙女蛤属",
          environment: "无",
          describe: "中华文蛤（学名：Meretrixpetechialis），是帘蛤目帘蛤科文蛤属的一种。主要分布於韩国、台湾，常栖息在潮间带米泥沙底。",
          placemess: "国内分布从浙江到广东、台湾国外分布日本，西太平洋"
        },
      ],
      sname: "",
      name: "",
      place: "",
      kingdom: "",
      phylum: "",
      classification: "",
      order: "",
      family: "",
      genus: "",
      environment: "",
      placemess: "",
      describe: ""
    }
  },
  methods: {
    sendInfo(shell) {
      this.name = shell.name;
      this.sname = shell.sname;
      this.place = shell.place;
      this.kingdom = shell.kingdom;
      this.phylum = shell.phylum;
      this.classification = shell.classification;
      this.order = shell.order;
      this.family = shell.family;
      this.genus = shell.genus;
      this.environment = shell.environment;
      this.describe = shell.describe;
      this.placemess = shell.placemess;
      let _this = this;
      setTimeout(function () {
        _this.update();
      }, 100);

    },
    update() {
      this.$refs.scrollbar1.update();
      this.$refs.scrollbar2.update();
      this.$refs.scrollbar3.update();
      this.$refs.scrollbar4.update();
    },
    outClick(e) {
      if ($(e.target).parents(".recommendation").length === 0) {
        //向父组件发送关闭请求
        this.$emit("CloseRecommendation");
      }
    },
  },
  watch: {
    shellData() {
      this.shells = [];
      this.shells.push(this.shellData);
      if (this.shellData.img) {
        this.shells[0].imgUrl = this.shellData.img;
      } else {
        this.shells[0].imgUrl = "http://file.sarom.cn/ishell/public/noImg.png";
      }
      this.name = this.shells[0].name;
      this.sname = this.shells[0].sname;
      this.place = this.shells[0].place;
      this.kingdom = this.shells[0].kingdom;
      this.phylum = this.shells[0].phylum;
      this.classification = this.shells[0].classification;
      this.order = this.shells[0].order;
      this.family = this.shells[0].family;
      this.genus = this.shells[0].genus;
      this.environment = this.shells[0].environment;
      this.describe = this.shells[0].describe;
      this.placemess = this.shells[0].placemess;
    }
  },
  mounted() {
    document.addEventListener('mouseup', this.outClick);
    $.fn.commentCards = function () {
      return this.each(function () {
        let $this = $(this),
          $cards = $this.find('.card'),
          $current = $cards.filter('.card--current'),
          $next;
        $cards.on('click', function () {
          if (!$current.is(this)) {
            $cards.removeClass('card--current card--out card--next');
            $current.addClass('card--out');
            $current = $(this).addClass('card--current');
            $next = $current.next();
            $next = $next.length ? $next : $cards.first();
            $next.addClass('card--next');
          }

        });
        if (!$current.length) {
          $current = $cards.last();
          $cards.first().trigger('click');
        }
        $this.addClass('cards--active');
      });
    };
    this.name = this.shells[0].name;
    this.sname = this.shells[0].sname;
    this.place = this.shells[0].place;
    this.kingdom = this.shells[0].kingdom;
    this.phylum = this.shells[0].phylum;
    this.classification = this.shells[0].classification;
    this.order = this.shells[0].order;
    this.family = this.shells[0].family;
    this.genus = this.shells[0].genus;
    this.environment = this.shells[0].environment;
    this.describe = this.shells[0].describe;
    this.placemess = this.shells[0].placemess;
    $('.cards').commentCards();
  },
}
</script>

<style scoped>
div,
ul,
ol,
li,
h1,
h2,
p {
  margin: 0;
  padding: 0;
}

ul {
  list-style: none;
}

.recommendation {
  display: flex;
}

.detail-info {
  width: 100%;
  min-width: 500px;
  min-height: 400px;
}

.cards {
  position: relative;
  list-style-type: none;
  padding: 0;
  margin-left: -290px;
  max-width: 34em;
}

.card {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 2;

  background: #eeeeee;
  border-radius: 10px;
  padding: 20px;
  box-shadow: 0 0 20px #818181;
  transform: translateY(0) rotate(4deg) translateX(25px) scale(1);
  transform-origin: 0 0;

  transition: transform 0.6s cubic-bezier(0.8, 0.2, 0.1, 0.8) 0.1s, 0.4s;

  cursor: pointer;
  user-select: none;
}

.card:last-child {
  margin-bottom: 0;
}

.card--next {
  z-index: 5;
  transform: translateY(-25px) rotate(4deg) translateX(25px) scale(1);
}

.card--out {
  animation: card-out 0.6s cubic-bezier(0.8, 0.2, 0.1, 0.8);
  transform: translateY(-50px) rotate(8deg) translateX(55px) scale(0.95);
  z-index: 1;
  background: #eeeeee;
}

@keyframes card-out {
  0% {
    z-index: 20;
    transform: translateY(0px) rotate(-4deg);
  }
  50% {
    transform: translateY(-120%) rotate(-5deg) translateX(-40px);
  }
  80% {
    z-index: 1;
  }
  100% {
    transform: translateY(-50px) rotate(8deg) translateX(55px) scale(0.95);
  }
}

.card--current {
  cursor: auto;
  user-select: auto;
  z-index: 10;
  opacity: 1;
  background: #eeeeee;
  transform: rotate(-1deg) translateX(0%) scale(1);
}

.detail-info {
  background-color: rgba(144, 161, 177, 0.7);
  backdrop-filter: blur(6px);
  border: none;
}

.details {
  width: calc(100% - 300px);
}

.details .cardList {
  display: inline-block;
  margin-bottom: -1px;
  vertical-align: text-top;
  width: 50%;
}

.cardList-info {
  position: relative;
}

.cardList-name {
  display: inline;
  float: left;
  margin: 15px 0px 0px -100px;
  outline: 0 !important;
  width: 100px;
  word-wrap: normal;
}

.cardList-value {
  display: block;
  width: 100%;
  padding-top: 15px;
}

.el-scrollbar {
  --el-scrollbar-opacity: 0.3;
  --el-scrollbar-bg-color: #0c4dd0;
  --el-scrollbar-hover-opacity: 0.5;
  --el-scrollbar-hover-bg-color: #0c4ed2;
}

.cardList-name,
.cardList-value {
  font: 15px/15px Arial, sans-serif;
  text-indent: 10px;
  /*text-overflow: ellipsis;*/
  white-space: nowrap;
  height: 20px;
}

.cardList li {
  border-bottom: 1px dotted rgb(170, 161, 177);
  padding: 10px 0 10px 100px;
}
</style>