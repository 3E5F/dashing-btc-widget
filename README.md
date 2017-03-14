##Preview:

<img src="https://github.com/Aycn0/dashing-btc-widget/blob/master/Screen%20Shot%202017-03-13%20at%206.11.34%20PM.png" width="400px">

##Description:
Widget for Dashing/Smashing displaying Bitcoin (BTC) Price

##Usage:
1. Put widgets/btcprice/ directory inside your widgets/ directory.
2. Put jobs/bitcoin.rb inside your jobs/ directory.
3. Add the following lines of code to your .erb dashboard somewhere.

		<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
				<div data-id="btcprice" data-view="Btcprice" data-btcprice="" data-prefix="$"></div>
		</li>
