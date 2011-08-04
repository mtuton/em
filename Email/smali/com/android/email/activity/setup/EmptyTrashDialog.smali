.class public Lcom/android/email/activity/setup/EmptyTrashDialog;
.super Landroid/preference/DialogPreference;
.source "EmptyTrashDialog.java"


# instance fields
.field private mAccountId:J

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/email/Controller;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mContext:Landroid/content/Context;

    .line 25
    iput-object v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    .line 27
    iput-object v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    .line 28
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 7
    .parameter "positiveResult"

    .prologue
    const/4 v6, 0x0

    .line 43
    if-eqz p1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    invoke-static {v1, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 48
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/email/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/email/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f08017e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/email/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 60
    .end local v0           #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0       #account:Lcom/android/email/provider/EmailContent$Account;
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    iget-wide v2, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/email/Controller;->emptyTrash(J)V

    .line 54
    iget-object v1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method setAccountId(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mAccountId:J

    .line 32
    return-void
.end method

.method setController(Lcom/android/email/Controller;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mController:Lcom/android/email/Controller;

    .line 36
    return-void
.end method

.method setPositiveResultDialog(Landroid/app/Dialog;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/email/activity/setup/EmptyTrashDialog;->mDialog:Landroid/app/Dialog;

    .line 40
    return-void
.end method
