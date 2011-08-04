.class public Lcom/android/email/activity/setup/AccountSettingsUtils;
.super Ljava/lang/Object;
.source "AccountSettingsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method public static commitSettings(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;)V
    .locals 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->isSaved()Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {p1, p0}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 98
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 55
    .local v0, cv:Landroid/content/ContentValues;
    iget-byte v3, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailSize:B

    shl-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    iget-boolean v4, p1, Lcom/android/email/provider/EmailContent$Account;->mIsDefault:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    int-to-byte v4, v4

    or-int/2addr v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 56
    .local v1, defaultSize:I
    const-string v3, "isDefault"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 62
    const-string v3, "displayName"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "senderName"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSenderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "signature"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "syncInterval"

    iget v4, p1, Lcom/android/email/provider/EmailContent$Account;->mSyncInterval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string v3, "ringtoneUri"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "flags"

    iget v4, p1, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v3, "syncLookback"

    iget v4, p1, Lcom/android/email/provider/EmailContent$Account;->mSyncLookback:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSyncScheduleData()Lcom/android/exchange/SyncScheduleData;

    move-result-object v2

    .line 71
    .local v2, syncData:Lcom/android/exchange/SyncScheduleData;
    const-string v3, "peakDays"

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getPeakDay()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v3, "peakStartMinute"

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getStartMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v3, "peakEndMinute"

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getEndMinute()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v3, "peakSchedule"

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getPeakSchedule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    const-string v3, "offPeakSchedule"

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getOffPeakSchedule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v3, "roamingSchedule"

    invoke-virtual {v2}, Lcom/android/exchange/SyncScheduleData;->getRoamingSchedule()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v3, "calendarSyncLookback"

    iget v4, p1, Lcom/android/email/provider/EmailContent$Account;->mCalendarSyncLookback:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v3, "conversationMode"

    iget v4, p1, Lcom/android/email/provider/EmailContent$Account;->mConversationMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v3, "smimeOwnCertificateAlias"

    iget-object v4, p1, Lcom/android/email/provider/EmailContent$Account;->mSmimeOwnCertificateAlias:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "smimeOptionsFlags"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSmimeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    const-string v3, "smimeSignAlgorithm"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSmimeSignAlgorithm()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 91
    const-string v3, "smimeEncryptionAlgorithm"

    invoke-virtual {p1}, Lcom/android/email/provider/EmailContent$Account;->getSmimeEncryptionAlgorithm()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v3, "textPreview"

    iget v4, p1, Lcom/android/email/provider/EmailContent$Account;->mTextPreviewSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    invoke-virtual {p1, p0, v0}, Lcom/android/email/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_0

    .line 55
    .end local v1           #defaultSize:I
    .end local v2           #syncData:Lcom/android/exchange/SyncScheduleData;
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 2
    .parameter "context"
    .parameter "domain"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/email/VendorPolicyLoader;->findProviderForDomain(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 113
    .local v0, p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    if-nez v0, :cond_0

    .line 114
    const v1, 0x7f050006

    invoke-static {p0, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 116
    :cond_0
    if-nez v0, :cond_1

    .line 117
    const v1, 0x7f050005

    invoke-static {p0, p1, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v0

    .line 119
    :cond_1
    return-object v0
.end method

.method private static findProviderForDomain(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .locals 7
    .parameter "context"
    .parameter "domain"
    .parameter "resourceId"

    .prologue
    const/4 v6, 0x2

    const-string v4, "username"

    const-string v4, "uri"

    const-string v4, "provider"

    const-string v4, "domain"

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 133
    .local v2, xml:Landroid/content/res/XmlResourceParser;
    const/4 v1, 0x0

    .line 134
    .local v1, provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .local v3, xmlEventType:I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 135
    if-ne v3, v6, :cond_2

    const-string v4, "provider"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "domain"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;-><init>()V

    .line 139
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    const-string v4, "id"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->id:Ljava/lang/String;

    .line 140
    const-string v4, "label"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->label:Ljava/lang/String;

    .line 141
    const-string v4, "domain"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->domain:Ljava/lang/String;

    .line 142
    const-string v4, "note"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    .end local v1           #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .end local v2           #xml:Landroid/content/res/XmlResourceParser;
    .end local v3           #xmlEventType:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Email"

    const-string v5, "Error while trying to load provider settings."

    invoke-static {v4, v5, v0}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 144
    .restart local v1       #provider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local v2       #xml:Landroid/content/res/XmlResourceParser;
    .restart local v3       #xmlEventType:I
    :cond_2
    if-ne v3, v6, :cond_3

    :try_start_1
    const-string v4, "incoming"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    .line 147
    new-instance v4, Ljava/net/URI;

    const-string v5, "uri"

    invoke-static {p0, v2, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/net/URI;

    .line 148
    const-string v4, "username"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_3
    if-ne v3, v6, :cond_4

    const-string v4, "outgoing"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 153
    new-instance v4, Ljava/net/URI;

    const-string v5, "uri"

    invoke-static {p0, v2, v5}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/net/URI;

    .line 154
    const-string v4, "username"

    invoke-static {p0, v2, v4}, Lcom/android/email/activity/setup/AccountSettingsUtils;->getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    goto/16 :goto_0

    .line 156
    :cond_4
    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const-string v4, "provider"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move-object v4, v1

    .line 159
    goto :goto_1
.end method

.method private static getXmlAttribute(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "xml"
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 178
    const/4 v1, 0x0

    invoke-interface {p1, v2, p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 179
    .local v0, resId:I
    if-nez v0, :cond_0

    .line 180
    invoke-interface {p1, v2, p2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
