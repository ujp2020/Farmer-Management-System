import 'package:flutter/material.dart';
import 'medicine.dart';

Widget page(String name, String button,BuildContext context) {
  String details;
  switch (button) {
    case 'Apple':
      {
        switch (name) {
          case 'Black Rot':
            details =
                'Remove dead wood, mummified fruit and cankers from trees to reduce spread of disease; burn any prunings that have been made from the tree; disease can be controlled by applying fungicides from silver tip to harvest.';
            break;
          case 'Scab':
            details =
                'Remove all leaves dropped from tree in the fall and compost to prevent any diseases surviving in debris; application of zinc and fertilizer grade urea in the Fall may be necessary to speed leaf drop, lime should then be added to fallen leaves; fungicide application may be necessary in areas where leaves remain wet for periods in excess of 9 hours; fungicides such as copper soaps and Bordeaux mixture should be applied if there is a chance of wet period as soon as leaf tips emerge.';
            break;
          case 'Cedar':
            details =
                'Plant resistant varieties where possible; remove nearby red cedar; if growing susceptible varieties in proximity to red cedar follow a fungicide program.';
            break;
          case 'Healthy Apple':
            details = 'Your Apple is Healthy';
            break;
        }
        break;
      }
    case 'Strawberry':
      {
        switch (name) {
          case 'Healthy Strawberry':
            details = 'Your Strawberry is Healthy';
            break;
          case 'Leaf Scorch':
            details =
                'Plant resistant varieties; regular renewal of plants; plant in an area with good air circulation and drainage in full sun; remove all foliage from plants at harvest; application of appropriate foliar fungicide may be required to provide control.';
            break;
        }
        break;
      }
    case 'Corn':
      {
        switch (name) {
          case 'Common Rust':
            details =
                'The most effective method of controlling the disease is to plant resistant hybrids; application of appropriate fungicides may provide some degree on control and reduce disease severity; fungicides are most effective when the amount of secondary inoculum is still low, generally when plants only have a few rust pustules per leaf.';
            break;
          case 'Grey leaf spot':
            details =
                'Plant corn hybrids with resistance to the disease; crop rotation and plowing debris into soil may reduce levels of inoculum in the soil but may not provide control in areas where the disease is prevalent; foliar fungicides may be economically viable for some high yeilding susceptible hybrids.';
            break;
          case 'Healthy Corn':
            details = 'Your Corn is Healthy';
            break;
          case 'Northern Leaf Blight':
            details =
                'Follow proper tillage to reduce fungus inoculum from crop debris. Follow crop rotation with non host crop. Grow available resistant varieties. In severe case of disease incidence apply suitable fungicide.';
            break;
        }
        break;
      }
    case 'Tomato':
      {
        switch (name) {
          case 'Tomato Mosaic Virus':
            details =
                'Plant varieties that are resistant to the virus; heat treating seeds at 70°C (158°F) for 4 days or at 82–85°C (179.6–185°F) for 24 hours will help to eliminate any virus particles on the surface of the seeds; soaking seed for 15 min in 100 g/l of tri-sodium phosphate solution (TSP) can also eliminate virus particles - seeds should be rinsed thoroughly and laid out to dry after this treatment; if the virus is confirmed in the field, infected plants should be removed and destroyed to limit further spread; plant tomato on a 2-year rotation, avoiding susceptible crops such as peppers, eggplant, cucurbits and tobacco; disinfect all equipment when moving from infected areas of the field.';
            break;
          case 'Target Spot':
            details =
                'Remove the plant debris and burn them. Avoid over application of nitrogen fertilizer. If the disease is severe spray suitable fungicides.';
            break;
          case 'Leaf Mold':
            details =
                'Grow available resistant varieties. Avoid leaf wetting and overhead application of water. Follow proper spacing to provide good air circulation around the plants. Remove the infected plant debris and burn them. If the disease is severe scary suitable fungicide.';
            break;
          case 'Early Blight':
            details =
                'Apply appropriate fungicide at first sign of disease; destroy any volunteer solanaceous plants (tomato, potato, nightshade etc); practice crop rotation';
            break;
          case 'Late Blight':
            details =
                'Plant resistant varieties; if signs of disease are present or if rainy conditions are likely or if using overhead irrigation appropriate fungicides should be applied.';
            break;
          case 'Yellow Leaf Curl Virus':
            details =
                'Grow available resistant varieties. Transplant only disease and whiteflies free seedlings. Remove the infected plants and burn them. Keep the field free from weeds. Use yellow sticky traps to monitor and control whiteflies. If the insect infestation is severe spray suitable insecticides.';
            break;
          case 'Bacterial Spot':
            details =
                'Do not plant in same area in successive years; use only high quality, disease-free seed and transplants; protective sprays of copper can help to reduce incidence of the disease.';
            break;
          case 'Two Spotted Spider Mite':
            details =
                'In the home garden, spraying plants with a strong jet of water can help reduce buildup of spider mite populations; if mites become problematic apply insecticidal soap to plants; certain chemical insecticides may actually increase mite populations by killing off natural enemies and promoting mite reproduction.';
            break;
          case 'Septoria Leaf Spot':
            details =
                'Organic fungicides can go a long way towards treating and preventing fungal infections like septoria leaf spot. Fungicides containing copper and potassium bicarbonate will help contain the fungal disease and keep it from spreading. Start spraying as soon as you notice symptoms of septoria leaf spot.';
            break;
          case 'Healthy Tomato':
            details = 'Your Tomato is Healthy';
            break;
        }
        break;
      }
    case 'Potato':
      {
        switch (name) {
          case 'Healthy Potato':
            details = 'Your Potato is Healthy';
            break;
          case 'Early Blight':
            details =
                'Application of appropriate protective fungicide can reduce severity of foliar symptoms; reduce stress to plants by fertilizing and watering adequately; plant late varieties which are less susceptible to disease; store tubers in cool environment';
            break;
          case 'Late Blight':
            details =
                'Control depends on a multifaceted approach with importance of certain practices changing based on geographic location: destroy infected tubers; destroy any volunteer plants; application of appropriate fungicide to potato hills at emergence; time watering to reduce periods of leaf wetness e.g. water early to allow plant to dry off during the day; plant resistant varieties; apply appropriate protective fungicide if disease is forecast in area';
            break;
        }
        break;
      }
  }

  return Container(
    color: Colors.blue.withOpacity(0.93),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(0.0, 0.0),
                  colors: [Colors.blue, Colors.green],
                  tileMode: TileMode.mirror,
                ),
              ),
              child: Center(
                  child: Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              )),
              //color: Colors.purple,
            )),
        Expanded(
            flex: 12,
            child: Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
              child: Center(
                  child: Text(
                details,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
              //color: Colors.yellow,
            )),
        Expanded(
            child: Container(
              color: Colors.white,
              child: GestureDetector(
                  onTap: (){
                    Navigator.push( context,
                        MaterialPageRoute(builder: (context) {
                          return Medicine();
                        }));
                  },
                  child: Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: Text('Get Medicine',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),
              )),
            ))
      ],
    ),
  );
}
