.class Lcom/android/email/activity/UpgradeAccounts$AccountInfo;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field account:Lcom/android/email/Account;

.field errorMessage:Ljava/lang/String;

.field isError:Z

.field maxProgress:I

.field progress:I


# direct methods
.method public constructor <init>(Lcom/android/email/Account;)V
    .locals 2
    .parameter "legacyAccount"

    .prologue
    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->account:Lcom/android/email/Account;

    .line 184
    iput v1, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->maxProgress:I

    .line 185
    iput v1, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->progress:I

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->errorMessage:Ljava/lang/String;

    .line 187
    iput-boolean v1, p0, Lcom/android/email/activity/UpgradeAccounts$AccountInfo;->isError:Z

    .line 188
    return-void
.end method
