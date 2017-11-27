<player>
    <div class="">
            <div class "col-xs-12 panel panel-default">
            
                <input class="col-xs-8 panel-body input-lg text-center" onkeyup={ edit } value={ name }></input>
                <div class="col-xs-4 panel-body text-center bg-info"><h1>{ point }</h1></div>                      
                <div class="col-xs-6 panel-body btn btn-success" onclick={ upClick }><h2>Up!</h2></div>
                <div class="col-xs-6 panel-body btn btn-warning" onclick={ downClick }><h2>Down!</h2></div>
            </div>
        </div>
    <script>
    this.name   = opts.name
    this.point = Number(opts.point) || 0
    edit(e) {
      this.name = e.target.value
    }
    upClick(e) {
          this.point += 1
          this.update()
        }
    downClick(e) {
          if (this.point > 0 ){
          this.point -= 1
          this.update()
          }
        }
    
    </script>
</player>