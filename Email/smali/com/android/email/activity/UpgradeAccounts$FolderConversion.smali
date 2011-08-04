.class Lcom/android/email/activity/UpgradeAccounts$FolderConversion;
.super Ljava/lang/Object;
.source "UpgradeAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UpgradeAccounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FolderConversion"
.end annotation


# instance fields
.field final folder:Lcom/android/email/mail/Folder;

.field final mailbox:Lcom/android/email/provider/EmailContent$Mailbox;


# direct methods
.method public constructor <init>(Lcom/android/email/mail/Folder;Lcom/android/email/provider/EmailContent$Mailbox;)V
    .locals 0
    .parameter "_folder"
    .parameter "_mailbox"

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->folder:Lcom/android/email/mail/Folder;

    .line 547
    iput-object p2, p0, Lcom/android/email/activity/UpgradeAccounts$FolderConversion;->mailbox:Lcom/android/email/provider/EmailContent$Mailbox;

    .line 548
    return-void
.end method
