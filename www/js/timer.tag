<timer>
  
  <div class="panel panel-default text-center">
      <h1 class="panel-body col-xs-12">{ strTime }</h1>
  </div>
  <button class="btn btn-block btn-info btn-lg" onclick={ countClick }><h2>{ label }</h2></button>
  
  <script>
    this.time = Number(opts.time);
    this.label = opts.label;
    this.mode = Number(opts.mode);
    const RUN = 1;                // 動作中
    const STOP = 0;               // 停止中
    countClick(e) {
        switch(this.mode){
            case STOP:    // スタートを押したとき
              this.mode = RUN;
              this.label = "STOP"
              this.update()
              break;
            case RUN:      // ストップを押したとき
              this.mode = STOP;
              this.label = "START"
              this.update()
              break;
        }
    }
    tick() {
      if (this.mode == 1){
        this.time += 1
        this.strTime = passedTime(this.time)
        this.update()
      }
    }
    function passedTime(time){
      return String(parseInt(time / 3600)) + ":" + String(parseInt((time % 3600) / 60)) + ":" + String(parseInt(time % 60));
    }
    this.strTime = passedTime(this.time);
    var timer = setInterval(this.tick, 1000)

    </script>
</timer>