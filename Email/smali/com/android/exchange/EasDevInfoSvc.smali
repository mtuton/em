.class public Lcom/android/exchange/EasDevInfoSvc;
.super Lcom/android/exchange/EasSyncService;
.source "EasDevInfoSvc.java"


# instance fields
.field private mEnableOutboundSMS:I

.field private mFriendlyName:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mMobileOperator:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mOS:Ljava/lang/String;

.field private mOSLanguage:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mTeleohonyManager:Landroid/telephony/TelephonyManager;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 2
    .parameter "_context"
    .parameter "_acc"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V

    .line 67
    iget-object v0, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-object v0, v0, Lcom/android/email/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    .line 70
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    .line 72
    return-void
.end method

.method private collectDeviceInformation()V
    .locals 5

    .prologue
    const-string v4, "EasDevInfoSvc"

    .line 83
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mModel:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mImei:Ljava/lang/String;

    .line 85
    const-string v0, "iPhone"

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mFriendlyName:Ljava/lang/String;

    .line 86
    const-string v0, "iOS"

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mOS:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mOSLanguage:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mPhoneNumber:Ljava/lang/String;

    .line 89
    const-string v0, "EasDevInfoSvc"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasDevInfoSvc;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mImei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasDevInfoSvc;->mImei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mFriendlyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasDevInfoSvc;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasDevInfoSvc;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mOSLanguage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasDevInfoSvc;->mOSLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x402c

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 94
    const-string v0, "Apple-iPhone3C1/807.4"

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mUserAgent:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mEnableOutboundSMS:I

    .line 96
    iget-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mTeleohonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/EasDevInfoSvc;->mMobileOperator:Ljava/lang/String;

    .line 97
    const-string v0, "EasDevInfoSvc"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMobileOperator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exchange/EasDevInfoSvc;->mMobileOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    return-void
.end method

.method private deviceInfoCb(JII)V
    .locals 1
    .parameter "accId"
    .parameter "status"
    .parameter "progress"

    .prologue
    .line 76
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->callback()Lcom/android/email/service/IEmailServiceCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/email/service/IEmailServiceCallback;->setDeviceInfoStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setDeviceInformation()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/email/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x64

    .line 104
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10, v12}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    .line 106
    const/4 v4, 0x0

    .line 107
    .local v4, result:I
    new-instance v5, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v5}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 109
    .local v5, s:Lcom/android/exchange/adapter/Serializer;
    invoke-direct {p0}, Lcom/android/exchange/EasDevInfoSvc;->collectDeviceInformation()V

    .line 111
    const/16 v8, 0x485

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x496

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    const/16 v9, 0x488

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 114
    const/16 v8, 0x497

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 115
    const/16 v8, 0x498

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mImei:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 116
    const/16 v8, 0x499

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 117
    const/16 v8, 0x49a

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mOS:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 118
    const/16 v8, 0x49b

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mOSLanguage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 119
    const/16 v8, 0x49c

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 121
    iget-object v8, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersion:Ljava/lang/String;

    const-string v9, "14.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 122
    const/16 v8, 0x4a0

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 123
    const/16 v8, 0x4a1

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/exchange/EasDevInfoSvc;->mEnableOutboundSMS:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 124
    const/16 v8, 0x4a2

    invoke-virtual {v5, v8}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/exchange/EasDevInfoSvc;->mMobileOperator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 127
    :cond_0
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->done()V

    .line 130
    const-string v8, "Settings"

    new-instance v9, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const/16 v10, 0x4e20

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/exchange/EasDevInfoSvc;->sendHttpClientPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;I)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 133
    .local v3, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 134
    .local v7, status:I
    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    .line 136
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 138
    .local v0, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v2, v8

    .line 140
    .local v2, len:I
    if-eqz v2, :cond_3

    .line 141
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 143
    .local v1, in:Ljava/io/InputStream;
    new-instance v6, Lcom/android/exchange/adapter/OoOCommandParser;

    new-instance v8, Lcom/android/exchange/adapter/SettingsCommandAdapter;

    iget-object v9, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    invoke-direct {v8, v9, p0}, Lcom/android/exchange/adapter/SettingsCommandAdapter;-><init>(Lcom/android/email/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    invoke-direct {v6, v1, v8}, Lcom/android/exchange/adapter/OoOCommandParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 145
    .local v6, sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    invoke-virtual {v6}, Lcom/android/exchange/adapter/OoOCommandParser;->parse()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 147
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v12, v11}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    .line 174
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #len:I
    .end local v6           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :goto_0
    return v4

    .line 152
    .restart local v0       #entity:Lorg/apache/http/HttpEntity;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #len:I
    .restart local v6       #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasDevInfoSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 153
    const/16 v4, 0x17

    .line 157
    :goto_1
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v11}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    goto :goto_0

    .line 155
    :cond_2
    const/4 v4, -0x7

    goto :goto_1

    .line 161
    .end local v1           #in:Ljava/io/InputStream;
    .end local v6           #sParser:Lcom/android/exchange/adapter/OoOCommandParser;
    :cond_3
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v12, v11}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    goto :goto_0

    .line 164
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #len:I
    :cond_4
    const/16 v4, 0x15

    .line 165
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasDevInfoSvc;->isProvisionError(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 166
    const/16 v4, 0x17

    .line 170
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v8, v8, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-direct {p0, v8, v9, v4, v11}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    goto :goto_0

    .line 167
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/exchange/EasDevInfoSvc;->isAuthError(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 168
    const/16 v4, 0x16

    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    const-string v10, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    const-string v9, "DevInfo finished"

    .line 179
    invoke-virtual {p0}, Lcom/android/exchange/EasDevInfoSvc;->setupService()Z

    .line 181
    :try_start_0
    invoke-static {}, Lcom/android/exchange/SyncManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/EasSyncService;->mDeviceId:Ljava/lang/String;

    .line 183
    const/4 v1, 0x0

    .line 187
    .local v1, result:I
    iget-object v3, p0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 189
    const/4 v1, -0x2

    .line 190
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/email/provider/EmailContent;->mId:J

    const/16 v5, 0x64

    invoke-direct {p0, v3, v4, v1, v5}, Lcom/android/exchange/EasDevInfoSvc;->deviceInfoCb(JII)V

    .line 194
    :goto_0
    const/16 v3, 0x17

    if-ne v1, v3, :cond_1

    .line 195
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :goto_1
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DevInfo finished"

    aput-object v9, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 215
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 216
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_0

    .line 252
    .end local v1           #result:I
    :goto_2
    return-void

    .line 192
    .restart local v1       #result:I
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/exchange/EasDevInfoSvc;->setDeviceInformation()I

    move-result v1

    goto :goto_0

    .line 196
    :cond_1
    const/16 v3, 0x16

    if-ne v1, v3, :cond_2

    .line 197
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 206
    .end local v1           #result:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 207
    .local v0, e:Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_2
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DevInfo finished"

    aput-object v9, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 215
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 216
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 218
    :pswitch_0
    const/16 v2, 0x17

    .line 224
    .local v2, status:I
    sget-boolean v3, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_5

    .line 225
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v11, v3, v8

    .end local v0           #e:Ljava/io/IOException;
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    goto :goto_2

    .line 199
    .end local v2           #status:I
    .restart local v1       #result:I
    :cond_2
    const/16 v3, 0x15

    if-ne v1, v3, :cond_3

    .line 200
    const/4 v3, 0x3

    :try_start_3
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 208
    .end local v1           #result:I
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 209
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "Exception caught in EasOOFSvc"

    invoke-virtual {p0, v3, v0}, Lcom/android/exchange/EasDevInfoSvc;->userLog(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 210
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "DevInfo finished"

    aput-object v9, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 215
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 216
    iget v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v3, :pswitch_data_2

    goto :goto_2

    .line 218
    :pswitch_1
    const/16 v2, 0x17

    .line 224
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_6

    .line 225
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v11, v3, v8

    goto :goto_3

    .line 203
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    .restart local v1       #result:I
    :cond_3
    const/4 v3, 0x0

    :try_start_5
    iput v3, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 213
    .end local v1           #result:I
    :catchall_0
    move-exception v3

    .line 214
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "DevInfo finished"

    aput-object v9, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 215
    invoke-static {p0}, Lcom/android/exchange/SyncManager;->done(Lcom/android/exchange/AbstractSyncService;)V

    .line 216
    iget v4, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    packed-switch v4, :pswitch_data_3

    .line 213
    :goto_4
    throw v3

    .line 218
    :pswitch_2
    const/16 v2, 0x17

    .line 224
    .restart local v2       #status:I
    sget-boolean v4, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v4, :cond_4

    .line 225
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v11, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    goto :goto_4

    .line 227
    :cond_4
    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v10, v4, v8

    invoke-virtual {p0, v4}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 228
    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 229
    sput-boolean v7, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto :goto_4

    .line 227
    .local v0, e:Ljava/io/IOException;
    :cond_5
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v10, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    .line 229
    .end local v0           #e:Ljava/io/IOException;
    :goto_5
    sput-boolean v7, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    goto/16 :goto_2

    .line 227
    .local v0, e:Ljava/lang/Exception;
    :cond_6
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v10, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_5

    .line 218
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #status:I
    .restart local v1       #result:I
    :pswitch_3
    const/16 v2, 0x17

    .line 224
    .restart local v2       #status:I
    sget-boolean v3, Lcom/android/exchange/EasDevInfoSvc;->CHECK_PROVISIONING_IN_PROGRESS:Z

    if-eqz v3, :cond_7

    .line 225
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS true case!!!"

    aput-object v11, v3, v8

    goto/16 :goto_3

    .line 227
    :cond_7
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "Sync ended due to CHECK_PROVISIONING_IN_PROGRESS false case!!!"

    aput-object v10, v3, v8

    invoke-virtual {p0, v3}, Lcom/android/exchange/EasDevInfoSvc;->userLog([Ljava/lang/String;)V

    .line 228
    iget-object v3, p0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/email/provider/EmailContent;->mId:J

    invoke-static {v3, v4, v5, v7}, Lcom/android/exchange/SyncManager;->reloadFolderList(Landroid/content/Context;JZ)V

    goto :goto_5

    .line 216
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch
.end method
