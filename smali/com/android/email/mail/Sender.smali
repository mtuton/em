.class public abstract Lcom/android/email/mail/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/mail/Sender$LimitViolationException;
    }
.end annotation


# static fields
.field protected static final SOCKET_CONNECT_TIMEOUT:I = 0x2710

.field private static mSenders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/mail/Sender;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/mail/Sender;->mSenders:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    return-void
.end method

.method private static findSender(Landroid/content/Context;ILjava/lang/String;)Lcom/android/email/mail/Sender;
    .locals 7
    .parameter "context"
    .parameter "resourceId"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, sender:Lcom/android/email/mail/Sender;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 77
    .local v3, xml:Landroid/content/res/XmlResourceParser;
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, xmlEventType:I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 78
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const-string v5, "sender"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    const/4 v5, 0x0

    const-string v6, "scheme"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, scheme:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    const/4 v5, 0x0

    const-string v6, "class"

    invoke-interface {v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, className:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/android/email/mail/Sender;->instantiateSender(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/mail/Sender;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 91
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #scheme:Ljava/lang/String;
    .end local v3           #xml:Landroid/content/res/XmlResourceParser;
    .end local v4           #xmlEventType:I
    :catch_0
    move-exception v5

    .line 94
    :cond_1
    :goto_1
    return-object v2

    .line 89
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method private static findSenderEx(Landroid/content/Context;ILjava/lang/String;)Lcom/android/email/mail/Sender;
    .locals 3
    .parameter "context"
    .parameter "resourceId"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, sender:Lcom/android/email/mail/Sender;
    const/4 v0, 0x0

    .line 101
    .local v0, className:Ljava/lang/String;
    const-string v2, "smtp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const-string v0, "com.android.email.mail.transport.SmtpSender"

    .line 106
    :cond_0
    :goto_0
    invoke-static {p0, v0, p2}, Lcom/android/email/mail/Sender;->instantiateSender(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v1

    .line 107
    return-object v1

    .line 103
    :cond_1
    const-string v2, "eas"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    const-string v0, "com.android.email.mail.transport.ExchangeSender"

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;
    .locals 5
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 112
    const-class v1, Lcom/android/email/mail/Sender;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/email/mail/Sender;->mSenders:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/mail/Sender;

    .line 113
    .local v0, sender:Lcom/android/email/mail/Sender;
    if-nez v0, :cond_1

    .line 115
    const v2, 0x7f050009

    invoke-static {p0, v2, p1}, Lcom/android/email/mail/Sender;->findSenderEx(Landroid/content/Context;ILjava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    const v2, 0x7f050008

    invoke-static {p0, v2, p1}, Lcom/android/email/mail/Sender;->findSenderEx(Landroid/content/Context;ILjava/lang/String;)Lcom/android/email/mail/Sender;

    move-result-object v0

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    .line 121
    sget-object v2, Lcom/android/email/mail/Sender;->mSenders:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    if-nez v0, :cond_2

    .line 126
    new-instance v2, Lcom/android/email/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate an applicable Transport for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .end local v0           #sender:Lcom/android/email/mail/Sender;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 129
    .restart local v0       #sender:Lcom/android/email/mail/Sender;
    :cond_2
    monitor-exit v1

    return-object v0
.end method

.method private static instantiateSender(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/email/mail/Sender;
    .locals 11
    .parameter "context"
    .parameter "className"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 47
    const/4 v3, 0x0

    .line 49
    .local v3, o:Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "newInstance"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 53
    .local v2, m:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 60
    instance-of v4, v3, Lcom/android/email/mail/Sender;

    if-nez v4, :cond_0

    .line 61
    new-instance v4, Lcom/android/email/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " create incompatible object"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 55
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "Email"

    const-string v5, "exception %s invoking %s.newInstance.(Context, String) method for %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    aput-object p2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v4, Lcom/android/email/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can not instantiate Sender object for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #m:Ljava/lang/reflect/Method;
    :cond_0
    check-cast v3, Lcom/android/email/mail/Sender;

    .end local v3           #o:Ljava/lang/Object;
    return-object v3
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;
    .locals 3
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/android/email/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sender.newInstance: Unknown scheme in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public checkSenderLimitation(J)V
    .locals 0
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/Sender$LimitViolationException;
        }
    .end annotation

    .prologue
    .line 154
    return-void
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const-class v0, Lcom/android/email/activity/setup/AccountSetupOutgoing;

    return-object v0
.end method

.method public abstract open()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract sendMessage(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation
.end method

.method public validateSenderLimit(J)Ljava/lang/String;
    .locals 1
    .parameter "messageId"

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method
