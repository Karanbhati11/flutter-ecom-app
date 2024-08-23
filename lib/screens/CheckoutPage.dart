import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final _formKey = GlobalKey<FormState>();
  bool sameAsBilling = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkout")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Name'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty || !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Phone'),
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (value) {
                        if (value == null || value.length != 10) {
                          return 'Please enter a valid phone number';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Billing Address'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your billing address';
                        }
                        return null;
                      },
                    ),
                    CheckboxListTile(
                      title: Text("Same as billing address"),
                      value: sameAsBilling,
                      onChanged: (bool? value) {
                        setState(() {
                          sameAsBilling = value ?? false;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.leading,
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity.compact,
                    ),
                    if (!sameAsBilling)
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Shipping Address'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your shipping address';
                          }
                          return null;
                        },
                      ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Credit Card Number'),
                      keyboardType: TextInputType.number,
                      maxLength: 16,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      validator: (value) {
                        if (value == null || value.length != 16) {
                          return 'Please enter a valid credit card number';
                        }
                        return null;
                      },
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: TextFormField(
                            decoration: InputDecoration(labelText: 'Expiry (MM/YY)'),
                            keyboardType: TextInputType.datetime,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
                              LengthLimitingTextInputFormatter(5),
                            ],
                            validator: (value) {
                              if (value == null || !RegExp(r'(0[1-9]|1[0-2])\/?([0-9]{2})').hasMatch(value)) {
                                return 'Please enter a valid expiry date';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0.0), // Adjust this value to align with the expiry field
                            child: TextFormField(
                              decoration: InputDecoration(labelText: 'CVV'),
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.length != 3) {
                                  return 'Please enter a valid CVV';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    Navigator.pop(context); // Go back to the product list page
                  }
                },
                child: Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
