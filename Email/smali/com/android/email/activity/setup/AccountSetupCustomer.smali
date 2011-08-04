.class public Lcom/android/email/activity/setup/AccountSetupCustomer;
.super Ljava/lang/Object;
.source "AccountSetupCustomer.java"


# static fields
.field private static mCustomerCount:I

.field static mCustomerList:Lorg/w3c/dom/NodeList;

.field static mCustomerNode:Lorg/w3c/dom/Node;

.field private static mDoc:Lorg/w3c/dom/Document;

.field private static mFilePath:Ljava/lang/String;

.field private static mRoot:Lorg/w3c/dom/Node;

.field private static sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->loadXMLFile()V

    .line 76
    return-void
.end method

.method public static getCustomerFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/csc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, filePath:Ljava/lang/String;
    const-string v1, "AccountSetupCustomer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v0
.end method

.method public static getInstance()Lcom/android/email/activity/setup/AccountSetupCustomer;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->loadXMLFile()V

    .line 80
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->sInstance:Lcom/android/email/activity/setup/AccountSetupCustomer;

    return-object v0
.end method


# virtual methods
.method public getProviderCustomer(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 33
    .parameter "domain"

    .prologue
    .line 212
    const/16 v21, 0x0

    .line 213
    .local v21, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    sget-object v30, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    if-nez v30, :cond_0

    .line 214
    const-string v30, "AccountSetupCustomer"

    const-string v31, "Error while trying to load mCustomerNode."

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v30, v21

    .line 355
    :goto_0
    return-object v30

    .line 218
    :cond_0
    const-string v30, "AccountSetupCustomer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mCustomerCount: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    sget v32, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    sget v30, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    move v0, v9

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    .line 221
    sget-object v30, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v30

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 224
    .local v4, accountNodeListChild:Lorg/w3c/dom/Node;
    sget-object v30, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v30

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "AccountName"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, accountName:Ljava/lang/String;
    sget-object v30, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v30

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "EmailAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, emailAddr:Ljava/lang/String;
    if-eqz v8, :cond_1

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 229
    :cond_1
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v14, logsbuf:Ljava/lang/StringBuffer;
    const-string v30, "AccountSetupCustomer"

    const-string v31, "domain: "

    move-object v0, v14

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    const-string v32, ", emailAddr: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .end local v14           #logsbuf:Ljava/lang/StringBuffer;
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 234
    :cond_2
    const/16 v26, 0x0

    .line 235
    .local v26, serverType:Ljava/lang/String;
    const/16 v23, 0x0

    .line 236
    .local v23, secureType:Ljava/lang/String;
    const/16 v24, 0x0

    .line 237
    .local v24, serverAddr:Ljava/lang/String;
    const/16 v25, 0x0

    .line 238
    .local v25, serverPort:Ljava/lang/String;
    const-string v29, "$user"

    .line 240
    .local v29, userName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 241
    .local v11, incomingUri:Ljava/lang/String;
    const/16 v17, 0x0

    .line 244
    .local v17, outgoingUri:Ljava/lang/String;
    sget-object v30, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v30

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "Incoming"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 246
    .local v10, incomingList:Lorg/w3c/dom/NodeList;
    if-nez v10, :cond_3

    .line 247
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 252
    :cond_3
    const/16 v30, 0x0

    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "MailboxType"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v26

    .line 255
    if-nez v26, :cond_4

    .line 256
    const/16 v30, 0x0

    goto/16 :goto_0

    .line 260
    :cond_4
    const-string v30, "imap3"

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 261
    const-string v26, "imap"

    .line 264
    :cond_5
    const/16 v30, 0x0

    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "Secure"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    .line 265
    if-eqz v23, :cond_6

    const-string v30, "off"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_6

    .line 267
    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    .line 268
    .local v28, typesbuf:Ljava/lang/StringBuffer;
    const-string v30, "+"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 271
    .end local v28           #typesbuf:Ljava/lang/StringBuffer;
    :cond_6
    const/16 v30, 0x0

    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "ServAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    .line 276
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .local v6, addrsbuf:Ljava/lang/StringBuffer;
    const-string v30, "://"

    move-object v0, v6

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 280
    const/16 v30, 0x0

    move-object v0, v10

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "Port"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v25

    .line 281
    if-eqz v25, :cond_7

    .line 283
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    .local v20, portsbuf:Ljava/lang/StringBuffer;
    const-string v30, ":"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    .line 287
    .end local v20           #portsbuf:Ljava/lang/StringBuffer;
    :cond_7
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v13, inurisbuf:Ljava/lang/StringBuffer;
    move-object v0, v13

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    if-eqz v23, :cond_8

    .line 292
    move-object v0, v13

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_8
    move-object v0, v13

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 295
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 296
    .local v12, insbuf:Ljava/lang/StringBuffer;
    const-string v30, "AccountSetupCustomer"

    const-string v31, "incomingUri: "

    move-object v0, v12

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sget-object v30, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    move-object/from16 v0, v30

    move v1, v9

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "Outgoing"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 301
    .local v16, outgoingList:Lorg/w3c/dom/NodeList;
    const-string v26, "smtp"

    .line 303
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "Secure"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v23

    .line 304
    if-eqz v23, :cond_9

    const-string v30, "off"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_9

    .line 306
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    .line 307
    .local v27, typebuf:Ljava/lang/StringBuffer;
    const-string v30, "+"

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    .line 310
    .end local v27           #typebuf:Ljava/lang/StringBuffer;
    :cond_9
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "ServAddr"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v24

    .line 315
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v5, addrbuf:Ljava/lang/StringBuffer;
    const-string v30, "://"

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    .line 319
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    const-string v31, "Port"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v25

    .line 320
    if-eqz v25, :cond_a

    .line 322
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    .line 323
    .local v19, portbuf:Ljava/lang/StringBuffer;
    const-string v30, ":"

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    .line 326
    .end local v19           #portbuf:Ljava/lang/StringBuffer;
    :cond_a
    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    .line 329
    .local v18, outuribuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    if-eqz v23, :cond_b

    .line 331
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_b
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 334
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 335
    .local v15, outbuf:Ljava/lang/StringBuffer;
    const-string v30, "AccountSetupCustomer"

    const-string v31, "outgoingUri: "

    move-object v0, v15

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :try_start_0
    new-instance v22, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-direct/range {v22 .. v22}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v21           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local v22, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :try_start_1
    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 340
    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    .line 341
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 342
    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    .line 344
    new-instance v30, Ljava/net/URI;

    move-object/from16 v0, v30

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/net/URI;

    .line 345
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 347
    new-instance v30, Ljava/net/URI;

    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/net/URI;

    .line 348
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v21, v22

    .end local v22           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v21       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    move-object/from16 v30, v22

    .line 350
    goto/16 :goto_0

    .line 351
    :catch_0
    move-exception v30

    move-object/from16 v7, v30

    .line 352
    .local v7, e:Ljava/lang/Exception;
    :goto_3
    const-string v30, "AccountSetupCustomer"

    const-string v31, "Error while trying to load customer provider settings."

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object v2, v7

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v3           #accountName:Ljava/lang/String;
    .end local v4           #accountNodeListChild:Lorg/w3c/dom/Node;
    .end local v5           #addrbuf:Ljava/lang/StringBuffer;
    .end local v6           #addrsbuf:Ljava/lang/StringBuffer;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #emailAddr:Ljava/lang/String;
    .end local v10           #incomingList:Lorg/w3c/dom/NodeList;
    .end local v11           #incomingUri:Ljava/lang/String;
    .end local v12           #insbuf:Ljava/lang/StringBuffer;
    .end local v13           #inurisbuf:Ljava/lang/StringBuffer;
    .end local v15           #outbuf:Ljava/lang/StringBuffer;
    .end local v16           #outgoingList:Lorg/w3c/dom/NodeList;
    .end local v17           #outgoingUri:Ljava/lang/String;
    .end local v18           #outuribuf:Ljava/lang/StringBuffer;
    .end local v23           #secureType:Ljava/lang/String;
    .end local v24           #serverAddr:Ljava/lang/String;
    .end local v25           #serverPort:Ljava/lang/String;
    .end local v26           #serverType:Ljava/lang/String;
    .end local v29           #userName:Ljava/lang/String;
    :cond_c
    move-object/from16 v30, v21

    .line 355
    goto/16 :goto_0

    .line 351
    .end local v21           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v3       #accountName:Ljava/lang/String;
    .restart local v4       #accountNodeListChild:Lorg/w3c/dom/Node;
    .restart local v5       #addrbuf:Ljava/lang/StringBuffer;
    .restart local v6       #addrsbuf:Ljava/lang/StringBuffer;
    .restart local v8       #emailAddr:Ljava/lang/String;
    .restart local v10       #incomingList:Lorg/w3c/dom/NodeList;
    .restart local v11       #incomingUri:Ljava/lang/String;
    .restart local v12       #insbuf:Ljava/lang/StringBuffer;
    .restart local v13       #inurisbuf:Ljava/lang/StringBuffer;
    .restart local v15       #outbuf:Ljava/lang/StringBuffer;
    .restart local v16       #outgoingList:Lorg/w3c/dom/NodeList;
    .restart local v17       #outgoingUri:Ljava/lang/String;
    .restart local v18       #outuribuf:Ljava/lang/StringBuffer;
    .restart local v22       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v23       #secureType:Ljava/lang/String;
    .restart local v24       #serverAddr:Ljava/lang/String;
    .restart local v25       #serverPort:Ljava/lang/String;
    .restart local v26       #serverType:Ljava/lang/String;
    .restart local v29       #userName:Ljava/lang/String;
    :catch_1
    move-exception v30

    move-object/from16 v7, v30

    move-object/from16 v21, v22

    .end local v22           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v21       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    goto :goto_3
.end method

.method public getTagCount(Lorg/w3c/dom/NodeList;)I
    .locals 1
    .parameter "list"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 195
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 197
    :cond_0
    return v0
.end method

.method public getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7
    .parameter "parent"
    .parameter "name"

    .prologue
    .line 165
    sget-object v5, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    .line 166
    :cond_0
    const/4 v5, 0x0

    .line 182
    :goto_0
    return-object v5

    .line 169
    :cond_1
    sget-object v5, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 171
    .local v3, list:Lorg/w3c/dom/Element;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 172
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_3

    .line 173
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 174
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 175
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 176
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 174
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_3
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    goto :goto_0
.end method

.method public getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "tagFullName"

    .prologue
    const/4 v4, 0x0

    .line 131
    sget-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 147
    :goto_0
    return-object v3

    .line 135
    :cond_0
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 136
    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, tagName:Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v3, v4

    .line 142
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 145
    goto :goto_1

    .end local v1           #tagName:Ljava/lang/String;
    :cond_2
    move-object v3, v0

    .line 147
    goto :goto_0
.end method

.method public getTagNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "parent"
    .parameter "tagName"

    .prologue
    .line 151
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 152
    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_1

    .line 153
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 154
    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 155
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 156
    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 161
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :goto_1
    return-object v4

    .line 154
    .restart local v0       #child:Lorg/w3c/dom/Node;
    .restart local v2       #i:I
    .restart local v3       #n:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getTagValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .parameter "node"

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public loadXMLFile()V
    .locals 6

    .prologue
    const-string v5, "AccountSetupCustomer"

    .line 90
    :try_start_0
    const-string v3, "customer.xml"

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getCustomerFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mFilePath:Ljava/lang/String;

    .line 91
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 92
    .local v2, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 93
    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/email/activity/setup/AccountSetupCustomer;->mFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    .line 94
    sget-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    sput-object v3, Lcom/android/email/activity/setup/AccountSetupCustomer;->mRoot:Lorg/w3c/dom/Node;

    .line 95
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->setAccountSetupCustomer()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    .end local v0           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v2           #factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 97
    .local v1, ex:Ljavax/xml/parsers/ParserConfigurationException;
    const-string v3, "AccountSetupCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ParserConfigurationException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v1           #ex:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 99
    .local v1, ex:Lorg/xml/sax/SAXException;
    const-string v3, "AccountSetupCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SAXException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    .end local v1           #ex:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 101
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "AccountSetupCustomer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAccountSetupCustomer()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "Settings.Messages.Email"

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    .line 202
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerNode:Lorg/w3c/dom/Node;

    const-string v1, "Account"

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    sput-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    .line 203
    sget-object v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerList:Lorg/w3c/dom/NodeList;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupCustomer;->getTagCount(Lorg/w3c/dom/NodeList;)I

    move-result v0

    sput v0, Lcom/android/email/activity/setup/AccountSetupCustomer;->mCustomerCount:I

    .line 204
    return-void
.end method
