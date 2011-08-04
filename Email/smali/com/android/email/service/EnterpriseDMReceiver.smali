.class public Lcom/android/email/service/EnterpriseDMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseDMReceiver.java"


# static fields
.field public static ACCOUNT_DELETED:Ljava/lang/String;

.field public static ENABLE_MESSAGECOMPOSE:Ljava/lang/String;

.field public static INSTALL_CERTIFICATE:Ljava/lang/String;

.field public static RENAME_CERTIFICATE:Ljava/lang/String;

.field public static SIGNATURE_UPDATE:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "EnterpriseDMReceiver"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    .line 20
    const-string v0, "com.android.email.SIGNATURE_UPDATED"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->SIGNATURE_UPDATE:Ljava/lang/String;

    .line 21
    const-string v0, "com.android.email.INSTALL_CERTIFICATE"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->INSTALL_CERTIFICATE:Ljava/lang/String;

    .line 22
    const-string v0, "com.android.email.ACCOUNT_DELETED"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->ACCOUNT_DELETED:Ljava/lang/String;

    .line 23
    const-string v0, "com.android.email.RENAME_CERTIFICATE"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->RENAME_CERTIFICATE:Ljava/lang/String;

    .line 24
    const-string v0, "com.android.email.ENABLE_MESSAGECOMPOSE"

    sput-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->ENABLE_MESSAGECOMPOSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateSignatureToPrefs(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "sigString"

    .prologue
    .line 109
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    .local v0, sp:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 111
    sget-object v1, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "signature"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/email/service/EnterpriseDMReceiver;->SIGNATURE_UPDATE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 44
    sget-object v4, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive Signature Update"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v4, "signature"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, signature:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 48
    invoke-direct {p0, p1, v2}, Lcom/android/email/service/EnterpriseDMReceiver;->updateSignatureToPrefs(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    .end local v2           #signature:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/email/service/EnterpriseDMReceiver;->INSTALL_CERTIFICATE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    sget-object v4, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive Install Certificate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/email/service/EnterpriseDMReceiver$1;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/email/service/EnterpriseDMReceiver$1;-><init>(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/email/service/EnterpriseDMReceiver;->ACCOUNT_DELETED:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    sget-object v4, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive ACCOUNT_DELETED"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v4, "accountid"

    const-wide/16 v5, -0x1

    invoke-virtual {p2, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 74
    .local v0, accid:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 75
    invoke-static {p1, v0, v1}, Lcom/android/exchange/EmailKeyManager$EmailKeyStore;->removeCertificate(Landroid/content/Context;J)V

    .line 77
    invoke-static {p1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 79
    invoke-static {p1}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v3

    .line 80
    .local v3, sp:Lcom/android/email/SecurityPolicy;
    if-eqz v3, :cond_0

    .line 81
    invoke-virtual {v3}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    goto :goto_0

    .line 85
    .end local v0           #accid:J
    .end local v3           #sp:Lcom/android/email/SecurityPolicy;
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/email/service/EnterpriseDMReceiver;->RENAME_CERTIFICATE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 86
    sget-object v4, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive Rename Certificate"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/email/service/EnterpriseDMReceiver$2;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/email/service/EnterpriseDMReceiver$2;-><init>(Lcom/android/email/service/EnterpriseDMReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/email/service/EnterpriseDMReceiver;->ENABLE_MESSAGECOMPOSE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    sget-object v4, Lcom/android/email/service/EnterpriseDMReceiver;->TAG:Ljava/lang/String;

    const-string v5, "onReceive MessageCompose Enable"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p1}, Lcom/android/email/Email;->setServicesEnabled(Landroid/content/Context;)Z

    goto/16 :goto_0
.end method
