class Address {
  String type;
  String address;
  bool isDefault;
  //String actionHint;
  Address({
    required this.type,
    required this.address,
    required this.isDefault,
    //required this.actionHint
  });
}

List<Address> addressList = [
  Address(
    type: 'Home',
    address: 'Adrress one',
    isDefault: false,
    //actionHint: 'Change',
  ),
  Address(
    type: 'Home',
    address: 'Adrress Two',
    isDefault: false,
    //actionHint: 'Change',
  ),
  Address(
    type: 'Office',
    address: 'Adrress Three',
    isDefault: true,
    //actionHint: 'Change',
  ),
  Address(
    type: 'Sister Home',
    address: 'Adrress Four',
    isDefault: false,
    //actionHint: 'Change',
  ),
  Address(
    type: 'Brother Home',
    address: 'Adrress Five',
    isDefault: false,
    //actionHint: 'Change',
  ),
  Address(
    type: 'Home',
    address: 'Adrress Two',
    isDefault: false,
    //actionHint: 'Change',
  ),
  Address(
    type: 'Office',
    address: 'Adrress Three',
    isDefault: false,
    //actionHint: 'Change',
  ),
  Address(
    type: 'Sister Home',
    address: 'Adrress Four',
    isDefault: false,
    //actionHint: 'Change',
  ),
  Address(
    type: 'Brother Home',
    address: 'Adrress Five',
    isDefault: false,
    //actionHint: 'Change',
  )
];
