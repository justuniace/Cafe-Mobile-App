import 'package:coffee_app/components/colors.dart';
import 'package:coffee_app/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class helpCenter extends StatefulWidget {
  helpCenter({Key? key}) : super(key: key);

  @override
  State<helpCenter> createState() => _helpCenterState();
}

class _helpCenterState extends State<helpCenter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBrownColor,
      appBar: AppBar(
        backgroundColor: AppColor.darkLightColor,
        elevation: 0,
        title: Text(
          "Help Center",
          style: TextStyle(
            color: AppColor.lightBrownColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, Profile());
          },
          color: AppColor.lightBrownColor,
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "HOW CAN WE HELP YOU?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "GETTING STARTED ",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "How can we get started?",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "1. If you're a first-time user of this application, and want to take a sip of our coffee, click 'Get Started' "
                "\n\n2. Fill out the personal information that we ask to register such as First name, Last name, Age, Contact Number, Birthday, and Address. "
                "\n\n3. Click 'Register'. "
                "\n\n4. Sign up with your valid email address, and password. Then click 'Sign Up'. You can sign up anytime using Facebook account or Google Account. "
                "\n\n5. If you already have an account in Caffe App, simply log in with your email address, and password. Then click 'Log In'.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "MANAGING MY ACCOUNT",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "UPDATE ACCOUNT INFORMATION"
                "\n\n\t\t\tPlease update your information to avoid any disruption in service."
                " If you fail to update your profile, you may encounter difficulties in accessing your account."
                " Please use your real name or link your account to your facebook and google account. "
                "We only accept the verified email address. Make sure your phone number is valid and active. "
                "The phone number in your account can only be linked to one email address."
                "\n\n\t\t\tTo change your phone number or other information associated with your account,"
                " go to the ‘Account’ section on our app. Tap ‘Edit Profile Icon’, and tap ’Edit. "
                "Ensure that all your details are complete and accurate. Tap on ‘save’ button. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "FORGOT PASSWORD"
                "\n\n•	On the log in page, click 'forgot password?' "
                "\n\n•	Type your email address to request for a new password. "
                "\n\n•	You will receive a link to create a new password via email. "
                "The password should be easy for you but difficult to guess for others.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "NOTE: BE CAREFUL NOT TO SHARE YOUR PASSWORD WITH OTHERS.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "SECURE YOUR ACCOUNT"
                "\n\n\t\tSharing personal information can be used against you."
                " Phishing is a cybercrime in which a targets are contacted by email telephone, or text message by someone posing as a legitimate institution to lure individuals into providing sensitive data. "
                "\n\nHere`s the steps you can take to have a safe order experience, and to protect yourself better from scammers:"
                "\n\n1. Never share your sensitive information with others. We`ll never ask for it. This includes login password, otp, credit or debit card pin/details. "
                "\n\n2. Beware of scammers, we`ll never ask you to do any financial transaction outside this app. "
                "\n\n3. Verify if the email you received is from an official caffe.  If you receive an email that contains deals or any promotions that seems suspicious, check if the sender`s email look legitimate. "
                "\n\n4. Always keep your contact details updated on your account and turn on notifications to receive important alert from us. "
                "\n\n5. Beware of unsolicited calls or messages asking you to turn off your device or unable your sim card while your order is being processed because it might lead to the cancellation of your order."
                "\n\n6. Please do not engage if you`re suspicious about an unexpected call or messages, and report to us immediately. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 18, left: 20, right: 20),
              child: Text(
                "How to sign out my account? "
                "\n\n1. Go to ‘Profile’ "
                "\n2. Click the Sign out button"
                "\n\nYou can log in anytime in our Caffe App.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 18, left: 20, right: 20),
              child: Text(
                "TROUBLESHOOTING ",
                style: TextStyle(
                  fontSize: 17,
                  color: AppColor.darkColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "CAN`T SIGN UP USING PHONE NUMBER? "
                "\n\n\t\tIn this app, we don`t accept landline numbers because we send important order information via SMS."
                " If you got a message that says “please enter a valid phone number”, make sure you are entering a number with no spaces or special characters for it to be recognizable by this ordering system. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "CAN`T SIGN UP USING EMAIL ADDRESS?"
                "\n\n\t\tIf can`t sign up using your email, you are already registered at caffe. "
                "If you forgotten your password, you can reset it from login screen or use another valid email address to sign up. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "APP WON`T OPEN, RESPOND, UNEXPECTEDLY QUITS OR SHOWS AN ERROR?",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "\t\tClose any unnecessary apps or background programs."
                "Using multiple apps at the same time while using the Caffe app may impact the data connection that the app relies on.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                alignment: Alignment.topLeft,
                child: Text(
                  "Mobile Ordering & Pay",
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColor.darkColor,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "How to order? "
                "\n\n1. After choosing your favorite coffee, tap ‘Add to Cart ‘"
                "\n\n2. Please select the quantity, and the size of your order. "
                "\n\n3. Then click ‘Check Out’ "
                "\n\n4. Choose on what payment method you will use to pay the total amount of your order."
                " Check if your address is accurate. "
                "\n\n5. After that, tap ‘Place an order’"
                "\n\n6. To see your order, click ‘My Purchases’",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, right: 20),
              alignment: Alignment.topLeft,
              child: Text(
                "Available payment method: "
                "\n\n1.	Cash on delivery"
                "\n2.	Pay online via a credit card or debit card "
                "\n3.	PayPal"
                "\n4.	G-Cash"
                "\n5.	PayMaya",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "How to cancel my order? "
                "\n\n\t\t\tWe don’t encourage cancellations after an order has been placed. "
                "As soon as your order is accepted, the merchant starts working and preparing for your order."
                " If you’d like to add more items from the same restaurant, please place another order. "
                "If you’ve entered the wrong address and it isn’t too far from the first one, please reach out to our driver-partner through the call or chat feature on your app to check if he or she can accommodate the address change."
                " If our driver-partner is unable to accommodate the change of address, your order will be sent to the original address pinned.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "Can I change my food items after placing an order? "
                "\n\n\t\t\tWe’re sorry! You can’t change your order after it has been placed because the shop might have started preparing it upon acceptance. "
                "Cancelling at this stage may lead to ingredients wastage."
                " If you'd like to add more items, please go ahead and make another order while waiting for the current order to be delivered.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "How can I track my orders within this application?"
                "\n\n\t\t\tWe highly recommend that you constantly check on your Caffe app to track the status of your order."
                " Our shop will sent out some advisories for delays due to declared holidays and severe weather conditions. ",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "I am not able to place an order, what should I do?"
                "\n\n\t\tIf you're unable to click on the Checkout button,"
                " here are the most likely scenarios: "
                "\n\n•	The shop has closed "
                "\n•	One of your selected items is no longer available "
                "\n•	If you are paying, please ensure that you have sufficient balance",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 18, left: 20, right: 20),
              child: Text(
                "Delivery",
                style: TextStyle(
                  fontSize: 17,
                  color: AppColor.darkColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Text(
                "In order for your rider to easily find you during delivery, we advise you to: "
                "\n\n•	Ensure that your pin location and mentioned address for the order are the same and accurate"
                "\n\n•	Be reachable at your registered contact number or email address in case the rider tries to contact you for address instructions. "
                "\n\n•	Give us an alternative number in your delivery instructions."
                "\n\n•	Our riders in Caffe might do multiple drop-offs if there's a surge in orders. "
                "Don't worry as our system picks the best route so our riders can deliver in the most efficient way possible!",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "When can I expect my order to be delivered? "
                "\n\n\t\t\tWe try to deliver your order as quickly as possible."
                " We can usually deliver between 15 and 20 minutes from when you place your order. "
                "Estimated delivery times are shown on the restaurant page and in your order summary. "
                "After placing your order, you can keep track of your rider on the tracking page. Actual delivery time may vary, depending on traffic or other external factors.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "FAQs",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "Can I place an order for someone else? "
                "\n\n\t\t\tYou can place an order for someone else as long as you update the delivery address before selecting an order to reflect the correct recipient. "
                "Please keep in mind that if the delivery details are incorrect and the order cannot be delivered, we won't able to issue a refund.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "How do I remove an order from my cart? "
                "\n\n\t\t\tTo remove your selected coffee on your cart, tap the minus icon (-) on the side of coffee.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "If you have other concerns or feedback, please contact us to: @cufeapp@gmail.com",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w200,
                  color: AppColor.darkColor,
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
