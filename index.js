const Discord = require('discord.js');
const mysql = require('mysql2');
const client = new Discord.Client({partials: ['MESSAGE', 'CHANNEL', 'REACTION']});

//Own Database
const own_connection = mysql.createConnection({ //ADD OWN DATABASE
    host: 'xxxx',
    user: 'xxxxxx',
    password: 'xxxxxx',
    database: 'CVT_Guild'
});

//DISCORD LOGIN
client.login('xxxxxx').then(function () { //Add DISCORD TOKEN https://discord.com/developers/applications
});


let Jimp = require('jimp');
const path = require('path');
const Tesseract = require('tesseract.js');
const {createWorker, createScheduler} = Tesseract;
const scheduler = createScheduler();
const worker = createWorker({
    langPath: path.join(__dirname, '.', 'tessdata'),
    logger: m => console.log(m),
});
const worker2 = createWorker({
    langPath: path.join(__dirname, '.', 'tessdata'),
    logger: m => console.log(m),
});

// create the connection to database
const connection = mysql.createConnection({ //Undermine Journal DATABASE. Contains WOW-Pricing weekly average
    host: 'newswire.theunderminejournal.com',
    user: 'anonymous',
    database: 'newsstand'
});


(async () => {

    await worker.load();
    await worker.loadLanguage('deu+eng');
    await worker.initialize('deu+eng', 2);
    await worker2.load();
    await worker2.loadLanguage('deu+eng');
    await worker2.initialize('deu+eng', 2);
    await worker.setParameters({
        user_defined_dpi: '300',
        preserve_interword_spaces: 1
    });
    await worker2.setParameters({
        user_defined_dpi: '300',
        preserve_interword_spaces: 1
    });
})();
scheduler.addWorker(worker);    //OCR-Workers
scheduler.addWorker(worker2);


let channels = {};  //Discord-Icons
channels.pranger = "748995407274704958";
channels.schedule = "748995285816180866";
channels.raid_planning = "748995833445482586";
channels.spam = "760049683589890068";
channels.loghistory = "760091523303604234";

let emojis = {};
emojis.gold = '748993877654110250';
emojis.yes = '746675721266528278';
emojis.no = '746675721304539198';
emojis.delay = '748994182059786392';
emojis.info = '748994155123834950';
emojis.stop = '749013118658674728';
emojis.okay = '760086074453393448';
emojis.trash = '760205031013220352';



//DISCORD READY
client.on('ready', () => {
    console.log(`Logged in as ${client.user.tag}!`);

});
client.on('message', msg => {
    if (msg["content"].includes('!adddata')) {
        //console.log(msg.attachments);
        let object = msg.attachments.values();
        let link = object.next().value.url;
        (async () => {
            const {data: {text}} = await scheduler.addJob('recognize', link);
            //const { data: { text } } = await worker.recognize(image.data);
            msg.reply(text).then();
            //await worker.terminate();
        })();
    }
    if (msg["content"].includes('!greyscale')) {    //Converts the Input-Image to Greyscale and then analyses the Image for OSCR
        //console.log(msg.attachments);

        let object = msg.attachments.values();
        let link = object.next().value.url;
        Jimp.read(link)
            .then(image => {
                // Do stuff with the image.
                image.greyscale();
                image.invert();                   // invert the image colours
                image.write('./greyscale.' + image.getExtension(), function (err) {
                    if (err) console.log(err);
                });
                image.getBase64(Jimp.MIME_PNG, function (err, buffer) {
                    (async () => {
                        const {data: {text}} = await scheduler.addJob('recognize', buffer);
                        //const { data: { text } } = await worker.recognize(image.data);
                        msg.reply(text).then();
                    })();
                });
            });


    }
    if (msg["content"].includes("!test")) {
        client.channels.cache.get(channels.spam).send("test").then(function (message) {
            message.react('' + emojis.yes).then();
            message.react("" + emojis.no).then();
            message.react("" + emojis.trash).then();

        });
    }
    if (msg["content"].includes('!rc')) {
        let author_id = msg["author"]["id"];
        msg.react('' + emojis.trash).then();

        own_connection.query(
            'SELECT * FROM raider', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
            [],
            function (err, raider_data) {
                if (err) console.log(err);
                let scale = 2;
                let object = msg.attachments.values();
                if (msg.attachments.size !== 0) {
                    let link = object.next().value.url;
                    Jimp.read(link)
                        .then(image => {
                            // Do stuff with the image.
                            image.scale(scale);
                            image.quality(100);
                            image.invert();                   // invert the image colours
                            image.write('./re_scale.' + image.getExtension(), function (err) {
                                if (err) console.log(err);
                            }); // Node-style callback will be fired when write is successful
                            image.getBase64(Jimp.MIME_PNG, function (err, buffer) {
                                (async () => {
                                    const {data: {text}} = await scheduler.addJob('recognize', buffer);
                                    let output = text.split("\n");
                                    let post = [];
                                    output.forEach(function (row) {
                                        console.log(row);
                                        raider_data.forEach(function (raider) {
                                            let char_name = row.split(" ")[0];
                                            let helper = [];
                                            if (raider["alternative_names"].includes(char_name) === true) {
                                                helper = raider["alternative_names"].split(",");
                                            }
                                            helper.push(raider["char_name"]);
                                            let helper_index = helper.findIndex(item => item === char_name);
                                            if (helper_index > -1) {
                                                if (parseInt(author_id) === parseInt(raider["discord_id"])) {
                                                    row = row.replace(char_name, raider["char_name"]);
                                                    row = row.replace("eninahm", "entnahm");
                                                    if (row.includes("Gold") === true) {
                                                        if (!(row.includes("Guild Challenges") === true || row.includes("Gildenherausforderungen") === true)) {
                                                            post.push(row);
                                                        }
                                                    } else if (row.includes("withdrew") === true || row.includes("entnahm") === true) {
                                                        post.push(row);
                                                    } else if (row.includes("deposited") === true || row.includes("lagerte") === true || row.includes("zahlte") === true) {
                                                        post.push(row);
                                                    } else {
                                                        console.error("Missing Log Daten PeepoLupe?\n" + row);//row
                                                    }
                                                } else {//console.error(row);
                                                }
                                            }
                                        });
                                    });
                                    post.forEach(function (data) { //Adds Emojis for the User to accept/reject each Contribution
                                        client.channels.cache.get(channels.spam).send(data).then(function (msg) {
                                            msg.react('' + emojis.yes).then(function () {
                                            });
                                            msg.react('' + emojis.no).then(function () {
                                            });
                                            msg.react("" + emojis.trash).then();
                                        }).catch(error => console.error(' ', error));
                                    })
                                })();
                            });
                        });
                } else {
                    msg.reply("No Image attached.").then();
                }
            }
        );
    }
    if (msg["content"].includes('!allc')) { //checks all contributions
        let scale = 2;
        if(msg["content"].includes(" ") === true) {
         scale = parseInt(msg["content"].split(" ")[1]);
        }
        let author_id = msg["author"]["id"];
        msg.react('' + emojis.trash).then();
        own_connection.query('SELECT * FROM raider where discord_id = ?',[author_id],function(err,offi_check){
            if(offi_check.length>0) {
                if(offi_check[0]["offi"]===1){
                    own_connection.query(
                        'SELECT * FROM raider', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
                        [],
                        function (err, raider_data) {
                            if (err) console.log(err);
                                let object = msg.attachments.values();
                                if (msg.attachments.size !== 0) {
                                    let link = object.next().value.url;
                                    Jimp.read(link)
                                        .then(image => {
                                            // Do stuff with the image.
                                            image.scale(scale);
                                            image.quality(100);
                                            image.invert();                   // invert the image colours
                                            image.write('./re_scale.' + image.getExtension(), function (err) {
                                                if (err) console.log(err);
                                            }); // Node-style callback will be fired when write is successful
                                            image.getBase64(Jimp.MIME_PNG, function (err, buffer) {
                                                (async () => {
                                                    const {data: {text}} = await scheduler.addJob('recognize', buffer);
                                                    let output = text.split("\n");
                                                    let post = [];
                                                    output.forEach(function (row) {
                                                        console.log(row);
                                                        raider_data.forEach(function (raider) {
                                                            let char_name = row.split(" ")[0];
                                                            let helper = [];
                                                            if (raider["alternative_names"].includes(char_name) === true) {
                                                                helper = raider["alternative_names"].split(",");
                                                            }
                                                            helper.push(raider["char_name"]);
                                                            let helper_index = helper.findIndex(item => item === char_name);
                                                            if (helper_index > -1) {
                                                                row = row.replace(char_name, raider["char_name"]);
                                                                row = row.replace("eninahm", "entnahm");
                                                                row = row.replace("withirew", "withdrew");
                                                                row = row.replace("withorcw", "withdrew");
                                                                row = row.replace("vwithdrew", "withdrew");

                                                                if (row.includes("Gold") === true) {
                                                                    if (!(row.includes("Guild Challenges") === true || row.includes("Gildenherausforderungen") === true)) {
                                                                        post.push(row);
                                                                    }
                                                                } else if (row.includes("withdrew") === true || row.includes("entnahm") === true) {
                                                                    //post.push(row);
                                                                } else if (row.includes("deposited") === true || row.includes("lagerte") === true || row.includes("zahlte") === true) {
                                                                    post.push(row);
                                                                } else {
                                                                    console.error("Missing Log Daten PeepoLupe?\n" + row);
                                                                    //row
                                                                }
                                                            }
                                                        });
                                                    });
                                                    post.forEach(function (data) {
                                                        client.channels.cache.get(channels.spam).send(data).then(function (msg) {
                                                            msg.react('' + emojis.yes).then(function () {
                                                            });
                                                            msg.react('' + emojis.no).then(function () {
                                                            });
                                                            msg.react("" + emojis.trash).then();
                                                        }).catch(error => console.error(' ', error));
                                                    })

                                                })();
                                            });

                                        });
                                } else {
                                    msg.reply("No Image attached.").then();
                                }

                        }
                    );
                } else {
                    msg.reply("Du bist kein Offi.").then();
                }
            }
        });

    }
    if (msg["content"].includes("!addrow")) {
        let text = msg["content"].split('!addrow ')[1];
        client.channels.cache.get(channels.spam).send(text).then(function (message) {
            message.react('' + emojis.yes).then();
            message.react("" + emojis.no).then();
        });
    }
    if (msg["content"].includes('!purge') && msg["author"].id === '115802058485006340') {
        let amount = msg["content"].split('!purge ')[1];
        // noinspection JSUnresolvedFunction
        msg.channel.bulkDelete(amount);
    }
    if (msg["content"].includes('!calculate_open') && msg["author"].id === '115802058485006340') {
        calculateOpen();
    }
    if (msg["content"].includes('!contributions')) {
        showContributions(msg["author"], msg);
    }
    if (msg["content"].includes('!leaderboard')) {
        let type;
        if(msg["content"].includes(" ") === true) {
            type = msg["content"].split(" ")[1];
        } else {
            type = "items";
        }
        calcLeaderboard(type,msg);
    }


});

//Reaction auf EMOJI
client.on('messageReactionAdd', async (reaction, user) => {
    // When we receive a reaction we check if the reaction is partial or not
    if (reaction.partial) {
        try {
            await reaction.fetch();
        } catch (error) {
            console.log('Something went wrong when fetching the message: ', error);
            // Return as `reaction.message.author` may be undefined/null
            return;
        }
    }
    if (user.id === '610586483212156964') {
        // BOT == REACTOR
    } else {
        if (reaction["message"].channel.id === channels.spam) {
            // Next Step: Saving raider.id in DB
            switch (reaction["_emoji"].id) {
                case emojis.yes:
                    //ROW okay
                    own_connection.query(
                        'SELECT offi from `raider` WHERE discord_id = ?',
                        [user.id],
                        function (err,offi_check) {
                            if (err) console.log(err);
                            if(offi_check.length >0) {
                                if(offi_check[0]["offi"] === 1) {
                                    console.log(reaction["message"].content);
                                    client.channels.cache.get(channels.loghistory).send(reaction["message"].content).then(function (msg) {
                                    });
                                    own_connection.query(
                                        'INSERT INTO `bank_log` VALUES (?,?,?)',
                                        [0, reaction["message"].content, 0],
                                        function (err) {
                                            if (err) console.log(err);
                                        }
                                    );
                                    analyze_string(reaction["message"].content);
                                    reaction["message"].delete().then();
                                }
                            }
                        }
                    );
                    break;
                case emojis.no:
                    //Row error
                    own_connection.query(
                        'SELECT offi from `raider` WHERE discord_id = ?',
                        [user.id],
                        function (err,offi_check) {
                            if (err) console.log(err);
                            if(offi_check.length >0) {
                                if(offi_check[0]["offi"] === 1) {
                                    client.channels.cache.get(channels.spam).send("Please fix this Row: " + reaction["message"].content).then(function (msg) {
                                    });
                                    reaction["message"].delete().then();
                                }
                            }
                        }
                    );
                    break;
                case emojis.trash:
                    own_connection.query(
                        'SELECT char_name,offi from `raider` WHERE discord_id = ?',
                        [user.id],
                        function (err,char_name_resp) {
                            if (err) console.log(err);
                            if (reaction["message"]["attachments"].size !== 0 ) {
                                if(char_name_resp.length >0) {
                                    if(char_name_resp[0]["offi"] === 1) {
                                        reaction["message"].delete().then();
                                    }
                                }
                            } else {
                                if(char_name_resp[0]["offi"] === 1) { //reaction["message"]["content"].includes(char_name_resp[0]["char_name"]) === true || reaction["message"]["author"]["id"] === user.id ||
                                    reaction["message"].delete().then();
                                }
                            }

                        }
                    );
                    break;
                default:
                    console.log("DEFAULT");
                    break;
            }
        }
    }

});

function analyze_string(string) {
    let type = 0;
    let amount = 1;
    let char_name = string.split(" ")[0];
    let split_helper = string.split(char_name + " ")[1];
    if (split_helper.includes("withdrew") === true || split_helper.includes("entnahm") === true) {//Checking if its a withdraw / insert
        type = 0;
    } else if (split_helper.includes("lagerte") === true || split_helper.includes("deposited") === true || split_helper.includes("zahlte") === true) {
        type = 1;
    }// Replacing bad Readings
    split_helper = split_helper.replace('withdrew ', '');
    split_helper = split_helper.replace('entnahm ', '');
    split_helper = split_helper.replace('lagerte ', '');
    split_helper = split_helper.replace('deposited ', '');
    split_helper = split_helper.replace('/', '');
    split_helper = split_helper.replace('zahlte', '');
    if (split_helper.includes("Gold") === true || split_helper.includes("Silver") === true || split_helper.includes("Copper") === true || split_helper.includes("Silber") === true || split_helper.includes("Kupfer") === true) {

        split_helper = split_helper.replace("|", "(");
        split_helper = split_helper.split(" (")[0];
        split_helper = split_helper.split(" ");
        let copper = 0;
        let silver = 0;
        let gold = 0;

        for (let i = 0; i < split_helper.length - 1; i++) {
            if (split_helper[i + 1].includes("Gold") === true) {
                gold += parseInt(split_helper[i]);
            } else if (split_helper[i + 1].includes("Silver") === true || split_helper[i + 1].includes("Silber") === true) {
                silver += parseInt(split_helper[i]) / 100;
            } else if (split_helper[i + 1].includes("Copper") === true || split_helper[i + 1].includes("Kupfer") === true) {
                copper += parseInt(split_helper[i]) / 10000;
            }
        }
        let combined = (gold + silver + copper);
        own_connection.query(
            'INSERT INTO `bank_gold_history` VALUES (?,?,?,?)', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
            [0, char_name, combined, type],
            function (err) {
                if (err) console.log(err);
            }
        );

    } else {    //Trying to replace bad Readings
        let item_name = split_helper.split("] ")[0];
        split_helper = split_helper.replace(item_name, "");
        item_name = item_name.replace("[", "");
        split_helper = split_helper.replace("] ", "");
        split_helper = split_helper.replace("ein ", "");
        split_helper = split_helper.replace("x ", "");
        split_helper = split_helper.replace("|", "(");

        split_helper = split_helper.split(" (")[0];
        if (parseInt(split_helper) > 0) {
            amount = parseInt(split_helper);
        }
        own_connection.query(   //Insert Items into DB for later rewarding
            'INSERT INTO `bank_item_history` VALUES (?,?,?,?,?,?)', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
            [0, char_name, item_name, amount, type, 0],
            function (err) {
                if (err) console.log(err);
            }
        );
    }
}

function calculateOpen() {
    own_connection.query(
        'SELECT * FROM bank_item_history where calculated = 0', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
        [],
        function (err, data) {
            if (err) {
                console.log(err);
            } else {
                let total_price = 0;
                let counter = 0;
                data.forEach(function (item) {
                    connection.query(
                        'SELECT tblItemHistoryDaily.priceavg FROM newsstand.tblDBCItem ' +
                        'LEFT JOIN tblItemHistoryDaily ON tblItemHistoryDaily.item = tblDBCItem.id ' +
                        'WHERE tblDBCItem.name_enus = ? and house = 152 or tblDBCItem.name_dede = ? and house = 152 order by `when` desc limit 1',
                        [item["item"], item["item"]],
                        function (err, resp) {
                            if (err) console.log(err);
                            if (resp.length > 0) {
                                counter++;
                                total_price += parseFloat(item["amount"]) * (parseFloat(resp[0]["priceavg"])/100);
                                let price = parseFloat(item["amount"]) * (parseFloat(resp[0]["priceavg"])/100);
                                client.channels.cache.get(channels.spam).send(item["char_name"] + ": " + formatGold(price)).then(function (message) {
                                });
                                if (counter === data.length) {
                                    client.channels.cache.get(channels.spam).send("Total Price: " + formatGold(total_price)).then(function (message) {
                                    });
                                }
                                own_connection.query('UPDATE bank_item_history set calculated=? where id=?', [price, item["id"]], function () {
                                });
                            } else {
                            }
                        }
                    );
                });
            }
        }
    );
}


let formatGold = function (currency) {
    let gold = Math.floor(currency);
    let silver = Math.floor((currency-gold) * 100);
    return gold + " Gold " + silver + " Silver";
    //let copper;

};


function showContributions(user, msg) {
    own_connection.query(
        'SELECT sum(bank_item_history.calculated) as sum FROM CVT_Guild.raider \n' +
        'LEFT JOIN bank_item_history ON bank_item_history.char_name = raider.char_name\n' +
        'where discord_id = ? and bank_item_history.deposit =1;', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
        [user["id"]],
        function (err, input_data) {
            if (err) {
                console.log(err);
            } else {
                let input_amount;
                let output_amount;
                let items= "------\n";
                if (parseInt(input_data[0]["sum"]) > 0) {
                    input_amount = input_data[0]["sum"];
                } else {
                    input_amount = 0;
                }
                own_connection.query(
                    'SELECT sum(bank_gold_history.amount) as sum FROM CVT_Guild.raider \n' +
                    'LEFT JOIN bank_gold_history ON bank_gold_history.char_name = raider.char_name\n' +
                    'where discord_id = ? and bank_gold_history.deposit =1;', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
                    [user["id"]],
                    function (err, output_data) {
                        if (err) {
                            console.log(err);
                        } else {
                            if (parseInt(output_data[0]["sum"]) > 0) {
                                output_amount = output_data[0]["sum"];
                            } else {
                                output_amount = 0;
                            }
                            own_connection.query(
                                'SELECT bank_item_history.item,sum(bank_item_history.amount) as sum FROM CVT_Guild.raider ' +
                                'LEFT JOIN bank_item_history ON bank_item_history.char_name = raider.char_name ' +
                                'where discord_id = ? and bank_item_history.deposit =1 and bank_item_history.calculated = 0 group by item;', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
                                [user["id"]],
                                function (err, items_not_calculated) {
                                    if (err) {
                                        console.log(err);
                                    } else {
                                        if(items_not_calculated.length>0) {
                                            items_not_calculated.forEach(function(item_list){
                                                items += "["+item_list["item"]+"]x"+item_list["sum"]+"\n";
                                            })
                                        } else {
                                            output_amount = 0;
                                        }
                                        const exampleEmbed = new Discord.MessageEmbed()
                                            .setColor('#0099ff')
                                            .setTitle('Contribution Check')
                                            .addField('Item Einzahlungen', '' + formatGold(input_amount), true)
                                            .addField('Gold Einzahlungen', '' + formatGold(output_amount), true)
                                            .addField('Nicht berechnete Einzahlungen',''+items,false)
                                            .setTimestamp();
                                        msg.reply(exampleEmbed);
                                    }
                                }
                            );
                        }
                    }
                );

            }
        }
    );
}

function calcLeaderboard(type,msg) {
    switch(type) {
        case "gold":
            own_connection.query(
                'SELECT * from raider;', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
                [],
                function (err, raider_list) {
                    if (err) {
                        console.log(err);
                        msg.reply("Error getting Raider-Data");
                    } else {
                        if (raider_list.length > 0) {
                            own_connection.query(
                                'SELECT raider.char_name, sum(bank_gold_history.amount) as sum FROM CVT_Guild.raider ' +
                                'LEFT JOIN bank_gold_history ON bank_gold_history.char_name = raider.char_name ' +
                                'where bank_gold_history.amount != 0 and bank_gold_history.deposit = 1 group by bank_gold_history.char_name order by sum desc;', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
                                [],
                                function (err, contribution_list) {
                                    if (err) {
                                        console.log(err);
                                    } else {
                                        if (contribution_list.length > 0) {
                                            let leaderboard = contribution_list;
                                            raider_list.forEach(function (raider) {
                                                let helper_index = leaderboard.findIndex(item => item["char_name"] === raider["char_name"]);
                                                if (helper_index > -1) {
                                                } else {
                                                    leaderboard.push({"char_name": raider["char_name"], "sum": 0});
                                                }
                                            });
                                            let output_string = "-----\n";
                                            let amount_string = "-----\n";
                                            leaderboard.forEach(function (user) {
                                                output_string += user["char_name"] + '\n';
                                                amount_string += formatGold(parseFloat(user["sum"]).toFixed(2)) + '\n';
                                            })
                                            const exampleEmbed = new Discord.MessageEmbed()
                                                .setColor('#0099ff')
                                                .setTitle('Contribution Gold Leaderboard')
                                                .addField('Char-Namen', '' + output_string, true)
                                                .addField('Gold', '' + amount_string, true)
                                                .setTimestamp();
                                            msg.reply(exampleEmbed);
                                        }
                                    }
                                }
                            );

                        }
                    }
                }
            );
            break;
        case "items":
            own_connection.query(
                'SELECT * from raider;', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
                [],
                function (err, raider_list) {
                    if (err) {
                        console.log(err);
                        msg.reply("Error getting Raider-Data");
                    } else {
                        if (raider_list.length > 0) {
                            own_connection.query(
                                'SELECT raider.char_name, sum(bank_item_history.calculated) as sum FROM CVT_Guild.raider ' +
                                'LEFT JOIN bank_item_history ON bank_item_history.char_name = raider.char_name ' +
                                'where bank_item_history.calculated != 0 and bank_item_history.deposit = 1 group by bank_item_history.char_name order by sum desc;', //DEPOSIT = TYPE 1 // WITHDRAW TYPE 0
                                [],
                                function (err, contribution_list) {
                                    if (err) {
                                        console.log(err);
                                    } else {
                                        if (contribution_list.length > 0) {
                                            let leaderboard = contribution_list;
                                            raider_list.forEach(function (raider) {
                                                let helper_index = leaderboard.findIndex(item => item["char_name"] === raider["char_name"]);
                                                if (helper_index > -1) {
                                                } else {
                                                    leaderboard.push({"char_name": raider["char_name"], "sum": 0});
                                                }
                                            });
                                            let output_string = "-----\n";
                                            let amount_string = "-----\n";
                                            leaderboard.forEach(function (user) {
                                                output_string += user["char_name"] + '\n';
                                                amount_string += formatGold(parseFloat(user["sum"]).toFixed(2)) + '\n';
                                            })
                                            const Embed = new Discord.MessageEmbed()
                                                .setColor('#0099ff')
                                                .setTitle('Contribution Item-Goldwert Leaderboard')
                                                .addField('Char-Namen', '' + output_string, true)
                                                .addField('Item-Gold', '' + amount_string, true)
                                                .setTimestamp();
                                            msg.reply(Embed);
                                        }
                                    }
                                }
                            );
                        }
                    }
                }
            );
            break;
        default:
            msg.reply("Bitte hänge den Parameter 'gold' oder 'items' an, anstatt von '"+type+"'");
            break;
    }
}