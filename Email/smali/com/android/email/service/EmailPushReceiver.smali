.class public Lcom/android/email/service/EmailPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailPushReceiver.java"


# static fields
.field public static final EMAIL_PUSH_RECEIVER_WBXML_HEADER_LENGTH:I = 0x7

.field public static final EMAIL_PUSH_RECEIVER_WBXML_SUFFIX_COM:Ljava/lang/String; = ".com"

.field public static final EMAIL_PUSH_RECEIVER_WBXML_SUFFIX_EDU:Ljava/lang/String; = ".edu"

.field public static final EMAIL_PUSH_RECEIVER_WBXML_SUFFIX_NET:Ljava/lang/String; = ".net"

.field public static final EMAIL_PUSH_RECEIVER_WBXML_SUFFIX_ORG:Ljava/lang/String; = ".org"

.field public static final EMAIL_PUSH_RECEIVER_WBXML_TOKEN_COM:I = 0x85

.field public static final EMAIL_PUSH_RECEIVER_WBXML_TOKEN_EDU:I = 0x86

.field public static final EMAIL_PUSH_RECEIVER_WBXML_TOKEN_NET:I = 0x87

.field public static final EMAIL_PUSH_RECEIVER_WBXML_TOKEN_ORG:I = 0x88

.field private static final LOG_TAG:Ljava/lang/String; = "EmailPushReceiver"


# instance fields
.field WAP_Push_Wbxml_header:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/email/service/EmailPushReceiver;->WAP_Push_Wbxml_header:[I

    return-void

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 57
    .local v1, extras:Landroid/os/Bundle;
    const-string v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 58
    .local v2, userdata:[B
    const-string v3, "applicationId"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 60
    .local v0, applicationId:I
    const-string v3, "EmailPushReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: user data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, v2}, Lcom/android/email/service/EmailPushReceiver;->searchAccountAndUpdate(Landroid/content/Context;[B)V

    .line 64
    .end local v0           #applicationId:I
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #userdata:[B
    :cond_0
    return-void
.end method

.method public searchAccountAndUpdate(Landroid/content/Context;[B)V
    .locals 8
    .parameter "context"
    .parameter "userdata"

    .prologue
    const-string v7, "EmailPushReceiver"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v1, email:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x7

    if-ge v2, v5, :cond_1

    .line 74
    aget-byte v5, p2, v2

    iget-object v6, p0, Lcom/android/email/service/EmailPushReceiver;->WAP_Push_Wbxml_header:[I

    aget v6, v6, v2

    int-to-byte v6, v6

    if-eq v5, v6, :cond_0

    .line 75
    const-string v5, "EmailPushReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user data header is wrong : user data is"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "at i "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_1
    return-void

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const/4 v2, 0x7

    :goto_2
    array-length v5, p2

    if-ge v2, v5, :cond_2

    .line 82
    aget-byte v5, p2, v2

    if-nez v5, :cond_3

    .line 90
    :cond_2
    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v3, v5, 0xff

    .line 92
    .local v3, token:I
    packed-switch v3, :pswitch_data_0

    .line 107
    :goto_3
    const-string v5, "EmailPushReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchAccountAndUpdate: email address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 111
    .local v0, acc:Lcom/android/email/provider/EmailContent$Account;
    if-nez v0, :cond_4

    .line 112
    const-string v5, "EmailPushReceiver"

    const-string v5, "searchAccountAndUpdate: account is null"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v0           #acc:Lcom/android/email/provider/EmailContent$Account;
    .end local v3           #token:I
    :cond_3
    aget-byte v5, p2, v2

    int-to-char v4, v5

    .line 87
    .local v4, v:C
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 94
    .end local v4           #v:C
    .restart local v3       #token:I
    :pswitch_0
    const-string v5, ".com"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 97
    :pswitch_1
    const-string v5, ".edu"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 100
    :pswitch_2
    const-string v5, ".net"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 103
    :pswitch_3
    const-string v5, ".org"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 116
    .restart local v0       #acc:Lcom/android/email/provider/EmailContent$Account;
    :cond_4
    iget-wide v5, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    invoke-static {p1, v5, v6}, Lcom/android/email/service/MailService;->actionSyncOneAccount(Landroid/content/Context;J)V

    goto :goto_1

    .line 92
    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
