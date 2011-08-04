.class Lcom/android/email/mail/store/ImapStore$ImapFolder;
.super Lcom/android/email/mail/Folder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapFolder"
.end annotation


# instance fields
.field private mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

.field private mExists:Z

.field private mMessageCount:I

.field private mMode:Lcom/android/email/mail/Folder$OpenMode;

.field private final mName:Ljava/lang/String;

.field private final mStore:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .locals 1
    .parameter "store"
    .parameter "name"

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/email/mail/Folder;-><init>()V

    .line 509
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 515
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    .line 516
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    .line 517
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
    .line 1368
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1369
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

    .line 1371
    :cond_0
    return-void
.end method

.method private destroyResponses()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 523
    :cond_0
    return-void
.end method

.method private handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1050
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 1053
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
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1040
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1041
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_0

    .line 1043
    .end local v1           #response:Lcom/android/email/mail/store/imap/ImapResponse;
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
    .line 1375
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1376
    const-string v0, "Email"

    const-string v1, "IO Exception detected: "

    invoke-static {v0, v1, p2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1378
    :cond_0
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1379
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 1380
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-ne p1, v0, :cond_1

    .line 1381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 1382
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 1384
    :cond_1
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "IO Error"

    invoke-direct {v0, v1, p2}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/email/mail/Part;Ljava/lang/String;)V
    .locals 13
    .parameter "bs"
    .parameter "part"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1057
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1061
    new-instance v4, Lcom/android/email/mail/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/android/email/mail/internet/MimeMultipart;-><init>()V

    .line 1062
    .local v4, mp:Lcom/android/email/mail/internet/MimeMultipart;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v2

    .local v2, count:I
    move v3, v1

    .end local v1           #i:I
    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1063
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v1

    .line 1064
    .local v1, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    new-instance v1, Lcom/android/email/mail/internet/MimeBodyPart;

    .end local v1           #e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-direct {v1}, Lcom/android/email/mail/internet/MimeBodyPart;-><init>()V

    .line 1070
    .local v1, bp:Lcom/android/email/mail/internet/MimeBodyPart;
    const-string v5, "TEXT"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1071
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/email/mail/Part;Ljava/lang/String;)V

    .line 1076
    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/email/mail/internet/MimeMultipart;->addBodyPart(Lcom/android/email/mail/BodyPart;)V

    .line 1062
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i:I
    .local v1, i:I
    move v3, v1

    .end local v1           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 1074
    .local v1, bp:Lcom/android/email/mail/internet/MimeBodyPart;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/email/mail/Part;Ljava/lang/String;)V

    goto :goto_1

    .line 1079
    .local v1, e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_1
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result p2

    .end local p2
    if-eqz p2, :cond_2

    .line 1080
    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/android/email/mail/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1085
    .end local v1           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_2
    invoke-interface {p1, v4}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    .line 1228
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #mp:Lcom/android/email/mail/internet/MimeMultipart;
    :goto_2
    return-void

    .line 1102
    .restart local p0
    .restart local p2
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    .line 1103
    .local v8, type:Lcom/android/email/mail/store/imap/ImapString;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    .line 1104
    .local v1, subType:Lcom/android/email/mail/store/imap/ImapString;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #subType:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1107
    .local v4, mimeType:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v1

    .line 1108
    .local v1, bodyParams:Lcom/android/email/mail/store/imap/ImapList;
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v2

    .line 1109
    .local v2, cid:Lcom/android/email/mail/store/imap/ImapString;
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 1110
    .local v5, encoding:Lcom/android/email/mail/store/imap/ImapString;
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v7

    .line 1112
    .local v7, size:I
    const-string v3, "message/rfc822"

    invoke-static {v4, v3}, Lcom/android/email/mail/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1122
    new-instance p0, Lcom/android/email/mail/MessagingException;

    .end local p0
    const-string p1, "BODYSTRUCTURE message/rfc822 not yet supported."

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1129
    .restart local p0
    .restart local p1
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v3, contentType:Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .local v6, i:I
    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v4

    .local v4, count:I
    :goto_3
    if-ge v6, v4, :cond_5

    .line 1140
    const-string v9, ";\n %s=\"%s\""

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    sub-int v12, v6, v12

    invoke-virtual {v1, v12}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v1, v6}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    add-int/lit8 v6, v6, 0x2

    goto :goto_3

    .line 1145
    :cond_5
    const-string v1, "Content-Type"

    .end local v1           #bodyParams:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v3           #contentType:Ljava/lang/StringBuilder;
    invoke-interface {p1, v1, v3}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v1, "TEXT"

    invoke-virtual {v8, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1154
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object p0

    .line 1159
    .local p0, bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .local v3, contentDisposition:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 1162
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, bodyDisposition0Str:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .end local v4           #count:I
    if-nez v4, :cond_6

    .line 1165
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    .end local v1           #bodyDisposition0Str:Ljava/lang/String;
    move-result-object p0

    .line 1169
    .local p0, bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1174
    const/4 v4, 0x1

    .end local v6           #i:I
    .local v4, i:I
    invoke-virtual {p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    .end local v8           #type:Lcom/android/email/mail/store/imap/ImapString;
    .local v1, count:I
    :goto_5
    if-ge v4, v1, :cond_8

    .line 1177
    const-string v6, ";\n %s=\"%s\""

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    sub-int v10, v4, v10

    invoke-virtual {p0, v10}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0, v4}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    add-int/lit8 v4, v4, 0x2

    goto :goto_5

    .line 1156
    .end local v1           #count:I
    .end local v3           #contentDisposition:Ljava/lang/StringBuilder;
    .local v4, count:I
    .restart local v6       #i:I
    .restart local v8       #type:Lcom/android/email/mail/store/imap/ImapString;
    .local p0, bs:Lcom/android/email/mail/store/imap/ImapList;
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object p0

    .local p0, bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    goto :goto_4

    .line 1185
    .end local v4           #count:I
    .end local v6           #i:I
    .end local v8           #type:Lcom/android/email/mail/store/imap/ImapString;
    .end local p0           #bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v3       #contentDisposition:Ljava/lang/StringBuilder;
    :cond_8
    if-lez v7, :cond_9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "size"

    invoke-static {p0, v1}, Lcom/android/email/mail/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    .line 1188
    const-string p0, ";\n size=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v4

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_a

    .line 1196
    const-string p0, "Content-Disposition"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    :cond_a
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    .line 1205
    const-string p0, "Content-Transfer-Encoding"

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_b
    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    .line 1213
    const-string p0, "Content-ID"

    invoke-virtual {v2}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    :cond_c
    if-lez v7, :cond_d

    .line 1217
    instance-of p0, p1, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    if-eqz p0, :cond_e

    .line 1218
    move-object v0, p1

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1225
    :cond_d
    :goto_6
    const-string p0, "X-Android-Attachment-StoreData"

    invoke-interface {p1, p0, p2}, Lcom/android/email/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1219
    :cond_e
    instance-of p0, p1, Lcom/android/email/mail/internet/MimeBodyPart;

    if-eqz p0, :cond_f

    .line 1220
    move-object v0, p1

    check-cast v0, Lcom/android/email/mail/internet/MimeBodyPart;

    move-object v1, v0

    invoke-virtual {v1, v7}, Lcom/android/email/mail/internet/MimeBodyPart;->setSize(I)V

    goto :goto_6

    .line 1222
    :cond_f
    new-instance p0, Lcom/android/email/mail/MessagingException;

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown part type "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public appendMessages([Lcom/android/email/mail/Message;)V
    .locals 27
    .parameter "messages"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1237
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1239
    move-object/from16 v4, p1

    .local v4, arr$:[Lcom/android/email/mail/Message;
    :try_start_0
    array-length v13, v4

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_9

    aget-object v14, v4, v11

    .line 1241
    .local v14, message:Lcom/android/email/mail/Message;
    new-instance v16, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct/range {v16 .. v16}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V

    .line 1242
    .local v16, out:Lcom/android/email/mail/transport/CountingOutputStream;
    new-instance v6, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1243
    .local v6, eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    invoke-virtual {v14, v6}, Lcom/android/email/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1244
    invoke-virtual {v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1246
    const-string v8, ""

    .line 1247
    .local v8, flagList:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/email/mail/Message;->getFlags()[Lcom/android/email/mail/Flag;

    move-result-object v9

    .line 1248
    .local v9, flags:[Lcom/android/email/mail/Flag;
    move-object v0, v9

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_3

    .line 1249
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1250
    .local v18, sb:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .local v10, i:I
    array-length v5, v9

    .local v5, count:I
    :goto_1
    if-ge v10, v5, :cond_2

    .line 1251
    aget-object v7, v9, v10

    .line 1252
    .local v7, flag:Lcom/android/email/mail/Flag;
    sget-object v21, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    move-object v0, v7

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1253
    const-string v21, " \\SEEN"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1254
    :cond_1
    sget-object v21, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    move-object v0, v7

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 1255
    const-string v21, " \\FLAGGED"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1313
    .end local v5           #count:I
    .end local v6           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .end local v7           #flag:Lcom/android/email/mail/Flag;
    .end local v8           #flagList:Ljava/lang/String;
    .end local v9           #flags:[Lcom/android/email/mail/Flag;
    .end local v10           #i:I
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v14           #message:Lcom/android/email/mail/Message;
    .end local v16           #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v21

    move-object/from16 v12, v21

    .line 1314
    .local v12, ioe:Ljava/io/IOException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v21

    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1316
    .end local v12           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v21

    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v21

    .line 1258
    .restart local v5       #count:I
    .restart local v6       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .restart local v8       #flagList:Ljava/lang/String;
    .restart local v9       #flags:[Lcom/android/email/mail/Flag;
    .restart local v10       #i:I
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #message:Lcom/android/email/mail/Message;
    .restart local v16       #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .restart local v18       #sb:Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    if-lez v21, :cond_3

    .line 1259
    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1263
    .end local v5           #count:I
    .end local v10           #i:I
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v21, v0

    const-string v22, "APPEND \"%s\" (%s) {%d}"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    aput-object v8, v23, v24

    const/16 v24, 0x2

    invoke-virtual/range {v16 .. v16}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1270
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v17

    .line 1271
    .local v17, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1272
    new-instance v6, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    .end local v6           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$100(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1274
    .restart local v6       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    invoke-virtual {v14, v6}, Lcom/android/email/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1275
    const/16 v21, 0xd

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1276
    const/16 v21, 0xa

    move-object v0, v6

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1277
    invoke-virtual {v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1281
    :cond_5
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1289
    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v3

    .line 1290
    .local v3, appendList:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_8

    const/16 v21, 0x0

    const-string v22, "APPENDUID"

    move-object v0, v3

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1291
    const/16 v21, 0x2

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v19

    .line 1292
    .local v19, serverUid:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 1293
    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1239
    .end local v19           #serverUid:Ljava/lang/String;
    :cond_6
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1278
    .end local v3           #appendList:Lcom/android/email/mail/store/imap/ImapList;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v21

    if-nez v21, :cond_5

    .line 1279
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_3

    .line 1303
    .restart local v3       #appendList:Lcom/android/email/mail/store/imap/ImapList;
    :cond_8
    invoke-virtual {v14}, Lcom/android/email/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v15

    .line 1304
    .local v15, messageId:Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_6

    .line 1307
    const-string v21, "(HEADER MESSAGE-ID %s)"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v15, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 1309
    .local v20, uids:[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_6

    .line 1310
    const/16 v21, 0x0

    aget-object v21, v20, v21

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Message;->setUid(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1316
    .end local v3           #appendList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v6           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .end local v8           #flagList:Ljava/lang/String;
    .end local v9           #flags:[Lcom/android/email/mail/Flag;
    .end local v14           #message:Lcom/android/email/mail/Message;
    .end local v15           #messageId:Ljava/lang/String;
    .end local v16           #out:Lcom/android/email/mail/transport/CountingOutputStream;
    .end local v17           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v20           #uids:[Ljava/lang/String;
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1318
    return-void
.end method

.method public canCreate(Lcom/android/email/mail/Folder$FolderType;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 673
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .locals 2
    .parameter "expunge"

    .prologue
    .line 618
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 619
    monitor-enter p0

    .line 620
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 621
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 622
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 623
    monitor-exit p0

    .line 624
    return-void

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyMessages([Lcom/android/email/mail/Message;Lcom/android/email/mail/Folder;Lcom/android/email/mail/Folder$MessageUpdateCallbacks;)V
    .locals 6
    .parameter "messages"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 715
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v2, "UID COPY %s \"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/email/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/android/email/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 724
    return-void

    .line 719
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 720
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 722
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public create(Lcom/android/email/mail/Folder$FolderType;)Z
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 685
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_1

    .line 686
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 690
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    :try_start_1
    const-string v3, "CREATE \"%s\""

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 703
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 704
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_0

    .line 705
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_0
    move v3, v8

    .line 697
    :goto_1
    return v3

    .line 688
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_0

    .line 690
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 696
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 703
    .local v2, me:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 704
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    .line 705
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_2
    move v3, v7

    .line 697
    goto :goto_1

    .line 699
    .end local v2           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 700
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 703
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 704
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_3

    .line 705
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 703
    :cond_3
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .locals 1
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1397
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/Folder;)V

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
    .line 756
    new-instance v0, Ljava/lang/Error;

    const-string v1, "ImapStore.delete() not yet implemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1389
    instance-of v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    if-eqz v0, :cond_0

    .line 1390
    check-cast p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1392
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public exists()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 633
    iget-boolean v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v3, :cond_0

    move v3, v7

    .line 657
    :goto_0
    return v3

    .line 641
    :cond_0
    const/4 v0, 0x0

    .line 642
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 643
    :try_start_0
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_2

    .line 644
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 648
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :try_start_1
    const-string v3, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 653
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 663
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 664
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_1

    .line 665
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_1
    move v3, v7

    .line 654
    goto :goto_0

    .line 646
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_1

    .line 648
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 656
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 663
    .local v2, me:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 664
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_3

    .line 665
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_3
    move v3, v8

    .line 657
    goto :goto_0

    .line 659
    .end local v2           #me:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 660
    .local v1, ioe:Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 663
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 664
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_4

    .line 665
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 663
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
    .line 1322
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1324
    :try_start_0
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v2, "EXPUNGE"

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1330
    const/4 v1, 0x0

    return-object v1

    .line 1325
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1326
    .local v0, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V
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
    .line 860
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->fetchInternal([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    return-void

    .line 861
    :catch_0
    move-exception v0

    .line 862
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

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->logLastDiscourse()V

    .line 866
    :cond_0
    throw v0
.end method

.method public fetchInternal([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/Folder$MessageRetrievalListener;)V
    .locals 36
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 872
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    if-nez v30, :cond_0

    .line 1028
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 876
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 877
    .local v24, messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/email/mail/Message;>;"
    move-object/from16 v3, p1

    .local v3, arr$:[Lcom/android/email/mail/Message;
    move-object v0, v3

    array-length v0, v0

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v22, v3, v17

    .line 878
    .local v22, m:Lcom/android/email/mail/Message;
    invoke-virtual/range {v22 .. v22}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 877
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 892
    .end local v22           #m:Lcom/android/email/mail/Message;
    :cond_1
    new-instance v11, Ljava/util/LinkedHashSet;

    invoke-direct {v11}, Ljava/util/LinkedHashSet;-><init>()V

    .line 894
    .local v11, fetchFields:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v30, "UID"

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 895
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 896
    const-string v30, "FLAGS"

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_2
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    .line 899
    const-string v30, "INTERNALDATE"

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 900
    const-string v30, "RFC822.SIZE"

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 901
    const-string v30, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 903
    :cond_3
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 904
    const-string v30, "BODYSTRUCTURE"

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 907
    :cond_4
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    .line 908
    sget-object v30, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 914
    :cond_5
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/email/mail/FetchProfile;->getFirstPart()Lcom/android/email/mail/Part;

    move-result-object v13

    .line 915
    .local v13, fetchPart:Lcom/android/email/mail/Part;
    if-eqz v13, :cond_6

    .line 916
    const-string v30, "X-Android-Attachment-StoreData"

    move-object v0, v13

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 918
    .local v26, partIds:[Ljava/lang/String;
    if-eqz v26, :cond_6

    .line 919
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "BODY.PEEK["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v31, v26, v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 925
    .end local v26           #partIds:[Ljava/lang/String;
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v30, v0

    const-string v31, "UID FETCH %s (%s)"

    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/email/mail/Message;)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x1

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->size()I

    move-result v34

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v34, v0

    move-object v0, v11

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v34

    const/16 v35, 0x20

    invoke-static/range {v34 .. v35}, Lcom/android/email/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 930
    const/16 v25, 0x0

    .line 932
    .local v25, messageNumber:I
    :cond_7
    const/16 v27, 0x0

    .line 934
    .local v27, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v27

    .line 936
    const/16 v30, 0x1

    const-string v31, "FETCH"

    move-object/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v30

    if-nez v30, :cond_9

    .line 1022
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1024
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v30

    if-eqz v30, :cond_7

    goto/16 :goto_0

    .line 910
    .end local v13           #fetchPart:Lcom/android/email/mail/Part;
    .end local v25           #messageNumber:I
    .end local v27           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_8
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 911
    const-string v30, "BODY.PEEK[]"

    move-object v0, v11

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 939
    .restart local v13       #fetchPart:Lcom/android/email/mail/Part;
    .restart local v25       #messageNumber:I
    .restart local v27       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_9
    const/16 v30, 0x2

    :try_start_3
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v12

    .line 940
    .local v12, fetchList:Lcom/android/email/mail/store/imap/ImapList;
    const-string v30, "UID"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v29

    .line 942
    .local v29, uid:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v30

    if-eqz v30, :cond_a

    .line 1022
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 1025
    .end local v12           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v25           #messageNumber:I
    .end local v27           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v29           #uid:Ljava/lang/String;
    :catch_0
    move-exception v30

    move-object/from16 v20, v30

    .line 1026
    .local v20, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v30

    throw v30

    .line 944
    .end local v20           #ioe:Ljava/io/IOException;
    .restart local v12       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v25       #messageNumber:I
    .restart local v27       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v29       #uid:Ljava/lang/String;
    :cond_a
    :try_start_5
    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 945
    .local v23, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    if-nez v23, :cond_b

    .line 1022
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 947
    :cond_b
    :try_start_7
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->FLAGS:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_10

    .line 948
    const-string v30, "FLAGS"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v15

    .line 950
    .local v15, flags:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v16, 0x0

    .local v16, i:I
    invoke-virtual {v15}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v9

    .local v9, count:I
    :goto_4
    move/from16 v0, v16

    move v1, v9

    if-ge v0, v1, :cond_10

    .line 951
    invoke-virtual/range {v15 .. v16}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v14

    .line 952
    .local v14, flag:Lcom/android/email/mail/store/imap/ImapString;
    const-string v30, "\\DELETED"

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 953
    sget-object v30, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    .line 950
    :cond_c
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 954
    :cond_d
    const-string v30, "\\ANSWERED"

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_e

    .line 955
    sget-object v30, Lcom/android/email/mail/Flag;->ANSWERED:Lcom/android/email/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 1022
    .end local v9           #count:I
    .end local v12           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v14           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v15           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v16           #i:I
    .end local v23           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v29           #uid:Ljava/lang/String;
    :catchall_0
    move-exception v30

    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v30
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 956
    .restart local v9       #count:I
    .restart local v12       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v14       #flag:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v15       #flags:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v16       #i:I
    .restart local v23       #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .restart local v29       #uid:Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string v30, "\\SEEN"

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_f

    .line 957
    sget-object v30, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    goto :goto_5

    .line 958
    :cond_f
    const-string v30, "\\FLAGGED"

    move-object v0, v14

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_c

    .line 959
    sget-object v30, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    const/16 v31, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/email/mail/Flag;Z)V

    goto :goto_5

    .line 963
    .end local v9           #count:I
    .end local v14           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v15           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v16           #i:I
    :cond_10
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 964
    const-string v30, "INTERNALDATE"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v19

    .line 966
    .local v19, internalDate:Ljava/util/Date;
    const-string v30, "RFC822.SIZE"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v28

    .line 970
    .local v28, size:I
    const-string v30, "BODY[HEADER"

    const/16 v31, 0x1

    move-object v0, v12

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v18

    .line 973
    .local v18, inHeader:Ljava/io/InputStream;
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 974
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 976
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 978
    .end local v18           #inHeader:Ljava/io/InputStream;
    .end local v19           #internalDate:Ljava/util/Date;
    .end local v28           #size:I
    :cond_11
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_12

    .line 979
    const-string v30, "BODYSTRUCTURE"

    move-object v0, v12

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v6

    .line 981
    .local v6, bs:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v30

    if-nez v30, :cond_12

    .line 983
    :try_start_a
    const-string v30, "TEXT"

    move-object v0, v6

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/email/mail/Part;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1

    .line 992
    .end local v6           #bs:Lcom/android/email/mail/store/imap/ImapList;
    :cond_12
    :goto_6
    :try_start_b
    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_13

    sget-object v30, Lcom/android/email/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/email/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 998
    :cond_13
    const-string v30, "BODY["

    const/16 v31, 0x1

    move-object v0, v12

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v4

    .line 999
    .local v4, body:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1000
    .local v5, bodyStream:Ljava/io/InputStream;
    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1002
    .end local v4           #body:Lcom/android/email/mail/store/imap/ImapString;
    .end local v5           #bodyStream:Ljava/io/InputStream;
    :cond_14
    if-eqz v13, :cond_15

    invoke-interface {v13}, Lcom/android/email/mail/Part;->getSize()I

    move-result v30

    if-lez v30, :cond_15

    .line 1003
    const-string v30, "BODY["

    const/16 v31, 0x1

    move-object v0, v12

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v5

    .line 1005
    .restart local v5       #bodyStream:Ljava/io/InputStream;
    invoke-interface {v13}, Lcom/android/email/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 1006
    .local v8, contentType:Ljava/lang/String;
    const-string v30, "Content-Transfer-Encoding"

    move-object v0, v13

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    aget-object v7, v30, v31

    .line 1013
    .local v7, contentTransferEncoding:Ljava/lang/String;
    invoke-static {v5, v7}, Lcom/android/email/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/email/mail/Body;

    move-result-object v30

    move-object v0, v13

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/android/email/mail/Part;->setBody(Lcom/android/email/mail/Body;)V

    .line 1018
    .end local v5           #bodyStream:Ljava/io/InputStream;
    .end local v7           #contentTransferEncoding:Ljava/lang/String;
    .end local v8           #contentType:Ljava/lang/String;
    :cond_15
    if-eqz p3, :cond_16

    .line 1019
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lcom/android/email/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/email/mail/Message;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1022
    :cond_16
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_3

    .line 984
    .restart local v6       #bs:Lcom/android/email/mail/store/imap/ImapList;
    :catch_1
    move-exception v30

    move-object/from16 v10, v30

    .line 988
    .local v10, e:Lcom/android/email/mail/MessagingException;
    const/16 v30, 0x0

    :try_start_d
    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/email/mail/Body;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/email/mail/Message;
    .locals 4
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 807
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 810
    .local v1, uids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 811
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 812
    new-instance v2, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    .line 815
    :goto_1
    return-object v2

    .line 810
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 815
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 821
    if-lt p1, v4, :cond_0

    if-lt p2, v4, :cond_0

    if-ge p2, p1, :cond_1

    .line 822
    :cond_0
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "Invalid range: %d %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_1
    const-string v0, "%d:%d NOT DELETED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 6
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 795
    if-ge p1, v4, :cond_0

    .line 796
    new-instance v0, Lcom/android/email/mail/MessagingException;

    const-string v1, "Invalid message set %d %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 800
    :cond_0
    const-string v0, "UID SEARCH %d:*%s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 830
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 1
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 836
    if-nez p1, :cond_0

    .line 837
    const-string v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 839
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;Lcom/android/email/mail/Folder$MessageRetrievalListener;)[Lcom/android/email/mail/Message;
    .locals 5
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 844
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 845
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Message;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 846
    aget-object v3, p1, v0

    .line 847
    .local v3, uid:Ljava/lang/String;
    new-instance v1, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/email/mail/Folder;)V

    .line 848
    .local v1, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    if-eqz p2, :cond_0

    .line 850
    invoke-interface {p2, v1}, Lcom/android/email/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/email/mail/Message;)V

    .line 845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    .end local v1           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v3           #uid:Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/android/email/mail/Message;->EMPTY_ARRAY:[Lcom/android/email/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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
    .line 612
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
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
    .line 1032
    invoke-static {}, Lcom/android/email/mail/store/ImapStore;->access$000()[Lcom/android/email/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getUnreadMessageCount()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 735
    const/4 v4, 0x0

    .line 736
    .local v4, unreadMessageCount:I
    :try_start_0
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v6, "STATUS \"%s\" (UNSEEN)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 740
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 741
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "STATUS"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 742
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    const-string v6, "UNSEEN"

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 747
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v3           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 748
    .local v1, ioe:Ljava/io/IOException;
    :try_start_1
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v5, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v3       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_1
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 746
    return v4
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v0, :cond_0

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
    .locals 13
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 529
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 530
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v7, p1, :cond_2

    .line 534
    :try_start_1
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "NOOP"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 540
    :try_start_2
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 603
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 538
    .local v2, ioe:Ljava/io/IOException;
    :try_start_3
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v7, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 540
    :try_start_4
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 547
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-enter p0
    :try_end_4
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1

    .line 548
    :try_start_5
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 549
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 560
    :try_start_6
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "SELECT \"%s\""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 567
    .local v6, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    sget-object v7, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;

    .line 569
    const/4 v3, -0x1

    .line 570
    .local v3, messageCount:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 571
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v7, 0x1

    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 572
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-result v3

    goto :goto_2

    .line 540
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #messageCount:I
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catchall_0
    move-exception v7

    :try_start_7
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_7
    .catch Lcom/android/email/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_1

    .line 598
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 599
    .local v0, e:Lcom/android/email/mail/MessagingException;
    iput-boolean v12, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    .line 600
    invoke-virtual {p0, v12}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 601
    throw v0

    .line 544
    .end local v0           #e:Lcom/android/email/mail/MessagingException;
    :cond_2
    const/4 v7, 0x0

    :try_start_8
    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V
    :try_end_8
    .catch Lcom/android/email/mail/MessagingException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 549
    :catchall_1
    move-exception v7

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v7
    :try_end_a
    .catch Lcom/android/email/mail/MessagingException; {:try_start_a .. :try_end_a} :catch_1

    .line 574
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #messageCount:I
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_3
    :try_start_b
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 575
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 576
    .local v5, responseCode:Lcom/android/email/mail/store/imap/ImapString;
    const-string v7, "READ-ONLY"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 577
    sget-object v7, Lcom/android/email/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/email/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    .line 593
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #messageCount:I
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 594
    .restart local v2       #ioe:Ljava/io/IOException;
    :try_start_c
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v7, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 596
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_2
    move-exception v7

    :try_start_d
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_d
    .catch Lcom/android/email/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_1

    .line 578
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #messageCount:I
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v5       #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_4
    :try_start_e
    const-string v7, "READ-WRITE"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 579
    sget-object v7, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/email/mail/Folder$OpenMode;

    goto :goto_2

    .line 581
    .end local v5           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    :cond_5
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 582
    new-instance v7, Lcom/android/email/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open mailbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 587
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_6
    const/4 v7, -0x1

    if-ne v3, v7, :cond_7

    .line 588
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const-string v8, "Did not find message count during select"

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 590
    :cond_7
    iput v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 591
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    .line 596
    :try_start_f
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_f
    .catch Lcom/android/email/mail/MessagingException; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 765
    :try_start_0
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 773
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v7, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 775
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v8, 0x0

    const-string v9, "SEARCH"

    invoke-virtual {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 779
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 780
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    .line 781
    .local v6, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 782
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 767
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v6           #s:Lcom/android/email/mail/store/imap/ImapString;
    .end local v7           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 768
    .local v0, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-object v8, Lcom/android/email/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    .end local v0           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :goto_1
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 786
    return-object v8

    .line 769
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 770
    .local v3, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v8, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 788
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v8

    .line 786
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v7       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    sget-object v8, Lcom/android/email/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setFlags([Lcom/android/email/mail/Message;[Lcom/android/email/mail/Flag;Z)V
    .locals 11
    .parameter "messages"
    .parameter "flags"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1336
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1338
    const-string v0, ""

    .line 1339
    .local v0, allFlags:Ljava/lang/String;
    array-length v6, p2

    if-lez v6, :cond_4

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1341
    .local v3, flagList:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, i:I
    array-length v1, p2

    .local v1, count:I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1342
    aget-object v2, p2, v4

    .line 1343
    .local v2, flag:Lcom/android/email/mail/Flag;
    sget-object v6, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_1

    .line 1344
    const-string v6, " \\SEEN"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1345
    :cond_1
    sget-object v6, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_2

    .line 1346
    const-string v6, " \\DELETED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1347
    :cond_2
    sget-object v6, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    if-ne v2, v6, :cond_0

    .line 1348
    const-string v6, " \\FLAGGED"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1351
    .end local v2           #flag:Lcom/android/email/mail/Flag;
    :cond_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1354
    .end local v1           #count:I
    .end local v3           #flagList:Ljava/lang/StringBuilder;
    .end local v4           #i:I
    :cond_4
    :try_start_0
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v7, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/email/mail/Message;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    if-eqz p3, :cond_5

    const-string v10, "+"

    :goto_2
    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1365
    return-void

    .line 1354
    :cond_5
    :try_start_1
    const-string v10, "-"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1360
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1361
    .local v5, ioe:Ljava/io/IOException;
    :try_start_2
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {p0, v6, v5}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/email/mail/MessagingException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1363
    .end local v5           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v6
.end method
