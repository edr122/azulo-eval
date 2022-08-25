<template>

  <div class="d-flex justify-content-around row">
        <div v-for ="airport in airportList" :key="airport.id" class="airport" >
             <ol type="i">
                <li>{{airport.AirportCode}} - {{cortar(airport.AirportName,34)}}</li>
                <li>{{airport.ProvinceOrState}}, {{airport.Country}}</li>
                <li>Administrado por: {{cortar(airport.AirportOperatorName, 25)}}</li>
             </ol>            
        </div>
  </div>

</template>
<script lang="ts">
import { defineComponent } from 'vue'
import AirportDataService from "@/services/AirportDataService";
export default defineComponent({
    data(){
        return{
            airportList:[]
        }  
    },

    mounted(){
     AirportDataService.getAll().then((response) => {
        this.airportList = response.data;
      })
      .catch((e) => {
        console.log(e);
      });
    },
    methods:{
        cortar:function (text:string, lontitud:number){
            if(text.length > lontitud){
                text = text.substring(0,lontitud)+'...';
            }
            return text;
        }
    }


})
</script>

<style scoped>
    .airport{
        width: 160px;
        height: 80px;
        font-size: 9px;
        margin: 0px 3px 9px 3px;
        background: white;
        border: 1px solid #000000;
    }

    .airport ol {
        padding-left: 0.5rem;
    }

    
</style>