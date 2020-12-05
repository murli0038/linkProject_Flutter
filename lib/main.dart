import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/html_parser.dart';
import 'package:flutter_html/style.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: new MyHomePage(title: 'flutter_html Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

const htmlData = """
    <iframe height='240' width='120'  style=“margin-right: 3em;” scrolling="no" src="http://ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=apnidukan067-21&marketplace=amazon&region=IN&placement=0008386595&asins=0008386595&linkId=f0277598fbd6cbba3c5af1c4fa5c9d6b&show_border=true&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe>
     <iframe height='240' width='120'  style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" src="http://ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=apnidukan067-21&marketplace=amazon&region=IN&placement=0008386595&asins=0008386595&linkId=f0277598fbd6cbba3c5af1c4fa5c9d6b&show_border=true&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe>
     <iframe height='240' width='120' style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" src="http://ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=apnidukan067-21&marketplace=amazon&region=IN&placement=0008386595&asins=0008386595&linkId=f0277598fbd6cbba3c5af1c4fa5c9d6b&show_border=true&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe>
     <iframe height='240' width='120' style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" src="http://ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=apnidukan067-21&marketplace=amazon&region=IN&placement=0008386595&asins=0008386595&linkId=f0277598fbd6cbba3c5af1c4fa5c9d6b&show_border=true&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe>
    <iframe height='240' width='120' style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" src="http://ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=apnidukan067-21&marketplace=amazon&region=IN&placement=0008386595&asins=0008386595&linkId=f0277598fbd6cbba3c5af1c4fa5c9d6b&show_border=true&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe>
     <iframe height='240' width='120' style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" src="http://ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=apnidukan067-21&marketplace=amazon&region=IN&placement=0008386595&asins=0008386595&linkId=f0277598fbd6cbba3c5af1c4fa5c9d6b&show_border=true&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe>
     <iframe height='240' width='120' style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" src="http://ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=apnidukan067-21&marketplace=amazon&region=IN&placement=0008386595&asins=0008386595&linkId=f0277598fbd6cbba3c5af1c4fa5c9d6b&show_border=true&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe>
     <iframe height='240' width='120' style="width:120px;height:240px;" marginwidth="0" marginheight="0" scrolling="no" src="http://ws-in.amazon-adsystem.com/widgets/q?ServiceVersion=20070822&OneJS=1&Operation=GetAdHtml&MarketPlace=IN&source=ac&ref=tf_til&ad_type=product_link&tracking_id=apnidukan067-21&marketplace=amazon&region=IN&placement=0008386595&asins=0008386595&linkId=f0277598fbd6cbba3c5af1c4fa5c9d6b&show_border=true&link_opens_in_new_window=false&price_color=333333&title_color=0066c0&bg_color=ffffff">
    </iframe>
""";

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            color: Colors.red,
            // height: MediaQuery.of(context).size.height,
            child: Html(
              data: htmlData,
              //Optional parameters:
              style: {
                "html": Style(
                  // width: 137,
                  // height: MediaQuery.of(context).size.height,
                  // backgroundColor: Colors.black12,
                ),
               // "h1": Style(
               //   textAlign: TextAlign.center,
               // ),
                "table": Style(
                  // backgroundColor: Color.fromARGB(0x50, 0xee, 0xee, 0xee),
                ),
                "tr": Style(
                  border: Border(bottom: BorderSide(color: Colors.black)),
                ),
                "th": Style(
                  padding: EdgeInsets.all(6),
                  // backgroundColor: Colors.grey,
                ),
                "td": Style(
                  padding: EdgeInsets.all(6),
                ),
                "var": Style(fontFamily: 'serif'),
              },
              customRender: {
                "flutter": (RenderContext context, Widget child, attributes, _) {
                  return FlutterLogo(
                    style: (attributes['horizontal'] != null)
                        ? FlutterLogoStyle.horizontal
                        : FlutterLogoStyle.markOnly,
                    textColor: context.style.color,
                    size: context.style.fontSize.size * 5,
                  );
                },
              },
              onLinkTap: (url) {
                print("Opening $url...");
              },
              onImageTap: (src) {
                print(src);
              },
              onImageError: (exception, stackTrace) {
                print(exception);
              },
            ),
          ),
        ),
      ),
    );
  }
}
