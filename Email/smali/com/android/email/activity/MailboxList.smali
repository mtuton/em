.class public Lcom/android/email/activity/MailboxList;
.super Landroid/app/ListActivity;
.source "MailboxList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxList$MailboxListAdapter;,
        Lcom/android/email/activity/MailboxList$ControllerResults;,
        Lcom/android/email/activity/MailboxList$MailboxListHandler;,
        Lcom/android/email/activity/MailboxList$LoadMailboxesTask;
    }
.end annotation


# static fields
.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.android.email.activity._ACCOUNT_ID"

.field private static final MAILBOX_SELECTION:Ljava/lang/String; = "accountKey=? AND type<64 AND flagVisible=1"

.field private static final mColorChipResIds:[I


# instance fields
.field private mAccountId:J

.field private mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

.field private mErrorBanner:Landroid/widget/TextView;

.field private mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

.field private mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadAccountNameTask:Landroid/os/AsyncTask;

.field private mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

.field private mProgressIcon:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/email/activity/MailboxList;->mColorChipResIds:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x2t 0x7ft
        0xct 0x0t 0x2t 0x7ft
        0xft 0x0t 0x2t 0x7ft
        0x10t 0x0t 0x2t 0x7ft
        0x11t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0x13t 0x0t 0x2t 0x7ft
        0x14t 0x0t 0x2t 0x7ft
        0x15t 0x0t 0x2t 0x7ft
        0x2t 0x0t 0x2t 0x7ft
        0x3t 0x0t 0x2t 0x7ft
        0x4t 0x0t 0x2t 0x7ft
        0x5t 0x0t 0x2t 0x7ft
        0x6t 0x0t 0x2t 0x7ft
        0x7t 0x0t 0x2t 0x7ft
        0x8t 0x0t 0x2t 0x7ft
        0x9t 0x0t 0x2t 0x7ft
        0xat 0x0t 0x2t 0x7ft
        0xbt 0x0t 0x2t 0x7ft
        0xdt 0x0t 0x2t 0x7ft
        0xet 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 89
    new-instance v0, Lcom/android/email/activity/MailboxList$MailboxListHandler;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$MailboxListHandler;-><init>(Lcom/android/email/activity/MailboxList;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    .line 90
    new-instance v0, Lcom/android/email/activity/MailboxList$ControllerResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MailboxList$ControllerResults;-><init>(Lcom/android/email/activity/MailboxList;Lcom/android/email/activity/MailboxList$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    .line 807
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxList;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/MailboxList;)Lcom/android/email/activity/MailboxList$MailboxListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxList;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mProgressIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/email/activity/MailboxList;->mColorChipResIds:[I

    return-object v0
.end method

.method public static actionHandleAccount(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 128
    const-string v1, "MailboxList"

    const-string v2, "Jane Logging: actionHandleAccount start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MailboxList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private enterFolderName(JI)V
    .locals 11
    .parameter "mailboxId"
    .parameter "action"

    .prologue
    .line 421
    const-string v0, "MailboxList"

    const-string v1, "Jane Logging: enterFolderName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 423
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03001a

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 424
    .local v9, view:Landroid/view/View;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 425
    .local v6, alert:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f080218

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 428
    const v0, 0x7f070081

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 429
    .local v2, text:Landroid/widget/EditText;
    const v0, 0x7f07012c

    if-ne p3, v0, :cond_0

    .line 430
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 431
    .local v8, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-eqz v8, :cond_0

    .line 432
    iget-object v0, v8, Lcom/android/email/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .end local v8           #mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    :cond_0
    const v10, 0x104000a

    new-instance v0, Lcom/android/email/activity/MailboxList$3;

    move-object v1, p0

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MailboxList$3;-><init>(Lcom/android/email/activity/MailboxList;Landroid/widget/EditText;IJ)V

    invoke-virtual {v6, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 454
    const/high16 v0, 0x104

    new-instance v1, Lcom/android/email/activity/MailboxList$4;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MailboxList$4;-><init>(Lcom/android/email/activity/MailboxList;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 461
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 462
    return-void
.end method

.method private onAccounts()V
    .locals 0

    .prologue
    .line 466
    invoke-static {p0}, Lcom/android/email/activity/AccountFolderList;->actionShowAccounts(Landroid/content/Context;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    .line 468
    return-void
.end method

.method private onCompose()V
    .locals 2

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 481
    return-void
.end method

.method private onCreateMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 373
    const-string v0, "MailboxList"

    const-string v1, "Jane Logging: onCreateMailbox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const v0, 0x7f07012b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/MailboxList;->enterFolderName(JI)V

    .line 375
    return-void
.end method

.method private onDeleteMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 369
    .local v0, controller:Lcom/android/email/Controller;
    invoke-virtual {v0, p1, p2}, Lcom/android/email/Controller;->deleteFolder(J)V

    .line 370
    return-void
.end method

.method private onEditAccount()V
    .locals 2

    .prologue
    .line 471
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    .line 472
    return-void
.end method

.method private onMoveMailbox(J)V
    .locals 10
    .parameter "mailboxId"

    .prologue
    .line 383
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "displayName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "type"

    aput-object v1, v2, v0

    .line 386
    .local v2, MAILBOX_LIST_PROJECTION:[Ljava/lang/String;
    invoke-static {p0, p1, p2}, Lcom/android/email/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 388
    .local v9, mailbox:Lcom/android/email/provider/EmailContent$Mailbox;
    if-nez v9, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    const-string v1, "Cannot find mailbox"

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->showErrorBanner(Ljava/lang/String;)V

    .line 418
    .end local v2           #MAILBOX_LIST_PROJECTION:[Ljava/lang/String;
    :goto_0
    return-void

    .line 393
    .restart local v2       #MAILBOX_LIST_PROJECTION:[Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey=? AND type<64 AND serverId<>\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flagVisible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 399
    .local v6, MAILBOX_SELECTION:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "serverId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 403
    .local v8, c1:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v7, v9, Lcom/android/email/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 409
    .local v7, c:Landroid/database/Cursor;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/email/activity/MailboxList$2;

    invoke-direct {v1, p0, p1, p2, v7}, Lcom/android/email/activity/MailboxList$2;-><init>(Lcom/android/email/activity/MailboxList;JLandroid/database/Cursor;)V

    const-string v2, "displayName"

    .end local v2           #MAILBOX_LIST_PROJECTION:[Ljava/lang/String;
    invoke-virtual {v0, v7, v1, v2}, Landroid/app/AlertDialog$Builder;->setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method private onOpenMailbox(J)V
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 475
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MessageList;->isStartedFromMailboxList:Z

    .line 476
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageList;->actionHandleMailbox(Landroid/content/Context;J)V

    .line 477
    return-void
.end method

.method private onRefresh(J)V
    .locals 6
    .parameter "mailboxId"

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    .line 358
    .local v0, controller:Lcom/android/email/Controller;
    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mHandler:Lcom/android/email/activity/MailboxList$MailboxListHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MailboxList$MailboxListHandler;->progress(Z)V

    .line 359
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 360
    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    iget-object v5, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    move-wide v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJLcom/android/email/Controller$Result;)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/Controller;->updateMailboxList(JLcom/android/email/Controller$Result;)V

    goto :goto_0
.end method

.method private onRenameMailbox(J)V
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 378
    const v0, 0x7f07012c

    invoke-direct {p0, p1, p2, v0}, Lcom/android/email/activity/MailboxList;->enterFolderName(JI)V

    .line 379
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 241
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onCompose()V

    goto :goto_0

    .line 244
    :pswitch_1
    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MailboxList;->onRefresh(J)V

    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x7f07008c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 324
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 327
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 349
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 329
    :pswitch_1
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->onRefresh(J)V

    goto :goto_0

    .line 332
    :pswitch_2
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->onOpenMailbox(J)V

    goto :goto_0

    .line 336
    :pswitch_3
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->onDeleteMailbox(J)V

    goto :goto_0

    .line 339
    :pswitch_4
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->onCreateMailbox(J)V

    goto :goto_0

    .line 342
    :pswitch_5
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->onRenameMailbox(J)V

    goto :goto_0

    .line 345
    :pswitch_6
    iget-wide v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/activity/MailboxList;->onMoveMailbox(J)V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x7f070122
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const-string v1, "MailboxList"

    .line 137
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "MailboxList"

    const-string v0, "Jane Logging: onCreate start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v0, "MailboxList"

    const-string v0, "Jane Logging: onCreate:before setContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->setContentView(I)V

    .line 142
    const-string v0, "MailboxList"

    const-string v0, "Jane Logging: onCreate:after setContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    .line 147
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mProgressIcon:Landroid/widget/ProgressBar;

    .line 148
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mErrorBanner:Landroid/widget/TextView;

    .line 150
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->registerForContextMenu(Landroid/view/View;)V

    .line 154
    new-instance v0, Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/email/activity/MailboxList$MailboxListAdapter;-><init>(Lcom/android/email/activity/MailboxList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    .line 155
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MailboxList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.email.activity._ACCOUNT_ID"

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    .line 158
    iget-wide v0, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    iget-wide v1, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;-><init>(Lcom/android/email/activity/MailboxList;J)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    .line 160
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    :goto_0
    new-instance v0, Lcom/android/email/activity/MailboxList$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxList$1;-><init>(Lcom/android/email/activity/MailboxList;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxList$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    .line 202
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->finish()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "v"
    .parameter "info"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 293
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 294
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v6, v0

    .line 295
    .local v6, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v7, p0, Lcom/android/email/activity/MailboxList;->mListView:Landroid/widget/ListView;

    iget v8, v6, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 296
    .local v2, c:Landroid/database/Cursor;
    invoke-static {p0}, Lcom/android/email/Utility$FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/email/Utility$FolderProperties;->getDisplayName(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, folderName:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 299
    iget-object v7, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 302
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 303
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const v8, 0x7f0d0006

    invoke-virtual {v7, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 305
    iget-object v7, p0, Lcom/android/email/activity/MailboxList;->mListAdapter:Lcom/android/email/activity/MailboxList$MailboxListAdapter;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 306
    .local v5, mailboxType:I
    iget-wide v7, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v7, v8}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v1

    .line 307
    .local v1, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v3

    .line 308
    .local v3, controller:Lcom/android/email/Controller;
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 309
    if-eq v5, v9, :cond_1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 310
    :cond_1
    const v7, 0x7f070123

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    const v7, 0x7f07012c

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 312
    const v7, 0x7f07012d

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 315
    :cond_2
    const/16 v7, 0x8

    if-eq v5, v7, :cond_3

    .line 316
    const v7, 0x7f07012b

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 251
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 252
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0d0007

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 254
    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    invoke-static {p0, v2, v3}, Lcom/android/email/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Account;

    move-result-object v0

    .line 255
    .local v0, account:Lcom/android/email/provider/EmailContent$Account;
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 256
    .local v1, controller:Lcom/android/email/Controller;
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/email/provider/EmailContent$Account;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const v2, 0x7f07012e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 261
    :cond_0
    return v4
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 220
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 222
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MailboxList$LoadMailboxesTask;->cancel(Z)Z

    .line 225
    iput-object v3, p0, Lcom/android/email/activity/MailboxList;->mLoadMailboxesTask:Lcom/android/email/activity/MailboxList$LoadMailboxesTask;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_1

    .line 229
    iget-object v0, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 230
    iput-object v3, p0, Lcom/android/email/activity/MailboxList;->mLoadAccountNameTask:Landroid/os/AsyncTask;

    .line 232
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p4, p5}, Lcom/android/email/activity/MailboxList;->onOpenMailbox(J)V

    .line 236
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 287
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 268
    :sswitch_0
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/email/activity/MailboxList;->onRefresh(J)V

    move v2, v5

    .line 269
    goto :goto_0

    .line 271
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onAccounts()V

    move v2, v5

    .line 272
    goto :goto_0

    .line 274
    :sswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onCompose()V

    move v2, v5

    .line 275
    goto :goto_0

    .line 277
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MailboxList;->onEditAccount()V

    move v2, v5

    .line 278
    goto :goto_0

    .line 281
    :sswitch_4
    iget-wide v2, p0, Lcom/android/email/activity/MailboxList;->mAccountId:J

    const/16 v4, 0x44

    invoke-static {p0, v2, v3, v4}, Lcom/android/email/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 283
    .local v0, mailboxId:J
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/MailboxList;->onCreateMailbox(J)V

    move v2, v5

    .line 284
    goto :goto_0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x7f07011d -> :sswitch_2
        0x7f070128 -> :sswitch_0
        0x7f070129 -> :sswitch_1
        0x7f07012a -> :sswitch_3
        0x7f07012e -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 207
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->removeResultCallback(Lcom/android/email/Controller$Result;)V

    .line 208
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 213
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxList;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MailboxList;->mControllerCallback:Lcom/android/email/activity/MailboxList$ControllerResults;

    invoke-virtual {v0, v1}, Lcom/android/email/Controller;->addResultCallback(Lcom/android/email/Controller$Result;)V

    .line 216
    return-void
.end method
