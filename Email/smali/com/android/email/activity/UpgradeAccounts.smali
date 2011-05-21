.class public Lcom/android/email/activity/UpgradeAccounts;
.super Landroid/app/ListActivity;
.source "UpgradeAccounts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UpgradeAccounts$1;,
        Lcom/android/email/activity/UpgradeAccounts$FolderConversion;,
        Lcom/android/email/activity/UpgradeAccounts$ConversionTask;,
        Lcom/android/email/activity/UpgradeAccounts$UIHandler;,
        Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;,
        Lcom/android/email/activity/UpgradeAccounts$ViewHolder;,
        Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    }
.end annotation


# static fields
.field private static final DEBUG_FORCE_UPGRADES:Z = false

.field private static final WHERE_ACCOUNT_UUID_IS:Ljava/lang/String; = "compatibilityUuid=?"

.field private static sConversionHasRun:Z

.field private static final sConversionInProgress:Ljava/lang/Object;


# instance fields
.field private mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

.field private mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

.field private mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

.field private mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

.field private mListView:Landroid/widget/ListView;

.field private mProceedButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionInProgress:Ljava/lang/Object;

    .line 97
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    .line 540
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/UpgradeAccounts;)[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/UpgradeAccounts;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionInProgress:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-boolean p0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/email/activity/UpgradeAccounts;)Lcom/android/email/activity/UpgradeAccounts$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mHandler:Lcom/android/email/activity/UpgradeAccounts$UIHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/UpgradeAccounts;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->onClickOk()V

    return-void
.end method

.method public static actionStart(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/UpgradeAccounts;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method

.method private static bulkUpgradesRequired(Landroid/content/Context;Lcom/android/email/Preferences;)Z
    .locals 3
    .parameter "context"
    .parameter "preferences"

    .prologue
    const/4 v2, 0x0

    .line 865
    invoke-virtual {p1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v0

    .line 866
    .local v0, legacyAccounts:[Lcom/android/email/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    move v1, v2

    .line 878
    :goto_0
    return v1

    .line 875
    :cond_0
    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/android/email/Account;->getBackupFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    .line 876
    goto :goto_0

    .line 878
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static cleanupConnections(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/Account;)V
    .locals 9
    .parameter "context"
    .parameter "newAccount"
    .parameter "account"

    .prologue
    .line 768
    iget-object v1, p1, Lcom/android/email/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    .line 769
    .local v1, email:Ljava/lang/String;
    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 770
    .local v0, atSignPos:I
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local v0           #atSignPos:I
    move-result-object v0

    .line 771
    .local v0, domain:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v8

    .line 776
    .local v8, p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    if-eqz v8, :cond_1

    .line 779
    :try_start_0
    iget-object v5, v8, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/net/URI;

    .line 780
    .local v5, incomingUriTemplate:Ljava/net/URI;
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .end local p0
    iget-object v2, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 781
    .local v2, incomingUsername:Ljava/lang/String;
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object p0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 782
    .local p0, incomingPassword:Ljava/lang/String;
    new-instance v0, Ljava/net/URI;

    .end local v0           #domain:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .end local v1           #email:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #incomingUsername:Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #incomingPassword:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    .end local v5           #incomingUriTemplate:Ljava/net/URI;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .local v0, incomingUri:Ljava/net/URI;
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0           #incomingUri:Ljava/net/URI;
    invoke-virtual {p0, v0}, Lcom/android/email/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 791
    :goto_0
    :try_start_1
    iget-object v0, v8, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/net/URI;

    .line 792
    .local v0, outgoingUriTemplate:Ljava/net/URI;
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object v3, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 793
    .local v3, outgoingUsername:Ljava/lang/String;
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    iget-object p0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 794
    .local p0, outgoingPassword:Ljava/lang/String;
    new-instance v1, Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #outgoingUsername:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #outgoingPassword:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .end local v8           #p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local v1, outgoingUri:Ljava/net/URI;
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/provider/EmailContent$HostAuth;->setStoreUri(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 801
    .end local v0           #outgoingUriTemplate:Ljava/net/URI;
    .end local v1           #outgoingUri:Ljava/net/URI;
    :goto_1
    const-string p0, "Email"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rewriting connection details for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    :cond_0
    :goto_2
    return-void

    .line 808
    .local v0, domain:Ljava/lang/String;
    .local v1, email:Ljava/lang/String;
    .restart local v8       #p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .restart local p2
    :cond_1
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/email/provider/EmailContent$HostAuth;

    .end local p0           #context:Landroid/content/Context;
    iget v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .end local v0           #domain:Ljava/lang/String;
    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 809
    invoke-virtual {p2}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object p0

    .line 810
    .local p0, receiveUri:Ljava/lang/String;
    const-string v0, "+ssl+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 819
    .end local p0           #receiveUri:Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object p0, p1, Lcom/android/email/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/email/provider/EmailContent$HostAuth;

    iget p1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .end local p1
    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/email/provider/EmailContent$HostAuth;->mFlags:I

    .line 820
    invoke-virtual {p2}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object p0

    .line 821
    .local p0, sendUri:Ljava/lang/String;
    const-string p1, "+ssl+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 823
    const-string p1, "+ssl"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 825
    const-string p1, "+tls+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 827
    const-string p1, "+tls"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #sendUri:Ljava/lang/String;
    if-eqz p0, :cond_0

    goto :goto_2

    .line 812
    .local p0, receiveUri:Ljava/lang/String;
    .restart local p1
    :cond_3
    const-string v0, "+ssl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 814
    const-string v0, "+tls+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 816
    const-string v0, "+tls"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    .end local p0           #receiveUri:Ljava/lang/String;
    if-eqz p0, :cond_2

    goto :goto_3

    .line 798
    .end local v1           #email:Ljava/lang/String;
    .end local v8           #p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .end local p1
    :catch_0
    move-exception p0

    goto :goto_1

    .line 786
    .restart local v8       #p:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;
    .restart local p1
    :catch_1
    move-exception p0

    goto/16 :goto_0
.end method

.method static copyAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    .locals 19
    .parameter "context"
    .parameter "account"
    .parameter "accountNum"
    .parameter "handler"

    .prologue
    .line 556
    sget-object v4, Lcom/android/email/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "compatibilityUuid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 558
    .local v4, existCount:I
    if-lez v4, :cond_1

    .line 559
    const-string v4, "Email"

    .end local v4           #existCount:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No conversion, account exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object p1

    .end local p1
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    if-eqz p3, :cond_0

    .line 561
    const p1, 0x7f080172

    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    move-object/from16 v0, p3

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 655
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 566
    .restart local v4       #existCount:I
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/android/email/LegacyConversions;->makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v7

    .line 567
    .local v7, newAccount:Lcom/android/email/provider/EmailContent$Account;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts;->cleanupConnections(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/Account;)V

    .line 568
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Account;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 569
    if-eqz p3, :cond_2

    .line 570
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(I)V

    .line 575
    :cond_2
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 576
    .local v14, conversions:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/email/activity/UpgradeAccounts$FolderConversion;>;"
    const/4 v4, 0x0

    .line 577
    .local v4, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    const/4 v5, 0x0

    .line 578
    .local v5, outbox:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    const/4 v8, 0x0

    .line 579
    .local v8, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    const/4 v6, 0x0

    .line 581
    .local v6, store:Lcom/android/email/mail/store/LocalStore;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/email/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object p1

    .end local p1
    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/email/mail/store/LocalStore;->newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v17

    .line 582
    .end local v6           #store:Lcom/android/email/mail/store/LocalStore;
    .local v17, store:Lcom/android/email/mail/store/LocalStore;
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/store/LocalStore;->getPersonalNamespaces()[Lcom/android/email/mail/Folder;

    move-result-object p1

    .line 583
    .local p1, folders:[Lcom/android/email/mail/Folder;
    move-object/from16 p1, p1

    .local p1, arr$:[Lcom/android/email/mail/Folder;
    move-object/from16 v0, p1

    array-length v0, v0

    move v10, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    .local v10, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move-object/from16 v16, v8

    .end local v8           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v16, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object v15, v4

    .end local v4           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v15, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move v8, v6

    .end local v6           #i$:I
    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_6

    :try_start_2
    aget-object v4, p1, v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 584
    .local v4, folder:Lcom/android/email/mail/Folder;
    const/4 v6, 0x0

    .line 586
    .local v6, folderName:Ljava/lang/String;
    :try_start_3
    sget-object v9, Lcom/android/email/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v11}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 587
    invoke-virtual {v4}, Lcom/android/email/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v6

    .line 591
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/email/LegacyConversions;->makeMailbox(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Account;Lcom/android/email/mail/Folder;)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v11

    .line 593
    .local v11, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/email/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 594
    if-eqz p3, :cond_3

    .line 595
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(I)V

    .line 597
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 599
    new-instance v9, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;

    invoke-direct {v9, v4, v11}, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;-><init>(Lcom/android/email/mail/Folder;Lcom/android/email/provider/EmailContent$Mailbox;)V

    .line 600
    .local v9, conversion:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    invoke-virtual {v14, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 601
    iget v4, v11, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v4           #folder:Lcom/android/email/mail/Folder;
    packed-switch v4, :pswitch_data_0

    .end local v9           #conversion:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .end local v11           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_4
    :goto_2
    move-object/from16 v9, v16

    .end local v16           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v9, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object v4, v15

    .line 583
    .end local v15           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v4, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    :goto_3
    add-int/lit8 v6, v8, 0x1

    .end local v8           #i$:I
    .local v6, i$:I
    move v8, v6

    .end local v6           #i$:I
    .restart local v8       #i$:I
    move-object/from16 v16, v9

    .end local v9           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v16       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object v15, v4

    .end local v4           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v15       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto :goto_1

    .line 603
    .local v6, folderName:Ljava/lang/String;
    .local v9, conversion:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v11       #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :pswitch_0
    move-object v4, v9

    .end local v15           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v4       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 v9, v16

    .line 604
    .end local v16           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v9, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto :goto_3

    .line 606
    .end local v4           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v9, conversion:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v15       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v16       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    :pswitch_1
    move-object v5, v9

    move-object/from16 v9, v16

    .end local v16           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v9, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object v4, v15

    .line 607
    .end local v15           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v4       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto :goto_3

    .line 609
    .end local v4           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v9, conversion:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v15       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v16       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    :pswitch_2
    move-object v4, v9

    .end local v16           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v4, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object v9, v4

    .end local v4           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v9, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object v4, v15

    .end local v15           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v4, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto :goto_3

    .line 612
    .end local v9           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .end local v11           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    .local v4, folder:Lcom/android/email/mail/Folder;
    .restart local v15       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v16       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    :catch_0
    move-exception v4

    .line 617
    .local v4, e:Lcom/android/email/mail/MessagingException;
    if-eqz p3, :cond_4

    .line 618
    const v4, 0x7f080172

    :try_start_4
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v4           #e:Lcom/android/email/mail/MessagingException;
    move-result-object v4

    move-object/from16 v0, p3

    move/from16 v1, p2

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 644
    .end local v6           #folderName:Ljava/lang/String;
    .end local v8           #i$:I
    .end local v10           #len$:I
    .end local p1           #arr$:[Lcom/android/email/mail/Folder;
    :catch_1
    move-exception p1

    move-object/from16 v4, p1

    move-object/from16 v7, v17

    .end local v17           #store:Lcom/android/email/mail/store/LocalStore;
    .local v7, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 v6, v16

    .end local v16           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v6, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p1, v15

    .line 645
    .end local v15           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v4       #e:Lcom/android/email/mail/MessagingException;
    .local p1, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    :goto_4
    :try_start_5
    const-string v8, "Email"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while copying folders "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4           #e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    if-eqz p3, :cond_5

    .line 648
    const v4, 0x7f080172

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    move-object/from16 v0, p3

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 651
    :cond_5
    if-eqz v7, :cond_c

    .line 652
    invoke-virtual {v7}, Lcom/android/email/mail/store/LocalStore;->close()V

    move-object/from16 p2, v7

    .end local v7           #store:Lcom/android/email/mail/store/LocalStore;
    .local p2, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 p0, p1

    .end local p1           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p0, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p1, v6

    .end local v6           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p1, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto/16 :goto_0

    .line 627
    .local v7, newAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v8       #i$:I
    .restart local v10       #len$:I
    .restart local v15       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v16       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v17       #store:Lcom/android/email/mail/store/LocalStore;
    .local p0, context:Landroid/content/Context;
    .local p1, arr$:[Lcom/android/email/mail/Folder;
    .local p2, accountNum:I
    :cond_6
    if-eqz v5, :cond_7

    .line 628
    const/4 v6, 0x1

    move-object/from16 v4, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    :try_start_6
    invoke-static/range {v4 .. v9}, Lcom/android/email/activity/UpgradeAccounts;->copyMessages(Landroid/content/Context;Lcom/android/email/activity/UpgradeAccounts$FolderConversion;ZLcom/android/email/provider/EmailContent$Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    .line 629
    .end local v8           #i$:I
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 631
    :cond_7
    if-eqz v15, :cond_8

    .line 632
    const/4 v10, 0x1

    move-object/from16 v8, p0

    move-object v9, v15

    move-object v11, v7

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lcom/android/email/activity/UpgradeAccounts;->copyMessages(Landroid/content/Context;Lcom/android/email/activity/UpgradeAccounts$FolderConversion;ZLcom/android/email/provider/EmailContent$Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    .line 633
    .end local v10           #len$:I
    invoke-virtual {v14, v15}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 635
    :cond_8
    if-eqz v16, :cond_9

    .line 636
    const/4 v10, 0x1

    move-object/from16 v8, p0

    move-object/from16 v9, v16

    move-object v11, v7

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lcom/android/email/activity/UpgradeAccounts;->copyMessages(Landroid/content/Context;Lcom/android/email/activity/UpgradeAccounts$FolderConversion;ZLcom/android/email/provider/EmailContent$Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V

    .line 637
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 641
    :cond_9
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;

    .line 642
    .local v9, conversion:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    const/4 v10, 0x0

    move-object/from16 v8, p0

    move-object v11, v7

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-static/range {v8 .. v13}, Lcom/android/email/activity/UpgradeAccounts;->copyMessages(Landroid/content/Context;Lcom/android/email/activity/UpgradeAccounts$FolderConversion;ZLcom/android/email/provider/EmailContent$Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    .line 651
    .end local v9           #conversion:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .end local p1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, v17

    .end local v17           #store:Lcom/android/email/mail/store/LocalStore;
    .local p2, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 p1, v16

    .end local v16           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p1, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p0, v15

    .end local v7           #newAccount:Lcom/android/email/provider/EmailContent$Account;
    .end local v15           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .end local p3
    .local p0, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    :goto_6
    if-eqz p2, :cond_a

    .line 652
    invoke-virtual/range {p2 .. p2}, Lcom/android/email/mail/store/LocalStore;->close()V

    :cond_a
    throw p3

    .line 651
    .restart local v7       #newAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v15       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v16       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v17       #store:Lcom/android/email/mail/store/LocalStore;
    .local p0, context:Landroid/content/Context;
    .local p1, i$:Ljava/util/Iterator;
    .local p2, accountNum:I
    .restart local p3
    :cond_b
    if-eqz v17, :cond_d

    .line 652
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/store/LocalStore;->close()V

    move-object/from16 p2, v17

    .end local v17           #store:Lcom/android/email/mail/store/LocalStore;
    .local p2, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 p1, v16

    .end local v16           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p1, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p0, v15

    .end local v15           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p0, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto/16 :goto_0

    .line 651
    .end local p1           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v4, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v6, store:Lcom/android/email/mail/store/LocalStore;
    .local v8, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p0, context:Landroid/content/Context;
    .local p2, accountNum:I
    :catchall_1
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, v6

    .end local v6           #store:Lcom/android/email/mail/store/LocalStore;
    .local p2, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 p1, v8

    .end local v8           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local p1       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p0, v4

    .end local v4           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p0, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto :goto_6

    .end local p1           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v4       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v8       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v17       #store:Lcom/android/email/mail/store/LocalStore;
    .local p0, context:Landroid/content/Context;
    .local p2, accountNum:I
    :catchall_2
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, v17

    .end local v17           #store:Lcom/android/email/mail/store/LocalStore;
    .local p2, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 p1, v8

    .end local v8           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local p1       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p0, v4

    .end local v4           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p0, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto :goto_6

    .end local p0           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v6, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v7, store:Lcom/android/email/mail/store/LocalStore;
    .local p1, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p2, accountNum:I
    :catchall_3
    move-exception p0

    move-object/from16 p3, p0

    move-object/from16 p2, v7

    .end local v7           #store:Lcom/android/email/mail/store/LocalStore;
    .local p2, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 p0, p1

    .end local p1           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local p0       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p1, v6

    .end local v6           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p1, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto :goto_6

    .line 644
    .end local p1           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v4       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v6, store:Lcom/android/email/mail/store/LocalStore;
    .local v7, newAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v8       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p0, context:Landroid/content/Context;
    .local p2, accountNum:I
    :catch_2
    move-exception p1

    move-object v7, v6

    .end local v6           #store:Lcom/android/email/mail/store/LocalStore;
    .local v7, store:Lcom/android/email/mail/store/LocalStore;
    move-object v6, v8

    .end local v8           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v6, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 v18, p1

    move-object/from16 p1, v4

    .end local v4           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p1, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 v4, v18

    goto/16 :goto_4

    .end local v6           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .end local p1           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v4       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local v7, newAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v8       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v17       #store:Lcom/android/email/mail/store/LocalStore;
    :catch_3
    move-exception p1

    move-object/from16 v7, v17

    .end local v17           #store:Lcom/android/email/mail/store/LocalStore;
    .local v7, store:Lcom/android/email/mail/store/LocalStore;
    move-object v6, v8

    .end local v8           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v6       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 v18, p1

    move-object/from16 p1, v4

    .end local v4           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local p1       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 v4, v18

    goto/16 :goto_4

    .end local p0           #context:Landroid/content/Context;
    :cond_c
    move-object/from16 p2, v7

    .end local v7           #store:Lcom/android/email/mail/store/LocalStore;
    .local p2, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 p0, p1

    .end local p1           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p0, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p1, v6

    .end local v6           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p1, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto/16 :goto_0

    .local v7, newAccount:Lcom/android/email/provider/EmailContent$Account;
    .restart local v15       #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v16       #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .restart local v17       #store:Lcom/android/email/mail/store/LocalStore;
    .local p0, context:Landroid/content/Context;
    .local p1, i$:Ljava/util/Iterator;
    .local p2, accountNum:I
    :cond_d
    move-object/from16 p2, v17

    .end local v17           #store:Lcom/android/email/mail/store/LocalStore;
    .local p2, store:Lcom/android/email/mail/store/LocalStore;
    move-object/from16 p1, v16

    .end local v16           #sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p1, sent:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    move-object/from16 p0, v15

    .end local v15           #drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    .local p0, drafts:Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
    goto/16 :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static copyMessages(Landroid/content/Context;Lcom/android/email/activity/UpgradeAccounts$FolderConversion;ZLcom/android/email/provider/EmailContent$Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    .locals 14
    .parameter "context"
    .parameter "conversion"
    .parameter "localAttachments"
    .parameter "newAccount"
    .parameter "accountNum"
    .parameter "handler"

    .prologue
    .line 671
    :try_start_0
    iget-object v3, p1, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->mailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget v3, v3, Lcom/android/email/provider/EmailContent$Mailbox;->mType:I

    if-nez v3, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/email/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    move v13, v3

    .line 673
    .local v13, makeDeleteSentinels:Z
    :goto_0
    iget-object v3, p1, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->folder:Lcom/android/email/mail/Folder;

    sget-object v4, Lcom/android/email/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 674
    iget-object v3, p1, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->folder:Lcom/android/email/mail/Folder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/email/mail/Folder;->getMessages(Lcom/android/email/mail/MessageRetrievalListener;)[Lcom/android/email/mail/Message;

    move-result-object v3

    .line 675
    .local v3, oldMessages:[Lcom/android/email/mail/Message;
    move-object v9, v3

    .local v9, arr$:[Lcom/android/email/mail/Message;
    array-length v12, v9

    .local v12, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    move v11, v3

    .end local v3           #i$:I
    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_5

    aget-object v4, v9, v11
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 676
    .local v4, oldMessage:Lcom/android/email/mail/Message;
    const/4 v10, 0x0

    .line 679
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Lcom/android/email/mail/FetchProfile;

    invoke-direct {v3}, Lcom/android/email/mail/FetchProfile;-><init>()V

    .line 680
    .local v3, fp:Lcom/android/email/mail/FetchProfile;
    sget-object v5, Lcom/android/email/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v3, v5}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 681
    sget-object v5, Lcom/android/email/mail/FetchProfile$Item;->BODY:Lcom/android/email/mail/FetchProfile$Item;

    invoke-virtual {v3, v5}, Lcom/android/email/mail/FetchProfile;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->folder:Lcom/android/email/mail/Folder;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/email/mail/Message;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/email/mail/Folder;->fetch([Lcom/android/email/mail/Message;Lcom/android/email/mail/FetchProfile;Lcom/android/email/mail/MessageRetrievalListener;)V

    .line 683
    new-instance v3, Lcom/android/email/provider/EmailContent$Message;

    .end local v3           #fp:Lcom/android/email/mail/FetchProfile;
    invoke-direct {v3}, Lcom/android/email/provider/EmailContent$Message;-><init>()V

    .line 684
    .local v3, newMessage:Lcom/android/email/provider/EmailContent$Message;
    if-eqz v13, :cond_4

    sget-object v5, Lcom/android/email/mail/Flag;->DELETED:Lcom/android/email/mail/Flag;

    invoke-virtual {v4, v5}, Lcom/android/email/mail/Message;->isSet(Lcom/android/email/mail/Flag;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 688
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v5, v0

    iput-wide v5, v3, Lcom/android/email/provider/EmailContent$Message;->mAccountKey:J

    .line 689
    iget-object v5, p1, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->mailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    iput-wide v5, v3, Lcom/android/email/provider/EmailContent$Message;->mMailboxKey:J

    .line 690
    const/4 v5, 0x3

    iput v5, v3, Lcom/android/email/provider/EmailContent$Message;->mFlagLoaded:I

    .line 691
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/email/provider/EmailContent$Message;->mFlagRead:Z

    .line 692
    invoke-virtual {v4}, Lcom/android/email/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v4

    .end local v4           #oldMessage:Lcom/android/email/mail/Message;
    iput-object v4, v3, Lcom/android/email/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 693
    invoke-virtual {v3, p0}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 717
    :cond_0
    :goto_2
    if-eqz p5, :cond_1

    .line 718
    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(I)V
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v3, v10

    .line 725
    .end local v10           #e:Ljava/lang/Exception;
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    if-eqz v3, :cond_2

    .line 729
    if-eqz p5, :cond_2

    .line 730
    const v3, 0x7f080172

    :try_start_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local v3           #e:Ljava/lang/Exception;
    move-result-object v3

    move-object/from16 v0, p5

    move/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V
    :try_end_2
    .catch Lcom/android/email/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_2

    .line 675
    :cond_2
    add-int/lit8 v3, v11, 0x1

    .end local v11           #i$:I
    .local v3, i$:I
    move v11, v3

    .end local v3           #i$:I
    .restart local v11       #i$:I
    goto :goto_1

    .line 671
    .end local v9           #arr$:[Lcom/android/email/mail/Message;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #makeDeleteSentinels:Z
    :cond_3
    const/4 v3, 0x0

    move v13, v3

    goto/16 :goto_0

    .line 697
    .local v3, newMessage:Lcom/android/email/provider/EmailContent$Message;
    .restart local v4       #oldMessage:Lcom/android/email/mail/Message;
    .restart local v9       #arr$:[Lcom/android/email/mail/Message;
    .restart local v10       #e:Ljava/lang/Exception;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #makeDeleteSentinels:Z
    :cond_4
    :try_start_3
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/email/provider/EmailContent$Account;->mId:J

    move-wide v5, v0

    iget-object v7, p1, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->mailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/email/provider/EmailContent$Mailbox;->mId:J

    invoke-static/range {v3 .. v8}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/email/provider/EmailContent$Message;Lcom/android/email/mail/Message;JJ)Z

    .line 700
    new-instance v6, Lcom/android/email/provider/EmailContent$Body;

    invoke-direct {v6}, Lcom/android/email/provider/EmailContent$Body;-><init>()V

    .line 701
    .local v6, newBody:Lcom/android/email/provider/EmailContent$Body;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v7, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v5, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    invoke-static {v4, v7, v5}, Lcom/android/email/mail/internet/MimeUtility;->collectParts(Lcom/android/email/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 704
    invoke-static {v6, v3, v7}, Lcom/android/email/LegacyConversions;->updateBodyFields(Lcom/android/email/provider/EmailContent$Body;Lcom/android/email/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 706
    invoke-virtual {v3, p0}, Lcom/android/email/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 707
    invoke-virtual {v6, p0}, Lcom/android/email/provider/EmailContent$Body;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 709
    if-eqz p2, :cond_0

    .line 712
    const/4 v4, 0x1

    invoke-static {p0, v3, v5, v4}, Lcom/android/email/LegacyConversions;->updateAttachments(Landroid/content/Context;Lcom/android/email/provider/EmailContent$Message;Ljava/util/ArrayList;Z)V
    :try_end_3
    .catch Lcom/android/email/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 720
    .end local v3           #newMessage:Lcom/android/email/provider/EmailContent$Message;
    .end local v4           #oldMessage:Lcom/android/email/mail/Message;
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    .end local v6           #newBody:Lcom/android/email/provider/EmailContent$Body;
    .end local v7           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/mail/Part;>;"
    :catch_0
    move-exception v3

    .line 721
    .local v3, me:Lcom/android/email/mail/MessagingException;
    move-object v3, v3

    .line 724
    .end local v10           #e:Ljava/lang/Exception;
    .local v3, e:Ljava/lang/Exception;
    goto :goto_3

    .line 722
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v10       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 723
    .local v3, ioe:Ljava/io/IOException;
    move-object v3, v3

    .end local v10           #e:Ljava/lang/Exception;
    .local v3, e:Ljava/lang/Exception;
    goto :goto_3

    .line 735
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #arr$:[Lcom/android/email/mail/Message;
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #makeDeleteSentinels:Z
    :catch_2
    move-exception p2

    .line 737
    .local p2, e:Lcom/android/email/mail/MessagingException;
    const-string p3, "Email"

    .end local p3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while copying messages in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object p1, p1, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->folder:Lcom/android/email/mail/Folder;

    .end local p1
    invoke-virtual {p1}, Lcom/android/email/mail/Folder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p3

    move-object v1, p1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    if-eqz p5, :cond_5

    .line 740
    const p1, 0x7f080172

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    move-object/from16 v0, p5

    move/from16 v1, p4

    move-object v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    .line 743
    .end local p2           #e:Lcom/android/email/mail/MessagingException;
    :cond_5
    return-void
.end method

.method static deleteAccountStore(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)V
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "accountNum"
    .parameter "handler"

    .prologue
    .line 751
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/android/email/mail/store/LocalStore;->newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;

    move-result-object v1

    .line 752
    .local v1, store:Lcom/android/email/mail/Store;
    invoke-virtual {v1}, Lcom/android/email/mail/store/LocalStore;->delete()V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    .end local v1           #store:Lcom/android/email/mail/Store;
    :cond_0
    :goto_0
    return-void

    .line 754
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 755
    .local v0, e:Lcom/android/email/mail/MessagingException;
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while deleting account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    if-eqz p3, :cond_0

    .line 757
    const v2, 0x7f080172

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->error(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static doBulkUpgradeIfNecessary(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 838
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/email/activity/UpgradeAccounts;->bulkUpgradesRequired(Landroid/content/Context;Lcom/android/email/Preferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    sget-boolean v0, Lcom/android/email/activity/UpgradeAccounts;->sConversionHasRun:Z

    if-eq v0, v1, :cond_0

    .line 840
    invoke-static {p0}, Lcom/android/email/activity/UpgradeAccounts;->actionStart(Landroid/content/Context;)V

    :cond_0
    move v0, v1

    .line 843
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static estimateWork(Landroid/content/Context;Lcom/android/email/Account;)I
    .locals 11
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v8, -0x1

    const-string v10, "Exception while estimating account size "

    const-string v9, "Email"

    .line 466
    const/4 v1, 0x1

    .line 468
    .local v1, estimate:I
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, p0, v7}, Lcom/android/email/mail/store/LocalStore;->newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;

    move-result-object v5

    .line 469
    .local v5, store:Lcom/android/email/mail/store/LocalStore;
    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->getPersonalNamespaces()[Lcom/android/email/mail/Folder;

    move-result-object v3

    .line 470
    .local v3, folders:[Lcom/android/email/mail/Folder;
    array-length v6, v3

    add-int/2addr v1, v6

    .line 471
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_0

    .line 472
    aget-object v2, v3, v4

    .line 473
    .local v2, folder:Lcom/android/email/mail/Folder;
    sget-object v6, Lcom/android/email/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 474
    invoke-virtual {v2}, Lcom/android/email/mail/Folder;->getMessageCount()I

    move-result v6

    add-int/2addr v1, v6

    .line 475
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 471
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    .end local v2           #folder:Lcom/android/email/mail/Folder;
    :cond_0
    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->getStoredAttachmentCount()I

    move-result v6

    add-int/2addr v1, v6

    .line 478
    invoke-virtual {v5}, Lcom/android/email/mail/store/LocalStore;->close()V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v6, v1

    .line 486
    .end local v3           #folders:[Lcom/android/email/mail/Folder;
    .end local v4           #i:I
    .end local v5           #store:Lcom/android/email/mail/store/LocalStore;
    :goto_1
    return v6

    .line 479
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 480
    .local v0, e:Lcom/android/email/mail/MessagingException;
    const-string v6, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while estimating account size "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v8

    .line 481
    goto :goto_1

    .line 482
    .end local v0           #e:Lcom/android/email/mail/MessagingException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 483
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v6, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while estimating account size "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v8

    .line 484
    goto :goto_1
.end method

.method private loadAccountInfoArray([Lcom/android/email/Account;)V
    .locals 3
    .parameter "legacyAccounts"

    .prologue
    .line 192
    array-length v2, p1

    new-array v2, v2, [Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    .line 193
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 194
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aget-object v2, p1, v1

    invoke-direct {v0, v2}, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;-><init>(Lcom/android/email/Account;)V

    .line 195
    .local v0, ai:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    aput-object v0, v2, v1

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    .end local v0           #ai:Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
    :cond_0
    return-void
.end method

.method private onClickOk()V
    .locals 0

    .prologue
    .line 166
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    .line 168
    return-void
.end method

.method static scrubAccount(Landroid/content/Context;Lcom/android/email/Account;ILcom/android/email/activity/UpgradeAccounts$UIHandler;)Z
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "accountNum"
    .parameter "handler"

    .prologue
    .line 500
    :try_start_0
    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, storeUri:Ljava/lang/String;
    const-string v1, "imap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 502
    .local v2, isImap:Z
    invoke-virtual {p1}, Lcom/android/email/Account;->getLocalStoreUri()Ljava/lang/String;

    move-result-object p1

    .end local p1
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/email/mail/store/LocalStore;->newInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/store/LocalStore;

    .end local v0           #storeUri:Ljava/lang/String;
    move-result-object v4

    .line 503
    .local v4, store:Lcom/android/email/mail/store/LocalStore;
    invoke-virtual {v4}, Lcom/android/email/mail/store/LocalStore;->getPersonalNamespaces()[Lcom/android/email/mail/Folder;

    move-result-object p0

    .line 504
    .local p0, folders:[Lcom/android/email/mail/Folder;
    move-object p0, p0

    .local p0, arr$:[Lcom/android/email/mail/Folder;
    array-length v3, p0

    .local v3, len$:I
    const/4 p1, 0x0

    .local p1, i$:I
    move v1, p1

    .end local p1           #i$:I
    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_3

    aget-object p1, p0, v1

    .line 505
    .local p1, folder:Lcom/android/email/mail/Folder;
    sget-object v0, Lcom/android/email/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/email/mail/Folder$OpenMode;

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Lcom/android/email/mail/Folder;->open(Lcom/android/email/mail/Folder$OpenMode;Lcom/android/email/mail/Folder$PersistentDataCallbacks;)V

    .line 506
    invoke-virtual {p1}, Lcom/android/email/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, folderName:Ljava/lang/String;
    const-string v5, "drafts"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    .end local v0           #folderName:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/Folder;->close(Z)V

    .line 504
    add-int/lit8 p1, v1, 0x1

    .end local v1           #i$:I
    .local p1, i$:I
    move v1, p1

    .end local p1           #i$:I
    .restart local v1       #i$:I
    goto :goto_0

    .line 509
    .restart local v0       #folderName:Ljava/lang/String;
    .local p1, folder:Lcom/android/email/mail/Folder;
    :cond_1
    const-string v5, "outbox"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 511
    const-string v5, "sent"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 513
    if-nez v2, :cond_2

    const-string v5, "trash"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #folderName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 517
    :cond_2
    invoke-virtual {p1}, Lcom/android/email/mail/Folder;->getMessageCount()I

    move-result v0

    .line 518
    .local v0, messageCount:I
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lcom/android/email/mail/Folder;->delete(Z)V

    .line 519
    if-eqz p3, :cond_0

    .line 520
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, p2, v0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V
    :try_end_0
    .catch Lcom/android/email/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 530
    .end local v0           #messageCount:I
    .end local v1           #i$:I
    .end local v2           #isImap:Z
    .end local v3           #len$:I
    .end local v4           #store:Lcom/android/email/mail/store/LocalStore;
    .end local p0           #arr$:[Lcom/android/email/mail/Folder;
    .end local p1           #folder:Lcom/android/email/mail/Folder;
    :catch_0
    move-exception p0

    .line 531
    .local p0, e:Lcom/android/email/mail/MessagingException;
    const-string p1, "Email"

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while scrubbing account "

    .end local p3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Lcom/android/email/mail/MessagingException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 p0, 0x0

    .line 537
    :goto_2
    return p0

    .line 525
    .restart local v1       #i$:I
    .restart local v2       #isImap:Z
    .restart local v3       #len$:I
    .restart local v4       #store:Lcom/android/email/mail/store/LocalStore;
    .local p0, arr$:[Lcom/android/email/mail/Folder;
    .restart local p2
    .restart local p3
    :cond_3
    :try_start_1
    invoke-virtual {v4}, Lcom/android/email/mail/store/LocalStore;->pruneCachedAttachments()I

    move-result p0

    .line 526
    .local p0, pruned:I
    if-eqz p3, :cond_4

    .line 527
    invoke-virtual {p3, p2, p0}, Lcom/android/email/activity/UpgradeAccounts$UIHandler;->incProgress(II)V

    .line 529
    :cond_4
    invoke-virtual {v4}, Lcom/android/email/mail/store/LocalStore;->close()V
    :try_end_1
    .catch Lcom/android/email/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 537
    const/4 p0, 0x1

    goto :goto_2

    .line 533
    .end local v1           #i$:I
    .end local v2           #isImap:Z
    .end local v3           #len$:I
    .end local v4           #store:Lcom/android/email/mail/store/LocalStore;
    .end local p0           #pruned:I
    :catch_1
    move-exception p0

    .line 534
    .local p0, e:Ljava/lang/RuntimeException;
    const-string p1, "Email"

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception while scrubbing account "

    .end local p3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/4 p0, 0x0

    goto :goto_2
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 171
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;-><init>(Lcom/android/email/activity/UpgradeAccounts;)V

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    .line 172
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts;->mAdapter:Lcom/android/email/activity/UpgradeAccounts$AccountsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    .line 155
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 163
    :goto_0
    return-void

    .line 160
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->onClickOk()V

    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f07011a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    .line 112
    .local v1, p:Lcom/android/email/Preferences;
    invoke-virtual {v1}, Lcom/android/email/Preferences;->getAccounts()[Lcom/android/email/Account;

    move-result-object v0

    .line 113
    .local v0, legacyAccounts:[Lcom/android/email/Account;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->finish()V

    .line 127
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/UpgradeAccounts;->loadAccountInfoArray([Lcom/android/email/Account;)V

    .line 119
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** Preparing to upgrade "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accounts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const v2, 0x7f030042

    invoke-virtual {p0, v2}, Lcom/android/email/activity/UpgradeAccounts;->setContentView(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/email/activity/UpgradeAccounts;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mListView:Landroid/widget/ListView;

    .line 124
    const v2, 0x7f07011a

    invoke-virtual {p0, v2}, Lcom/android/email/activity/UpgradeAccounts;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    .line 125
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/email/activity/UpgradeAccounts;->mProceedButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/Utility;->cancelTask(Landroid/os/AsyncTask;Z)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/android/email/activity/UpgradeAccounts;->updateList()V

    .line 135
    new-instance v0, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    iget-object v1, p0, Lcom/android/email/activity/UpgradeAccounts;->mLegacyAccounts:[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;-><init>(Lcom/android/email/activity/UpgradeAccounts;[Lcom/android/email/activity/UpgradeAccounts$AccountInfo;)V

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    .line 136
    iget-object v0, p0, Lcom/android/email/activity/UpgradeAccounts;->mConversionTask:Lcom/android/email/activity/UpgradeAccounts$ConversionTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/UpgradeAccounts$ConversionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method
