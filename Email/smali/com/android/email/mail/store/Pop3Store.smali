.class public Lcom/android/email/mail/store/Pop3Store;
.super Lcom/android/email/mail/Store;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/store/Pop3Store$Pop3ResponseInputStream;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Capabilities;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Message;,
        Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
    }
.end annotation


# static fields
.field private static DEBUG_FORCE_SINGLE_LINE_UIDL:Z

.field private static DEBUG_LOG_RAW_STREAM:Z

.field private static final PERMANENT_FLAGS:[Lcom/android/email/mail/Flag;


# instance fields
.field private mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mPassword:Ljava/lang/String;

.field private mTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    sput-boolean v2, Lcom/android/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z

    .line 53
    sput-boolean v2, Lcom/android/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/email/mail/Flag;

    sget-object v1, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/android/email/mail/Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 11
    .parameter "_uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 105
    invoke-direct {p0}, Lcom/android/email/mail/Store;-><init>()V

    .line 60
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    .line 108
    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .local v5, uri:Ljava/net/URI;
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 116
    invoke-static {}, Lcom/android/email/SecurityPolicy;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 117
    .local v2, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 119
    const-string v8, "Pop3Store"

    const-string v9, "Exchange IT Policy has disabled POP/IMAP Email"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v8, Lcom/android/email/mail/MessagingException;

    const/16 v9, 0x8

    invoke-direct {v8, v9}, Lcom/android/email/mail/MessagingException;-><init>(I)V

    throw v8

    .line 109
    .end local v2           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #uri:Ljava/net/URI;
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 110
    .local v6, use:Ljava/net/URISyntaxException;
    new-instance v8, Lcom/android/email/mail/MessagingException;

    const-string v9, "Invalid Pop3Store URI"

    invoke-direct {v8, v9, v6}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 125
    .end local v6           #use:Ljava/net/URISyntaxException;
    .restart local v5       #uri:Ljava/net/URI;
    :cond_0
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v8, "pop3"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 127
    :cond_1
    new-instance v8, Lcom/android/email/mail/MessagingException;

    const-string v9, "Unsupported protocol"

    invoke-direct {v8, v9}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 130
    :cond_2
    const/4 v0, 0x0

    .line 131
    .local v0, connectionSecurity:I
    const/16 v1, 0x6e

    .line 133
    .local v1, defaultPort:I
    const-string v8, "+ssl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 134
    const/4 v0, 0x1

    .line 135
    const/16 v1, 0x3e3

    .line 139
    :cond_3
    :goto_0
    const-string v8, "+trustallcerts"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 141
    .local v4, trustCertificates:Z
    new-instance v8, Lcom/android/email/mail/transport/MailTransport;

    const-string v9, "POP3"

    invoke-direct {v8, v9}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    .line 142
    iget-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v5, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    .line 143
    iget-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v0, v4}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 145
    iget-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, userInfoParts:[Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 147
    const/4 v8, 0x0

    aget-object v8, v7, v8

    iput-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;

    .line 148
    array-length v8, v7

    if-le v8, v10, :cond_4

    .line 149
    aget-object v8, v7, v10

    iput-object v8, p0, Lcom/android/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;

    .line 152
    :cond_4
    return-void

    .line 136
    .end local v4           #trustCertificates:Z
    .end local v7           #userInfoParts:[Ljava/lang/String;
    :cond_5
    const-string v8, "+tls"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 137
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/Transport;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/mail/store/Pop3Store;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/email/mail/store/Pop3Store;->DEBUG_FORCE_SINGLE_LINE_UIDL:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/email/mail/store/Pop3Store;->DEBUG_LOG_RAW_STREAM:Z

    return v0
.end method

.method static synthetic access$500()[Lcom/android/email/mail/Flag;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/email/mail/store/Pop3Store;->PERMANENT_FLAGS:[Lcom/android/email/mail/Flag;

    return-object v0
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
    .line 92
    new-instance v0, Lcom/android/email/mail/store/Pop3Store;

    invoke-direct {v0, p0}, Lcom/android/email/mail/store/Pop3Store;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public checkSettings()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 193
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    const-string v1, "INBOX"

    invoke-direct {v0, p0, v1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 195
    .local v0, folder:Lcom/android/email/mail/store/Pop3Store$Pop3Folder;
    :try_start_0
    sget-object v1, Lcom/android/email/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 196
    invoke-virtual {v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->checkSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    .line 200
    return-void

    .line 198
    :catchall_0
    move-exception v1

    invoke-virtual {v0, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->close(Z)V

    throw v1
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
    .line 165
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Folder;

    .line 166
    .local v0, folder:Lcom/android/email/mail/Folder;
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    .end local v0           #folder:Lcom/android/email/mail/Folder;
    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;-><init>(Lcom/android/email/mail/store/Pop3Store;Ljava/lang/String;)V

    .line 168
    .restart local v0       #folder:Lcom/android/email/mail/Folder;
    iget-object v1, p0, Lcom/android/email/mail/store/Pop3Store;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_0
    return-object v0
.end method

.method public getPersonalNamespaces()[Lcom/android/email/mail/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/email/mail/Folder;

    const/4 v1, 0x0

    const-string v2, "INBOX"

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Drafts"

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Sent"

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/android/email/mail/Folder;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .locals 0
    .parameter "testTransport"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/email/mail/store/Pop3Store;->mTransport:Lcom/android/email/mail/Transport;

    .line 161
    return-void
.end method
