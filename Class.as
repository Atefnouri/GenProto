package  {
//New card class
	
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import flash.display.InteractiveObject;
	
	
	public class Card extends MovieClip {
		
	   public static  var valCard:Number;
       public var cardVal:Array;
	   private var rand:Number;
		private var res:Number;
		private var xpos:Number;
		private var ypos:Number;
		private var _val:Number;
		
		
		public function Card(_val:Number) {
		
			this._val=_val;
			asignVal();//valCard=0;
			this.x=xpos=250;
			this.x=ypos=250;
			
               			
		stop();

	rand=11;		
	cardVal = [0,1,2,3,4,5,6,7,8,9,10,11];
	
	//giv the card the value		

	
			
	this.addEventListener(MouseEvent.MOUSE_DOWN,dragCard);
	this.addEventListener(MouseEvent.MOUSE_UP,dropCard);
	this.addEventListener(MouseEvent.RIGHT_CLICK,Reval); 
     

			this.nb_1.visible=false;
			this.nb_2.visible=false;
			this.nb_3.visible=false;
			/*
			this.nb_1.embedFont = true;
			this.nb_2.embedFont = true;
			
			*/
			//this.nb_3.text.embedFont = true;
			this.nb_3.embedFonts = true;
			this.nb_3.rotation=-180;
			
			
			valCard++;	
					
		}
		
		
		
		
		
		
		
	public function asignVal():void
		{
	
	 				
		this.nb_1.text=String(_val);
		this.nb_2.text=String(_val);
		this.nb_3.text=String(_val);	
        			
			

		}		

 		
     public function Reval(e:MouseEvent):void
		{
	
			this.nb_1.visible=true;
			this.nb_2.visible=true;
			this.nb_3.visible=true;
			
		//res=Math.ceil(Math.random()*10);	
	
		this.gotoAndStop(2);
			
			
			//this.removeEventListener(MouseEvent.RIGHT_CLICK,Reval);  	
			
		}
		
		
   private function dragCard(e:MouseEvent):void
		{
	
		this.startDrag();
			
			
			
			
		}		
		
		
		
		   private function dropCard(e:MouseEvent):void
		{
	
			
			this.stopDrag();
			
			
		}		
		
		
	
		
		
	}
	
}
