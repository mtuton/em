.class public Lcom/android/email/mail/store/ImapStore;
.super Lcom/android/email/mail/Store;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/ImapStore$ImapException;,
        Lcom/android/email/mail/store/ImapStore$ImapBodyPart;,
        Lcom/android/email/mail/store/ImapStore$ImapMessage;,
        Lcom/android/email/mail/store/ImapStore$ImapConnection;,
        Lcom/android/email/mail/store/ImapStore$ImapFolder;
    }
.end annotation


# static fields
.field private static final DEBUG_FORCE_SEND_ID:Z

.field private static final PERMANENT_FLAGS:[Lcom/android/email/mail/Flag;

.field private static sImapId:Ljava/lang/String;


# instance fields
.field private mConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/email/mail/store/ImapStore$ImapConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFolderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/store/ImapStore$ImapFolder;",
            ">;"
        }
    .end annotation
.end field

.field private mIdPhrase:Ljava/lang/String;

.field private mLoginPhrase:Ljava/lang/String;

.field private mModifiedUtf7Charset:Ljava/nio/charset/Charset;

.field private mPassword:Ljava/lang/String;

.field private mPathPrefix:Ljava/lang/String;

.field private mRootTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/email/mail/Flag;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/email/mail/Flag;->SEEN:Lcom/android/email/mail/Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/email/mail/Flag;->FLAGGED:Lcom/android/email/mail/Flag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/android/email/mail/Flag;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 142
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 104
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    .line 107
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    .line 121
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    .line 143
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    .line 146
    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v4, uri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, "imap"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    :cond_0
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const-string v8, "Unsupported protocol"

    invoke-direct {v7, v8}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 147
    .end local v2           #scheme:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 148
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Lcom/android/email/mail/MessagingException;

    const-string v8, "Invalid ImapStore URI"

    invoke-direct {v7, v8, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 156
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_1
    const/4 v0, 0x0

    .line 157
    .local v0, connectionSecurity:I
    const/16 v1, 0x8f

    .line 159
    .local v1, defaultPort:I
    const-string v7, "+ssl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 160
    const/4 v0, 0x1

    .line 161
    const/16 v1, 0x3e1

    .line 165
    :cond_2
    :goto_0
    const-string v7, "+trustallcerts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 167
    .local v3, trustCertificates:Z
    new-instance v7, Lcom/android/email/mail/transport/MailTransport;

    const-string v8, "IMAP"

    invoke-direct {v7, v8}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    .line 168
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v4, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    .line 169
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v0, v3}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 171
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, userInfoParts:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 173
    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    .line 174
    array-length v7, v6

    if-le v7, v9, :cond_3

    .line 175
    aget-object v7, v6, v9

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    .line 179
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LOGIN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore;->mPassword:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/email/Utility;->imapQuoted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mLoginPhrase:Ljava/lang/String;

    .line 183
    :cond_3
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4

    .line 184
    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    .line 187
    :cond_4
    new-instance v7, Lcom/beetstra/jutf7/CharsetProvider;

    invoke-direct {v7}, Lcom/beetstra/jutf7/CharsetProvider;-><init>()V

    const-string v8, "X-RFC-3501"

    invoke-virtual {v7, v8}, Lcom/beetstra/jutf7/CharsetProvider;->charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    .line 188
    return-void

    .line 162
    .end local v3           #trustCertificates:Z
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_5
    const-string v7, "+tls"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/store/ImapStore$ImapConnection;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/ImapStore;Lcom/android/email/mail/store/ImapStore$ImapConnection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/email/mail/store/ImapStore;->releaseConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    return-void
.end method

.method static synthetic access$300()[Lcom/android/email/mail/Flag;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/android/email/mail/store/ImapStore;->PERMANENT_FLAGS:[Lcom/android/email/mail/Flag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/mail/store/ImapStore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/mail/store/ImapStore;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mIdPhrase:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/email/mail/store/ImapStore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mLoginPhrase:Ljava/lang/String;

    return-object v0
.end method

.method private decodeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "name"

    .prologue
    .line 485
    const-string v6, "&-"

    const-string v7, " &- "

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, beforeDecodeFolder:Ljava/lang/String;
    :try_start_0
    const-string v6, "US-ASCII"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 488
    .local v3, encoded:[B
    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 491
    .local v2, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 492
    .local v4, folder:Ljava/lang/String;
    const-string v6, " & "

    const-string v7, "&"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 494
    .local v0, afterFolder:Ljava/lang/String;
    return-object v0

    .line 496
    .end local v0           #afterFolder:Ljava/lang/String;
    .end local v2           #cb:Ljava/nio/CharBuffer;
    .end local v3           #encoded:[B
    .end local v4           #folder:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 501
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to decode folder name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private encodeFolderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "name"

    .prologue
    const-string v9, "&"

    const-string v8, " & "

    .line 457
    const-string v7, "&"

    const-string v7, " & "

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, beforeEncodeName:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore;->mModifiedUtf7Charset:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v5}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 460
    .local v4, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    new-array v3, v7, [B

    .line 461
    .local v3, b:[B
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 464
    new-instance v2, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-direct {v2, v3, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 465
    .local v2, afterEncodeName:Ljava/lang/String;
    const-string v7, " &- "

    const-string v8, "&-"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, afterAfterEncodeName:Ljava/lang/String;
    const-string v7, " & "

    const-string v8, "&"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 468
    .local v0, afterAfterAfterEncodeName:Ljava/lang/String;
    return-object v0

    .line 470
    .end local v0           #afterAfterAfterEncodeName:Ljava/lang/String;
    .end local v1           #afterAfterEncodeName:Ljava/lang/String;
    .end local v2           #afterEncodeName:Ljava/lang/String;
    .end local v3           #b:[B
    .end local v4           #bb:Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 475
    .local v6, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unabel to encode folder name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    monitor-enter v3

    .line 424
    :try_start_0
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 426
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 427
    .local v2, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 429
    const-string v4, "ImapStore"

    const-string v5, "Exchange IT Policy has disabled POP/IMAP Email"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v4, Lcom/android/email/mail/MessagingException;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v4

    .line 448
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 434
    :cond_0
    const/4 v0, 0x0

    .line 435
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0       #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    if-eqz v0, :cond_1

    .line 437
    :try_start_2
    const-string v4, "NOOP"

    invoke-virtual {v0, v4}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 444
    :cond_1
    if-nez v0, :cond_2

    .line 445
    :try_start_3
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .end local v0           #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    invoke-direct {v0, p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 447
    .restart local v0       #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :cond_2
    monitor-exit v3

    return-object v0

    .line 440
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 441
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;
    .locals 1
    .parameter "uri"
    .parameter "context"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/android/email/mail/store/ImapStore;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private releaseConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method


# virtual methods
.method public checkSettings()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 404
    :try_start_0
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-direct {v0, p0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;-><init>(Lcom/android/email/mail/store/ImapStore;)V

    .line 405
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->open()V

    .line 406
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 415
    return-void

    .line 408
    .end local v0           #connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 409
    .local v2, ioe:Ljava/io/IOException;
    new-instance v3, Lcom/android/email/mail/MessagingException;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/email/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 411
    .end local v2           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 413
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "connection error [IllegalArgumentException]"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .line 356
    .local v0, folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;-><init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V

    .line 358
    .restart local v0       #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore;->mFolderCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    monitor-exit v1

    .line 361
    return-object v0

    .line 360
    .end local v0           #folder:Lcom/android/email/mail/store/ImapStore$ImapFolder;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getImapId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "context"
    .parameter "userName"
    .parameter "host"
    .parameter "capability"

    .prologue
    .line 227
    const-class v12, Lcom/android/email/mail/store/ImapStore;

    monitor-enter v12

    .line 228
    :try_start_0
    sget-object v4, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 229
    const-string v4, "phone"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    .line 231
    .local v17, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v11

    .line 232
    .local v11, networkOperator:Ljava/lang/String;
    if-nez v11, :cond_0

    const-string v11, ""

    .line 234
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/email/mail/store/ImapStore;->makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    .line 238
    .end local v11           #networkOperator:Ljava/lang/String;
    .end local v17           #tm:Landroid/telephony/TelephonyManager;
    :cond_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    new-instance v15, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/email/mail/store/ImapStore;->sImapId:Ljava/lang/String;

    invoke-direct {v15, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v15, id:Ljava/lang/StringBuilder;
    invoke-static/range {p1 .. p1}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/VendorPolicyLoader;->getImapIdValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 247
    .local v19, vendorId:Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 248
    const/16 v4, 0x20

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 249
    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_2
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/Preferences;->getDeviceUID()Ljava/lang/String;

    move-result-object v12

    .line 256
    .local v12, devUID:Ljava/lang/String;
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v16

    .line 257
    .local v16, messageDigest:Ljava/security/MessageDigest;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 258
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 259
    invoke-virtual/range {v16 .. v16}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v18

    .line 260
    .local v18, uid:[B
    const/4 v4, 0x2

    move-object/from16 v0, v18

    move v1, v4

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v14

    .line 261
    .local v14, hexUid:Ljava/lang/String;
    const-string v4, " \"AGUID\" \""

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const/16 v4, 0x22

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    .end local v12           #devUID:Ljava/lang/String;
    .end local v14           #hexUid:Ljava/lang/String;
    .end local v16           #messageDigest:Ljava/security/MessageDigest;
    .end local v18           #uid:[B
    :goto_0
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 238
    .end local v15           #id:Ljava/lang/StringBuilder;
    .end local v19           #vendorId:Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 264
    .restart local v15       #id:Ljava/lang/StringBuilder;
    .restart local v19       #vendorId:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 265
    .local v13, e:Ljava/security/NoSuchAlgorithmException;
    const-string v4, "Email"

    const-string v5, "couldn\'t obtain SHA-1 hash for device UID"

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPersonalNamespaces()[Lcom/android/email/mail/Folder;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v4

    .line 368
    .local v4, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v7, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Folder;>;"
    const-string v14, "LIST \"\" \"%s*\""

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    const-string v17, ""

    :goto_0
    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 372
    .local v13, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;

    .line 373
    .local v12, response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "LIST"

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 374
    const/4 v10, 0x1

    .line 375
    .local v10, includeFolder:Z
    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/ImapStore;->decodeFolderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, folder:Ljava/lang/String;
    const-string v14, "INBOX"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 379
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;->getList(I)Lcom/android/email/mail/store/ImapResponseParser$ImapList;

    move-result-object v3

    .line 380
    .local v3, attributes:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    const/4 v8, 0x0

    .local v8, i:I
    invoke-virtual {v3}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->size()I

    move-result v5

    .local v5, count:I
    :goto_2
    if-ge v8, v5, :cond_3

    .line 381
    invoke-virtual {v3, v8}, Lcom/android/email/mail/store/ImapResponseParser$ImapList;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, attribute:Ljava/lang/String;
    const-string v14, "\\NoSelect"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 383
    const/4 v10, 0x0

    .line 380
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 369
    .end local v2           #attribute:Ljava/lang/String;
    .end local v3           #attributes:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v5           #count:I
    .end local v6           #folder:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #includeFolder:Z
    .end local v12           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v13           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_0

    .line 386
    .restart local v3       #attributes:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .restart local v5       #count:I
    .restart local v6       #folder:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #includeFolder:Z
    .restart local v12       #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .restart local v13       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_3
    if-eqz v10, :cond_0

    .line 387
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 393
    .end local v3           #attributes:Lcom/android/email/mail/store/ImapResponseParser$ImapList;
    .end local v5           #count:I
    .end local v6           #folder:Ljava/lang/String;
    .end local v7           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Folder;>;"
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #includeFolder:Z
    .end local v12           #response:Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;
    .end local v13           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :catch_0
    move-exception v14

    move-object v11, v14

    .line 394
    .local v11, ioe:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 395
    new-instance v14, Lcom/android/email/mail/MessagingException;

    const-string v15, "Unable to get folder list."

    invoke-direct {v14, v15, v11}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    .end local v11           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/ImapStore;->releaseConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    throw v14

    .line 391
    .restart local v7       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Folder;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v13       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/ImapResponseParser$ImapResponse;>;"
    :cond_4
    :try_start_2
    const-string v14, "INBOX"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    const/4 v14, 0x0

    new-array v14, v14, [Lcom/android/email/mail/Folder;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/email/mail/Folder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 397
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/email/mail/store/ImapStore;->releaseConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 392
    return-object v2
.end method

.method makeCommonImapId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "packageName"
    .parameter "version"
    .parameter "codeName"
    .parameter "model"
    .parameter "id"
    .parameter "vendor"
    .parameter "networkOperator"

    .prologue
    const-string v5, "\""

    const-string v4, ""

    .line 292
    const-string v2, "[^a-zA-Z0-9-_\\+=;:\\.,/ ]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 293
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 295
    invoke-virtual {v0, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 296
    invoke-virtual {v0, p4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 297
    invoke-virtual {v0, p5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 298
    invoke-virtual {v0, p6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 299
    invoke-virtual {v0, p7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 302
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "\"name\" \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 304
    const-string v2, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    const-string v2, " \"os\" \"android\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v2, " \"os-version\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 312
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :goto_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 319
    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    :cond_0
    const-string v2, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 326
    const-string v2, " \"vendor\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v2, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_1
    const-string v2, "REL"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 334
    const-string v2, " \"x-android-device-model\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    const-string v2, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    :cond_2
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 342
    const-string v2, " \"x-android-mobile-net-operator\" \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v1, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    const-string v2, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 315
    :cond_4
    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .locals 0
    .parameter "testTransport"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore;->mRootTransport:Lcom/android/email/mail/Transport;

    .line 198
    return-void
.end method
