.class public Lcom/android/exchange/DeviceInformation;
.super Ljava/lang/Object;
.source "DeviceInformation.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public mFriendlyName:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mModel:Ljava/lang/String;

.field public mNetworkOperator:Ljava/lang/String;

.field public mOs:Ljava/lang/String;

.field public mOsLanguage:Ljava/lang/String;

.field public mOutBoundSms:Z

.field public mPhoneNumber:Ljava/lang/String;

.field public mProtocolVersion:D

.field public mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .parameter "protocolVersion"

    .prologue
    const-string v1, ""

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "DeviceInformation"

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->TAG:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInformation;->mModel:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInformation;->mFriendlyName:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInformation;->mOs:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v1, p0, Lcom/android/exchange/DeviceInformation;->mUserAgent:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/DeviceInformation;->mOutBoundSms:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/DeviceInformation;->mNetworkOperator:Ljava/lang/String;

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/exchange/DeviceInformation;->mProtocolVersion:D

    .line 34
    iput-wide p1, p0, Lcom/android/exchange/DeviceInformation;->mProtocolVersion:D

    .line 35
    return-void
.end method


# virtual methods
.method public buildCommand()Lcom/android/exchange/adapter/Serializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/exchange/DeviceInformation;->buildCommand(Z)Lcom/android/exchange/adapter/Serializer;

    move-result-object v0

    return-object v0
.end method

.method public buildCommand(Z)Lcom/android/exchange/adapter/Serializer;
    .locals 5
    .parameter "isProvision"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-wide v1, p0, Lcom/android/exchange/DeviceInformation;->mProtocolVersion:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 157
    :goto_0
    return-object v1

    .line 123
    :cond_0
    new-instance v0, Lcom/android/exchange/adapter/Serializer;

    invoke-direct {v0}, Lcom/android/exchange/adapter/Serializer;-><init>()V

    .line 126
    .local v0, s:Lcom/android/exchange/adapter/Serializer;
    if-eqz p1, :cond_3

    .line 127
    const/16 v1, 0x385

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 133
    :goto_1
    const/16 v1, 0x496

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x488

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x497

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x498

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x499

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x49a

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mOs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x49b

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x49c

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 142
    iget-wide v1, p0, Lcom/android/exchange/DeviceInformation;->mProtocolVersion:D

    const-wide/high16 v3, 0x402c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 143
    const/16 v1, 0x4a0

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x4a1

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/exchange/DeviceInformation;->mOutBoundSms:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const-string v2, "1"

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x4a2

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mNetworkOperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/exchange/adapter/Serializer;->text(Ljava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 147
    :cond_1
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 151
    if-nez p1, :cond_2

    .line 152
    invoke-virtual {v0}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->done()V

    :cond_2
    move-object v1, v0

    .line 157
    goto/16 :goto_0

    .line 129
    :cond_3
    const/16 v1, 0x485

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_1

    .line 143
    :cond_4
    const-string v2, "0"

    goto :goto_2
.end method

.method public prepareDeviceInformation(Landroid/content/Context;Ljava/lang/String;Lcom/android/email/provider/EmailContent$Account;)Z
    .locals 8
    .parameter "context"
    .parameter "userAgent"
    .parameter "account"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v7, ""

    const-string v5, "Android"

    const-string v4, "DeviceInformation"

    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string v2, "DeviceInformation"

    const-string v2, "context is null"

    invoke-static {v4, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 108
    :goto_0
    return v2

    .line 46
    :cond_0
    if-nez p2, :cond_1

    .line 47
    const-string v2, "DeviceInformation"

    const-string v2, "userAgent is null"

    invoke-static {v4, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string p2, ""

    .line 52
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 53
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_2

    .line 54
    const-string v2, "DeviceInformation"

    const-string v2, "tm is null"

    invoke-static {v4, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 55
    goto :goto_0

    .line 58
    :cond_2
    iput-object p2, p0, Lcom/android/exchange/DeviceInformation;->mUserAgent:Ljava/lang/String;

    .line 61
    :try_start_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_1
    iput-object v2, p0, Lcom/android/exchange/DeviceInformation;->mModel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    .line 70
    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 71
    const-string v2, ""

    iput-object v7, p0, Lcom/android/exchange/DeviceInformation;->mId:Ljava/lang/String;

    .line 75
    :cond_3
    :try_start_1
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    :goto_2
    iput-object v2, p0, Lcom/android/exchange/DeviceInformation;->mFriendlyName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    const-string v2, "Android"

    iput-object v5, p0, Lcom/android/exchange/DeviceInformation;->mOs:Ljava/lang/String;

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 87
    const-string v2, "English"

    iput-object v2, p0, Lcom/android/exchange/DeviceInformation;->mOsLanguage:Ljava/lang/String;

    .line 89
    :cond_4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    .line 90
    iget-object v2, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 91
    const-string v2, "DeviceInformation"

    const-string v2, "mPhoneNumber is null"

    invoke-static {v4, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v2, ""

    iput-object v7, p0, Lcom/android/exchange/DeviceInformation;->mPhoneNumber:Ljava/lang/String;

    .line 97
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/DeviceInformation;->mNetworkOperator:Ljava/lang/String;

    .line 99
    if-eqz p3, :cond_9

    .line 100
    iget v2, p3, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_8

    move v2, v6

    :goto_3
    iput-boolean v2, p0, Lcom/android/exchange/DeviceInformation;->mOutBoundSms:Z

    .line 106
    :goto_4
    const/4 v1, 0x0

    move v2, v6

    .line 108
    goto :goto_0

    .line 61
    :cond_6
    :try_start_2
    const-string v2, "Android"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v5

    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 64
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceInformation"

    const-string v2, "Accessing Build.Model caused Exception"

    invoke-static {v4, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 66
    goto/16 :goto_0

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_3
    const-string v2, "Android"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v5

    goto :goto_2

    .line 77
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 78
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "DeviceInformation"

    const-string v2, "Accessing Build.Product caused Exception"

    invoke-static {v4, v2}, Lcom/android/exchange/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 80
    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    move v2, v3

    .line 100
    goto :goto_3

    .line 102
    :cond_9
    iput-boolean v3, p0, Lcom/android/exchange/DeviceInformation;->mOutBoundSms:Z

    goto :goto_4
.end method
