const faker = require('faker');

const RandomThings = {
  randomEmail: () => {
    var randomEmailConst = faker.internet.email();
    return randomEmailConst;

  },

  randomPassword: () => {
    var randomPasswordConst = faker.internet.userName();
    return randomPasswordConst;

  },

  randomNumber: () => {
    var randomNumberConst = faker.datatype.number();
    return randomNumberConst;

  },


  randomBigNumber: (passwordLength) => {
    var randomBigNumber = faker.datatype.number(passwordLength);
    return randomBigNumber;

  },

  randomBigstring: (emailLength) => {
    var randomBigString = faker.lorem.text(emailLength)

  },

  randomString: () => {
    var randomBString = faker.lorem.text();
    return randomBString;

  },

}

exports.RandomThings = RandomThings;
  