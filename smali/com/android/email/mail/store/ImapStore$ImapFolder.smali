.class Lcom/android/email/mail/store/ImapStore$ImapFolder;
.super Lcom/android/email/mail/Folder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapFolder"
.end annotation


# instance fields
.field private mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

.field private mExists:Z

.field private mMessageCount:I

.field private mMode:Lcom/android/email/mail/Folder$OpenMode;

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 512
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    .line 513
    invoke-direct {p0}, Lcom/android/email/mail/Folder;-><init>()V

    .line 507
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 514
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    .line 515
    return-void
.end method

.method private checkOpen()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1413
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1414
    new-instance v0, Lcom/android/email/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1416
    :cond_0
    return-void
.end method

.method private handleUntaggedResponse(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1079
    iget-object v0, p1, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 1082
    :cond_0
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1069
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 1070
    .local v1, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V

    goto :goto_0

    .line 1072
    .end local v1           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :cond_0
    return-void
.end method

.method private ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;
    .locals 2
    .parameter "connection"
    .parameter "ioe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1420
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 1421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 1422
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "IO Error"

    invoke-direct {v0, v1, p2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private parseBodyStructure(Lcom/android/email/mail/store/ImapResponseParser$ImapList;Lcom/android/email/mail/Part;Ljava/lang/String;)V
    .locals 25
    .parameter "bs"
    .parameter "part"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1086
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1090
    new-instance v16, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct/range {v16 .. v16}, Lcom/android/email/mail/internet/MimeMultipart;-><init>()V

    .line 1091
    .local v16, mp:Lcom/android/email/mail/internet/MimeMultipart;
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v11

    .local v11, count:I
    :goto_0
    if-ge v14, v11, :cond_2

    .line 1092
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1097
    new-instance v7, Lcom/android/email/mail/store/ImapStore$ImapBodyPart;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v21, v0

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapBodyPart;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 1098
    .local v7, bp:Lcom/android/email/mail/store/ImapStore$ImapBodyPart;
    const-string v21, "TEXT"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1099
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/ImapResponseParser$ImapList;Lcom/android/email/mail/Part;Ljava/lang/String;)V

    .line 1106
    :goto_1
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 1091
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1103
    :cond_0
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 1104
    .local v17, sbuf:Ljava/lang/StringBuffer;
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    const-string v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    add-int/lit8 v23, v14, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/ImapResponseParser$ImapList;Lcom/android/email/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 1113
    .end local v7           #bp:Lcom/android/email/mail/store/ImapStore$ImapBodyPart;
    .end local v17           #sbuf:Ljava/lang/StringBuffer;
    :cond_1
    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1114
    .local v19, subType:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1118
    .end local v19           #subType:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    .line 1262
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v16           #mp:Lcom/android/email/mail/internet/MimeMultipart;
    :goto_2
    return-void

    .line 1136
    :cond_3
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1137
    .local v20, type:Ljava/lang/String;
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1138
    .restart local v19       #subType:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1140
    .local v15, mimeType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1141
    .local v6, bodyParams:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    const/4 v4, 0x0

    .line 1142
    .local v4, bodyDisposition:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    const/16 v18, 0x0

    .line 1143
    .local v18, size:I
    const-string v13, ""

    .line 1144
    .local v13, encoding:Ljava/lang/String;
    const-string v8, ""

    .line 1148
    .local v8, cid:Ljava/lang/String;
    const/16 v21, 0x2

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 1149
    const/16 v21, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v6

    .line 1151
    :cond_4
    const/16 v21, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1152
    const/16 v21, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1153
    const/16 v21, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getNumber(I)I

    move-result v18

    .line 1155
    const-string v21, "message/rfc822"

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1164
    new-instance v21, Lcom/android/email/mail/MessagingException;

    const-string v22, "BODYSTRUCTURE message/rfc822 not yet supported."

    invoke-direct/range {v21 .. v22}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :catch_0
    move-exception v21

    move-object/from16 v12, v21

    .line 1198
    .local v12, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v21, "Email"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "!! IndexOutOfBoundsException !! bs.getsize "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    new-instance v21, Lcom/android/email/mail/MessagingException;

    const-string v22, "BODYSTRUCTURE  fetched from server is invalid."

    invoke-direct/range {v21 .. v22}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1171
    .end local v12           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    :try_start_1
    new-instance v10, Ljava/lang/StringBuffer;

    const-string v21, "%s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v10, contentType:Ljava/lang/StringBuffer;
    if-eqz v6, :cond_6

    .line 1178
    const/4 v14, 0x0

    .restart local v14       #i:I
    invoke-virtual {v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v11

    .restart local v11       #count:I
    :goto_3
    if-ge v14, v11, :cond_6

    .line 1179
    const-string v21, ";\n %s=\"%s\""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v6, v14}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v24, v14, 0x1

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1178
    add-int/lit8 v14, v14, 0x2

    goto :goto_3

    .line 1182
    .end local v11           #count:I
    .end local v14           #i:I
    :cond_6
    const-string v21, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v21, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    const/16 v21, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 1189
    const/16 v21, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1204
    :cond_7
    :goto_4
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v21, ""

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1206
    .local v9, contentDisposition:Ljava/lang/StringBuffer;
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v21

    if-lez v21, :cond_a

    .line 1207
    const-string v21, "NIL"

    const/16 v22, 0x0

    move-object v0, v4

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 1208
    const/16 v21, 0x0

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1211
    :cond_8
    invoke-virtual {v4}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    const/16 v21, 0x1

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1213
    const/16 v21, 0x1

    move-object v0, v4

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v5

    .line 1218
    .local v5, bodyDispositionParams:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    const/4 v14, 0x0

    .restart local v14       #i:I
    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v11

    .restart local v11       #count:I
    :goto_5
    if-ge v14, v11, :cond_a

    .line 1219
    const-string v21, ";\n %s=\"%s\""

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v5, v14}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    add-int/lit8 v24, v14, 0x1

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1218
    add-int/lit8 v14, v14, 0x2

    goto :goto_5

    .line 1191
    .end local v5           #bodyDispositionParams:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v9           #contentDisposition:Ljava/lang/StringBuffer;
    .end local v11           #count:I
    .end local v14           #i:I
    :cond_9
    :try_start_2
    const-string v21, "text"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v21

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_7

    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 1194
    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto/16 :goto_4

    .line 1227
    .restart local v9       #contentDisposition:Ljava/lang/StringBuffer;
    :cond_a
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "size"

    invoke-static/range {v21 .. v22}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_b

    .line 1228
    const-string v21, ";\n size=%d"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1235
    :cond_b
    const-string v21, "Content-Disposition"

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const-string v21, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v21, "NIL"

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 1247
    const-string v21, "Content-ID"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    :cond_c
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move/from16 v21, v0

    if-eqz v21, :cond_d

    .line 1251
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object v4, v0

    .end local v4           #bodyDisposition:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1259
    :goto_6
    const-string v21, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1253
    .restart local v4       #bodyDisposition:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :cond_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/email/mail/store/ImapStore$ImapBodyPart;

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 1254
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapBodyPart;

    move-object v4, v0

    .end local v4           #bodyDisposition:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapBodyPart;->setSize(I)V

    goto :goto_6

    .line 1257
    .restart local v4       #bodyDisposition:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :cond_e
    new-instance v21, Lcom/android/email/mail/MessagingException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown part type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private runExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/lang/RuntimeException;)Lcom/android/email/mail/MessagingException;
    .locals 2
    .parameter "connection"
    .parameter "rune"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1427
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 1428
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 1429
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "Runtime Error"

    invoke-direct {v0, v1, p2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public appendMessages([Lcom/android/email/mail/Message;)V
    .locals 32
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1271
    const/4 v8, 0x0

    .line 1273
    .local v8, eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    move-object/from16 v6, p1

    .local v6, arr$:[Lcom/android/email/mail/Message;
    :try_start_0
    move-object v0, v6

    array-length v0, v0

    move/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    move v15, v14

    .end local v14           #i$:I
    .local v15, i$:I
    move-object v9, v8

    .end local v8           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .local v9, eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    :goto_0
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    :try_start_1
    aget-object v18, v6, v15

    .line 1275
    .local v18, message:Lcom/android/email/mail/Message;
    new-instance v20, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct/range {v20 .. v20}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V

    .line 1276
    .local v20, out:Lcom/android/email/mail/transport/CountingOutputStream;
    new-instance v8, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1278
    .end local v9           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v8       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/store/ImapStore;->access$400(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/Message;->getMessageId_original()J

    move-result-wide v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/mail/Message;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V

    .line 1279
    invoke-virtual {v8}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1281
    const-string v11, ""

    .line 1282
    .local v11, flagList:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/Message;->getFlags()[Lcom/android/email/mail/Flag;

    move-result-object v12

    .line 1283
    .local v12, flags:[Lcom/android/email/mail/Flag;
    move-object v0, v12

    array-length v0, v0

    move/from16 v26, v0

    if-lez v26, :cond_3

    .line 1284
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 1285
    .local v24, sb:Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, i:I
    array-length v7, v12

    .local v7, count:I
    :goto_1
    if-ge v13, v7, :cond_2

    .line 1286
    aget-object v10, v12, v13

    .line 1287
    .local v10, flag:Lcom/android/email/mail/Flag;
    sget-object v26, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object v0, v10

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 1288
    const-string v26, " \\Seen"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1289
    :cond_1
    sget-object v26, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object v0, v10

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 1290
    const-string v26, " \\Flagged"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 1356
    .end local v7           #count:I
    .end local v10           #flag:Lcom/android/email/mail/Flag;
    .end local v11           #flagList:Ljava/lang/String;
    .end local v12           #flags:[Lcom/android/email/mail/Flag;
    .end local v13           #i:I
    .end local v15           #i$:I
    .end local v17           #len$:I
    .end local v18           #message:Lcom/android/email/mail/Message;
    .end local v20           #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .end local v24           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v26

    move-object/from16 v16, v26

    .line 1357
    .local v16, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v26

    throw v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1359
    .end local v16           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v26

    .line 1360
    :goto_4
    :try_start_4
    invoke-virtual {v8}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1359
    :goto_5
    throw v26

    .line 1293
    .restart local v7       #count:I
    .restart local v11       #flagList:Ljava/lang/String;
    .restart local v12       #flags:[Lcom/android/email/mail/Flag;
    .restart local v13       #i:I
    .restart local v15       #i$:I
    .restart local v17       #len$:I
    .restart local v18       #message:Lcom/android/email/mail/Message;
    .restart local v20       #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .restart local v24       #sb:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->length()I

    move-result v26

    if-lez v26, :cond_3

    .line 1294
    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 1298
    .end local v7           #count:I
    .end local v13           #i:I
    .end local v24           #sb:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v26, v0

    const-string v27, "APPEND \"%s\" (%s) {%d}"

    const/16 v28, 0x3

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/android/email/mail/store/ImapStore;->access$100(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    aput-object v11, v28, v29

    const/16 v29, 0x2

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v9, v8

    .line 1305
    .end local v8           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v9       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v21

    .line 1306
    .local v21, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mCommandContinuationRequested:Z

    move/from16 v26, v0

    if-eqz v26, :cond_6

    .line 1307
    new-instance v8, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$500(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    move-object v0, v8

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1309
    .end local v9           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v8       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/email/mail/store/ImapStore;->access$400(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/Message;->getMessageId_original()J

    move-result-wide v27

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/mail/Message;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;)V

    .line 1311
    const/16 v26, 0xd

    move-object v0, v8

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1312
    const/16 v26, 0xa

    move-object v0, v8

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1313
    invoke-virtual {v8}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1318
    :cond_5
    :goto_6
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->more()Z

    move-result v26

    if-nez v26, :cond_5

    .line 1319
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1325
    const/16 v26, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getListOrNull(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v5

    .line 1326
    .local v5, appendList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const-string v26, "APPENDUID"

    const/16 v27, 0x0

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 1328
    const/16 v26, 0x2

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 1329
    .local v25, serverUid:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v8}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1273
    .end local v15           #i$:I
    .end local v25           #serverUid:Ljava/lang/String;
    :goto_7
    add-int/lit8 v14, v15, 0x1

    .restart local v14       #i$:I
    move v15, v14

    .end local v14           #i$:I
    .restart local v15       #i$:I
    move-object v9, v8

    .end local v8           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v9       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    goto/16 :goto_0

    .line 1315
    .end local v5           #appendList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :cond_6
    :try_start_8
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_7

    .line 1316
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    move-object v8, v9

    .end local v9           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v8       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    goto :goto_6

    .line 1339
    .restart local v5       #appendList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :cond_8
    :try_start_9
    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v19

    .line 1340
    .local v19, messageId:Ljava/lang/String;
    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_a

    .line 1341
    :cond_9
    invoke-virtual {v8}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V

    goto :goto_7

    .line 1344
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v26, v0

    const-string v27, "UID SEARCH (HEADER MESSAGE-ID %s)"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v19, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 1347
    .local v23, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .end local v15           #i$:I
    .local v14, i$:Ljava/util/Iterator;
    :cond_b
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 1348
    .local v22, response1:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_b

    const/16 v26, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v26

    const-string v27, "SEARCH"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_b

    .line 1350
    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v26

    const/16 v27, 0x1

    sub-int v26, v26, v27

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setUid(Ljava/lang/String;)V

    goto :goto_8

    .line 1353
    .end local v22           #response1:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :cond_c
    invoke-virtual {v8}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_7

    .line 1360
    .end local v5           #appendList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v8           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .end local v11           #flagList:Ljava/lang/String;
    .end local v12           #flags:[Lcom/android/email/mail/Flag;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v18           #message:Lcom/android/email/mail/Message;
    .end local v19           #messageId:Ljava/lang/String;
    .end local v20           #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .end local v21           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v23           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v9       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v15       #i$:I
    :cond_d
    :try_start_a
    invoke-virtual {v9}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 1364
    :goto_9
    return-void

    .line 1361
    .end local v9           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .end local v15           #i$:I
    .end local v17           #len$:I
    .restart local v8       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    :catch_1
    move-exception v27

    goto/16 :goto_5

    .end local v8           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v9       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v15       #i$:I
    .restart local v17       #len$:I
    :catch_2
    move-exception v26

    goto :goto_9

    .line 1359
    :catchall_1
    move-exception v26

    move-object v8, v9

    .end local v9           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v8       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    goto/16 :goto_4

    .line 1356
    .end local v8           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v9       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    :catch_3
    move-exception v26

    move-object/from16 v16, v26

    move-object v8, v9

    .end local v9           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v8       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    goto/16 :goto_3
.end method

.method public canCreate(Lcom/android/email/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 643
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .locals 2
    .parameter "expunge"

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    :goto_0
    return-void

    .line 593
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 594
    monitor-enter p0

    .line 595
    :try_start_0
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-static {v0, v1}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 597
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V
    .locals 10
    .parameter "messages"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 683
    array-length v4, p1

    new-array v3, v4, [Ljava/lang/String;

    .line 684
    .local v3, uids:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, p1

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 685
    aget-object v4, p1, v1

    invoke-virtual {v4}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v5, "UID COPY %s \"%s\""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x2c

    invoke-static {v3, v8}, Lcom/android/email/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {p2}, Lcom/android/email/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->access$100(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    return-void

    .line 692
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 693
    .local v2, ioe:Ljava/io/IOException;
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v4, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v4

    throw v4
.end method

.method public create(Lcom/android/email/mail/Folder$FolderType;)Z
    .locals 10
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 654
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_1

    .line 655
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$000(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 660
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    :try_start_1
    const-string v3, "CREATE \"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/email/mail/store/ImapStore;->access$100(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 673
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_0

    .line 674
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    move v3, v9

    .line 667
    :goto_1
    return v3

    .line 658
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    .line 660
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 666
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 673
    .local v2, me:Lcom/android/email/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    .line 674
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v3, v8

    .line 667
    goto :goto_1

    .line 669
    .end local v2           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 670
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 673
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    .line 674
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v4, v0}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 673
    :cond_3
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .locals 2
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1442
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    return-object v0
.end method

.method public delete(Z)V
    .locals 2
    .parameter "recurse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 725
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ImapStore.delete() not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1434
    instance-of v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    if-eqz v0, :cond_0

    .line 1435
    check-cast p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1437
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 605
    iget-boolean v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v3, :cond_0

    move v3, v8

    .line 629
    :goto_0
    return v3

    .line 613
    :cond_0
    const/4 v0, 0x0

    .line 614
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 615
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    .line 616
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v3}, Lcom/android/email/mail/store/ImapStore;->access$000(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 621
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :try_start_1
    const-string v3, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/email/mail/store/ImapStore;->access$100(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 625
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 635
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_1

    .line 636
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_1
    move v3, v8

    .line 626
    goto :goto_0

    .line 619
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_1

    .line 621
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 628
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 635
    .local v2, me:Lcom/android/email/mail/MessagingException;
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_3

    .line 636
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v3, v0}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    move v3, v9

    .line 629
    goto :goto_0

    .line 631
    .end local v2           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 632
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 635
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_4

    .line 636
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v4, v0}, Lcom/android/email/mail/store/ImapStore;->access$200(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 635
    :cond_4
    throw v3
.end method

.method public expunge()[Lcom/android/email/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1367
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1369
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v2, "EXPUNGE"

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    const/4 v1, 0x0

    return-object v1

    .line 1370
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1371
    .local v0, ioe:Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    throw v1
.end method

.method public fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V
    .locals 4
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 875
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->fetchInternal([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 881
    return-void

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->logLastDiscourse()V

    .line 879
    throw v0
.end method

.method public fetchInternal([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V
    .locals 41
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 885
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    if-nez v35, :cond_1

    .line 1057
    :cond_0
    return-void

    .line 888
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 889
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    .line 890
    .local v34, uids:[Ljava/lang/String;
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 891
    .local v22, messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v0, p1

    array-length v0, v0

    move v8, v0

    .local v8, count:I
    :goto_0
    move/from16 v0, v16

    move v1, v8

    if-ge v0, v1, :cond_2

    .line 892
    aget-object v35, p1, v16

    invoke-virtual/range {v35 .. v35}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v34, v16

    .line 893
    aget-object v35, v34, v16

    aget-object v36, p1, v16

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 902
    :cond_2
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 903
    .local v11, fetchFields:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v35, "UID"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 904
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 905
    const-string v35, "FLAGS"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_3
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 908
    const-string v35, "INTERNALDATE"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 909
    const-string v35, "RFC822.SIZE"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 910
    const-string v35, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_4
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_5

    .line 914
    const-string v35, "BODYSTRUCTURE"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_5
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 917
    const-string v35, "BODY.PEEK[]<0.%d>"

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const v38, 0xc800

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    aput-object v38, v36, v37

    invoke-static/range {v35 .. v36}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 919
    :cond_6
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 920
    const-string v35, "BODY.PEEK[]"

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 922
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/email/mail/FetchProfile;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .line 923
    .local v25, o:Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/email/mail/Part;

    move/from16 v35, v0

    if-eqz v35, :cond_8

    .line 924
    move-object/from16 v0, v25

    check-cast v0, Lcom/android/email/mail/Part;

    move-object/from16 v26, v0

    .line 925
    .local v26, part:Lcom/android/email/mail/Part;
    const-string v35, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 927
    .local v27, partIds:[Ljava/lang/String;
    if-eqz v27, :cond_8

    .line 929
    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    .line 930
    .local v30, sbuf:Ljava/lang/StringBuffer;
    const-string v35, "BODY.PEEK["

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    const/16 v36, 0x0

    aget-object v36, v27, v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 936
    .end local v25           #o:Ljava/lang/Object;
    .end local v26           #part:Lcom/android/email/mail/Part;
    .end local v27           #partIds:[Ljava/lang/String;
    .end local v30           #sbuf:Ljava/lang/StringBuffer;
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v35, v0

    const-string v36, "UID FETCH %s (%s)"

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x2c

    move-object/from16 v0, v34

    move/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/email/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    const/16 v38, 0x1

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->size()I

    move-result v39

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v39, v0

    move-object v0, v11

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v39

    const/16 v40, 0x20

    invoke-static/range {v39 .. v40}, Lcom/android/email/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v32

    .line 941
    .local v32, tag:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, messageNumber:I
    move/from16 v24, v23

    .line 943
    .end local v23           #messageNumber:I
    .local v24, messageNumber:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    move-result-object v28

    .line 945
    .local v28, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    move-object/from16 v35, v0

    if-nez v35, :cond_1a

    const/16 v35, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v35

    const-string v36, "FETCH"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1a

    .line 946
    const-string v35, "FETCH"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getKeyedValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    .line 947
    .local v12, fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    const-string v35, "UID"

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 948
    .local v33, uid:Ljava/lang/String;
    if-nez v33, :cond_b

    move/from16 v23, v24

    .line 1049
    .end local v12           #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v24           #messageNumber:I
    .end local v33           #uid:Ljava/lang/String;
    .restart local v23       #messageNumber:I
    :cond_a
    :goto_3
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    move-object/from16 v35, v0

    if-nez v35, :cond_0

    move/from16 v24, v23

    .end local v23           #messageNumber:I
    .restart local v24       #messageNumber:I
    goto :goto_2

    .line 950
    .restart local v12       #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .restart local v33       #uid:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v22

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/email/mail/Message;

    .line 951
    .local v21, message:Lcom/android/email/mail/Message;
    if-nez v21, :cond_c

    move/from16 v23, v24

    .end local v24           #messageNumber:I
    .restart local v23       #messageNumber:I
    goto :goto_3

    .line 953
    .end local v23           #messageNumber:I
    .restart local v24       #messageNumber:I
    :cond_c
    if-eqz p3, :cond_19

    .line 954
    add-int/lit8 v23, v24, 0x1

    .end local v24           #messageNumber:I
    .restart local v23       #messageNumber:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v35

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    move/from16 v2, v24

    move/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 957
    :goto_4
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 958
    const-string v35, "FLAGS"

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v14

    .line 959
    .local v14, flags:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v18, v0

    .line 960
    .local v18, imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    if-eqz v14, :cond_11

    .line 961
    const/16 v16, 0x0

    invoke-virtual {v14}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v8

    :goto_5
    move/from16 v0, v16

    move v1, v8

    if-ge v0, v1, :cond_11

    .line 962
    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 963
    .local v13, flag:Ljava/lang/String;
    const-string v35, "\\Deleted"

    move-object v0, v13

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_e

    .line 964
    sget-object v35, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/16 v36, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    .line 961
    :cond_d
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 966
    :cond_e
    const-string v35, "\\Answered"

    move-object v0, v13

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 967
    sget-object v35, Lcom/android/email/mail/Flag;->ANSWERED:Lcom/android/email/mail/Flag;

    const/16 v36, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_6

    .line 1051
    .end local v12           #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v13           #flag:Ljava/lang/String;
    .end local v14           #flags:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v18           #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v21           #message:Lcom/android/email/mail/Message;
    .end local v23           #messageNumber:I
    .end local v28           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v32           #tag:Ljava/lang/String;
    .end local v33           #uid:Ljava/lang/String;
    :catch_0
    move-exception v35

    move-object/from16 v20, v35

    .line 1052
    .local v20, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v35

    throw v35

    .line 969
    .end local v20           #ioe:Ljava/io/IOException;
    .restart local v12       #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .restart local v13       #flag:Ljava/lang/String;
    .restart local v14       #flags:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .restart local v18       #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .restart local v21       #message:Lcom/android/email/mail/Message;
    .restart local v23       #messageNumber:I
    .restart local v28       #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .restart local v32       #tag:Ljava/lang/String;
    .restart local v33       #uid:Ljava/lang/String;
    :cond_f
    :try_start_1
    const-string v35, "\\Seen"

    move-object v0, v13

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_10

    .line 970
    sget-object v35, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    const/16 v36, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 1054
    .end local v12           #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v13           #flag:Ljava/lang/String;
    .end local v14           #flags:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v18           #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v21           #message:Lcom/android/email/mail/Message;
    .end local v23           #messageNumber:I
    .end local v28           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v32           #tag:Ljava/lang/String;
    .end local v33           #uid:Ljava/lang/String;
    :catch_1
    move-exception v35

    move-object/from16 v29, v35

    .line 1055
    .local v29, rune:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->runExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/lang/RuntimeException;)Lcom/android/email/mail/MessagingException;

    move-result-object v35

    throw v35

    .line 972
    .end local v29           #rune:Ljava/lang/RuntimeException;
    .restart local v12       #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .restart local v13       #flag:Ljava/lang/String;
    .restart local v14       #flags:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .restart local v18       #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .restart local v21       #message:Lcom/android/email/mail/Message;
    .restart local v23       #messageNumber:I
    .restart local v28       #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .restart local v32       #tag:Ljava/lang/String;
    .restart local v33       #uid:Ljava/lang/String;
    :cond_10
    :try_start_2
    const-string v35, "\\Flagged"

    move-object v0, v13

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 973
    sget-object v35, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    const/16 v36, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    goto :goto_6

    .line 978
    .end local v13           #flag:Ljava/lang/String;
    .end local v14           #flags:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v18           #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :cond_11
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 979
    const-string v35, "INTERNALDATE"

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v19

    .line 980
    .local v19, internalDate:Ljava/util/Date;
    const-string v35, "RFC822.SIZE"

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedNumber(Ljava/lang/Object;)I

    move-result v31

    .line 981
    .local v31, size:I
    invoke-virtual {v12}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v35

    const/16 v36, 0x1

    sub-int v35, v35, v36

    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getLiteral(I)Ljava/io/InputStream;

    move-result-object v15

    .line 983
    .local v15, headerStream:Ljava/io/InputStream;
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v18, v0

    .line 985
    .restart local v18       #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setInternalDate(Ljava/util/Date;)V

    .line 986
    move-object/from16 v0, v18

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 987
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 989
    .end local v15           #headerStream:Ljava/io/InputStream;
    .end local v18           #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v19           #internalDate:Ljava/util/Date;
    .end local v31           #size:I
    :cond_12
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 990
    const-string v35, "BODYSTRUCTURE"

    move-object v0, v12

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedList(Ljava/lang/Object;)Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 991
    .local v5, bs:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    if-eqz v5, :cond_13

    .line 993
    :try_start_3
    const-string v35, "TEXT"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v21

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/ImapResponseParser$ImapList;Lcom/android/email/mail/Part;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1003
    .end local v5           #bs:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :cond_13
    :goto_7
    :try_start_4
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 1004
    invoke-virtual {v12}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v35

    const/16 v36, 0x1

    sub-int v35, v35, v36

    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getLiteral(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1005
    .local v4, bodyStream:Ljava/io/InputStream;
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v18, v0

    .line 1006
    .restart local v18       #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1008
    .end local v4           #bodyStream:Ljava/io/InputStream;
    .end local v18           #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :cond_14
    sget-object v35, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_15

    .line 1009
    invoke-virtual {v12}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v35

    const/16 v36, 0x1

    sub-int v35, v35, v36

    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getLiteral(I)Ljava/io/InputStream;

    move-result-object v4

    .line 1010
    .restart local v4       #bodyStream:Ljava/io/InputStream;
    move-object/from16 v0, v21

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v18, v0

    .line 1011
    .restart local v18       #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1014
    .end local v4           #bodyStream:Ljava/io/InputStream;
    .end local v18           #imapMessage:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :cond_15
    const/4 v4, 0x0

    .line 1015
    .restart local v4       #bodyStream:Ljava/io/InputStream;
    invoke-virtual/range {p2 .. p2}, Lcom/android/email/mail/FetchProfile;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_16
    :goto_8
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    .line 1016
    .restart local v25       #o:Ljava/lang/Object;
    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/android/email/mail/Part;

    move/from16 v35, v0

    if-eqz v35, :cond_16

    .line 1017
    move-object/from16 v0, v25

    check-cast v0, Lcom/android/email/mail/Part;

    move-object/from16 v26, v0

    .line 1018
    .restart local v26       #part:Lcom/android/email/mail/Part;
    invoke-interface/range {v26 .. v26}, Lcom/android/email/mail/Part;->getSize()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v35

    if-lez v35, :cond_16

    .line 1020
    :try_start_5
    invoke-virtual {v12}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v35

    const/16 v36, 0x1

    sub-int v35, v35, v36

    move-object v0, v12

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getLiteral(I)Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v4

    .line 1029
    :try_start_6
    invoke-interface/range {v26 .. v26}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 1030
    .local v7, contentType:Ljava/lang/String;
    const-string v35, "Content-Transfer-Encoding"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v35

    const/16 v36, 0x0

    aget-object v6, v35, v36

    .line 1032
    .local v6, contentTransferEncoding:Ljava/lang/String;
    if-eqz v4, :cond_16

    .line 1034
    invoke-static {v4, v6}, Lcom/android/email/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/email/mail/Body;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    goto :goto_8

    .line 995
    .end local v4           #bodyStream:Ljava/io/InputStream;
    .end local v6           #contentTransferEncoding:Ljava/lang/String;
    .end local v7           #contentType:Ljava/lang/String;
    .end local v25           #o:Ljava/lang/Object;
    .end local v26           #part:Lcom/android/email/mail/Part;
    .restart local v5       #bs:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :catch_2
    move-exception v35

    move-object/from16 v9, v35

    .line 999
    .local v9, e:Lcom/android/email/mail/MessagingException;
    const/16 v35, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setBody(Lcom/android/email/mail/Body;)V

    goto/16 :goto_7

    .line 1023
    .end local v5           #bs:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v9           #e:Lcom/android/email/mail/MessagingException;
    .restart local v4       #bodyStream:Ljava/io/InputStream;
    .restart local v25       #o:Ljava/lang/Object;
    .restart local v26       #part:Lcom/android/email/mail/Part;
    :catch_3
    move-exception v35

    move-object/from16 v10, v35

    .line 1027
    .local v10, ee:Ljava/lang/ClassCastException;
    goto :goto_8

    .line 1042
    .end local v10           #ee:Ljava/lang/ClassCastException;
    .end local v25           #o:Ljava/lang/Object;
    .end local v26           #part:Lcom/android/email/mail/Part;
    :cond_17
    if-eqz p3, :cond_18

    .line 1043
    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->size()I

    move-result v35

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageFinished(Lcom/android/email/mail/Message;II)V

    .line 1047
    .end local v4           #bodyStream:Ljava/io/InputStream;
    .end local v12           #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v21           #message:Lcom/android/email/mail/Message;
    .end local v33           #uid:Ljava/lang/String;
    :cond_18
    :goto_9
    invoke-virtual/range {v28 .. v28}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->more()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v35

    if-eqz v35, :cond_a

    goto :goto_9

    .end local v23           #messageNumber:I
    .restart local v12       #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .restart local v21       #message:Lcom/android/email/mail/Message;
    .restart local v24       #messageNumber:I
    .restart local v33       #uid:Ljava/lang/String;
    :cond_19
    move/from16 v23, v24

    .end local v24           #messageNumber:I
    .restart local v23       #messageNumber:I
    goto/16 :goto_4

    .end local v12           #fetchList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v21           #message:Lcom/android/email/mail/Message;
    .end local v23           #messageNumber:I
    .end local v33           #uid:Ljava/lang/String;
    .restart local v24       #messageNumber:I
    :cond_1a
    move/from16 v23, v24

    .end local v24           #messageNumber:I
    .restart local v23       #messageNumber:I
    goto :goto_9
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .locals 12
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 770
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 774
    :try_start_0
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "UID SEARCH UID %S"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 776
    .local v6, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 777
    .local v5, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    iget-object v7, v5, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "SEARCH"

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 778
    const/4 v1, 0x1

    .local v1, i:I
    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 779
    invoke-virtual {v5, v1}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 780
    new-instance v7, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-direct {v7, v8, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 793
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :goto_1
    return-object v7

    .line 778
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, me:Lcom/android/email/mail/MessagingException;
    move-object v7, v11

    .line 787
    goto :goto_1

    .line 790
    .end local v4           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 791
    .local v3, ioe:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v7, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v7

    throw v7

    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_2
    move-object v7, v11

    .line 793
    goto :goto_1
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 18
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 799
    const/4 v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-lt v0, v1, :cond_0

    const/4 v13, 0x1

    move/from16 v0, p2

    move v1, v13

    if-lt v0, v1, :cond_0

    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 800
    :cond_0
    new-instance v13, Lcom/android/email/mail/MessagingException;

    const-string v14, "Invalid message set %d %d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 804
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 805
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v9, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v12, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object v13, v0

    const-string v14, "UID SEARCH %d:%d NOT DELETED"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 810
    .local v11, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 811
    .local v10, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "SEARCH"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 812
    const/4 v5, 0x1

    .local v5, i:I
    invoke-virtual {v10}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v4

    .local v4, count:I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 813
    invoke-virtual {v10, v5}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 817
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v10           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #i:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .end local p1
    .restart local v4       #count:I
    :goto_1
    if-ge v5, v4, :cond_6

    .line 818
    if-eqz p3, :cond_4

    .line 819
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v2, v5

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 821
    :cond_4
    new-instance v8, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object v13, v0

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    .line 822
    .local v8, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    if-eqz p3, :cond_5

    .line 824
    move-object/from16 v0, p3

    move-object v1, v8

    move v2, v5

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageFinished(Lcom/android/email/mail/Message;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 817
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 827
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v11           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v12           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v13

    move-object v7, v13

    .line 828
    .local v7, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v13

    throw v13

    .line 830
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v11       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v12       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/android/email/mail/Message;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Message;

    return-object p0
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 18
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 732
    const/4 v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-ge v0, v1, :cond_0

    .line 733
    new-instance v13, Lcom/android/email/mail/MessagingException;

    const-string v14, "Invalid message set %d %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 737
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 738
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v9, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v12, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object v13, v0

    const-string v14, "UID SEARCH %d:*%s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p2, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 743
    .local v11, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 744
    .local v10, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v13

    const-string v14, "SEARCH"

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 745
    const/4 v5, 0x1

    .local v5, i:I
    invoke-virtual {v10}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v4

    .local v4, count:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 746
    invoke-virtual {v10, v5}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 750
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v10           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #i:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    .end local p1
    .restart local v4       #count:I
    :goto_1
    if-ge v5, v4, :cond_5

    .line 751
    if-eqz p3, :cond_3

    .line 752
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move v2, v5

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 754
    :cond_3
    new-instance v8, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    move-object v13, v0

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v8

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    .line 755
    .local v8, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    if-eqz p3, :cond_4

    .line 757
    move-object/from16 v0, p3

    move-object v1, v8

    move v2, v5

    move v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/email/mail/MessageRetrievalListener;->messageFinished(Lcom/android/email/mail/Message;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 760
    .end local v4           #count:I
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v11           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v12           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v13

    move-object v7, v13

    .line 761
    .local v7, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object v13, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v13

    throw v13

    .line 763
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v4       #count:I
    .restart local v5       #i:I
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v11       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    .restart local v12       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v13, 0x0

    new-array v13, v13, [Lcom/android/email/mail/Message;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Message;

    return-object p0
.end method

.method public getMessages(Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 834
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 13
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 839
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 840
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v6, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    if-nez p1, :cond_2

    .line 843
    :try_start_0
    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v11, "UID SEARCH 1:* NOT DELETED"

    invoke-virtual {v10, v11}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 845
    .local v8, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v9, tempUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 847
    .local v7, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "SEARCH"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 848
    const/4 v2, 0x1

    .local v2, i:I
    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v1

    .local v1, count:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 849
    invoke-virtual {v7, v2}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 853
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v7           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    :cond_1
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    .line 855
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v9           #tempUids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #i:I
    array-length v1, p1

    .restart local v1       #count:I
    :goto_1
    if-ge v2, v1, :cond_5

    .line 856
    if-eqz p2, :cond_3

    .line 857
    aget-object v10, p1, v2

    invoke-interface {p2, v10, v2, v1}, Lcom/android/email/mail/MessageRetrievalListener;->messageStarted(Ljava/lang/String;II)V

    .line 859
    :cond_3
    new-instance v5, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    aget-object v11, p1, v2

    invoke-direct {v5, v10, v11, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    .line 860
    .local v5, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    if-eqz p2, :cond_4

    .line 862
    invoke-interface {p2, v5, v2, v1}, Lcom/android/email/mail/MessageRetrievalListener;->messageFinished(Lcom/android/email/mail/Message;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 855
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 865
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v5           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 866
    .local v4, ioe:Ljava/io/IOException;
    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v10, v4}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v10

    throw v10

    .line 868
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v1       #count:I
    .restart local v2       #i:I
    :cond_5
    new-array v10, v12, [Lcom/android/email/mail/Message;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Lcom/android/email/mail/Message;

    return-object p0
.end method

.method public getMode()Lcom/android/email/mail/Folder$OpenMode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/email/mail/Flag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1061
    invoke-static {}, Lcom/android/email/mail/store/ImapStore;->access$300()[Lcom/android/email/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 706
    const/4 v5, 0x0

    .line 707
    .local v5, unreadMessageCount:I
    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v7, "STATUS \"%s\" (UNSEEN)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/email/mail/store/ImapStore;->access$100(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 710
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 711
    .local v2, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    iget-object v6, v2, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "STATUS"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 712
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v4

    .line 713
    .local v4, status:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    const-string v6, "UNSEEN"

    invoke-virtual {v4, v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getKeyedNumber(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 718
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v3           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    .end local v4           #status:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 719
    .local v1, ioe:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v6, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v6

    throw v6

    .line 716
    .end local v1           #ioe:Ljava/io/IOException;
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_1
    return v5
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V
    .locals 12
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;

    if-ne v6, p1, :cond_0

    .line 523
    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v7, "NOOP"

    invoke-virtual {v6, v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 527
    .local v2, ioe:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v6, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    .line 530
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_0
    monitor-enter p0

    .line 531
    :try_start_1
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore;->access$000(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 532
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    :try_start_2
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v7, "SELECT \"%s\""

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->this$0:Lcom/android/email/mail/store/ImapStore;

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/email/mail/store/ImapStore;->access$100(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 550
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    iput-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;

    .line 552
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 553
    .local v3, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    iget-object v6, v3, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-nez v6, :cond_2

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "EXISTS"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 554
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getNumber(I)I

    move-result v6

    iput v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 574
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v5           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 575
    .restart local v2       #ioe:Ljava/io/IOException;
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v6, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v6

    throw v6

    .line 532
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 555
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .restart local v5       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_2
    :try_start_4
    iget-object v6, v3, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 556
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getListOrNull(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v4

    .line 557
    .local v4, responseList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    if-eqz v4, :cond_1

    .line 558
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getStringOrNull(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, atom:Ljava/lang/String;
    const-string v6, "READ-ONLY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 560
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/email/mail/Folder$OpenMode;

    iput-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;

    goto :goto_1

    .line 561
    :cond_3
    const-string v6, "READ-WRITE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 562
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    iput-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;

    goto :goto_1

    .line 568
    .end local v0           #atom:Ljava/lang/String;
    .end local v3           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v4           #responseList:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    :cond_4
    iget v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 569
    new-instance v6, Lcom/android/email/mail/MessagingException;

    const-string v7, "Did not find message count during select"

    invoke-direct {v6, v7}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 572
    :cond_5
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0
.end method

.method public setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V
    .locals 12
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1379
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .local v6, uidList:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v1, p1

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 1382
    if-lez v4, :cond_0

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1383
    :cond_0
    aget-object v7, p1, v4

    invoke-virtual {v7}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1386
    :cond_1
    const-string v0, ""

    .line 1387
    .local v0, allFlags:Ljava/lang/String;
    array-length v7, p2

    if-lez v7, :cond_6

    .line 1388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1389
    .local v3, flagList:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    array-length v1, p2

    :goto_1
    if-ge v4, v1, :cond_5

    .line 1390
    aget-object v2, p2, v4

    .line 1391
    .local v2, flag:Lcom/android/email/mail/Flag;
    sget-object v7, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    if-ne v2, v7, :cond_3

    .line 1392
    const-string v7, " \\Seen"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1393
    :cond_3
    sget-object v7, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    if-ne v2, v7, :cond_4

    .line 1394
    const-string v7, " \\Deleted"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1395
    :cond_4
    sget-object v7, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    if-ne v2, v7, :cond_2

    .line 1396
    const-string v7, " \\Flagged"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1399
    .end local v2           #flag:Lcom/android/email/mail/Flag;
    :cond_5
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .end local v3           #flagList:Ljava/lang/StringBuilder;
    :cond_6
    :try_start_0
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    if-eqz p3, :cond_7

    const-string v11, "+"

    :goto_3
    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1410
    return-void

    .line 1402
    :cond_7
    const-string v11, "-"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1407
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 1408
    .local v5, ioe:Ljava/io/IOException;
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v7, v5}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v7

    throw v7
.end method
