.class public Lcom/android/exchange/provider/EmailSearchAdapter;
.super Lcom/android/email/EmailAddressAdapter;
.source "EmailSearchAdapter.java"


# static fields
.field private static final DEBUG_EMAIL_SEARCH_LOG:Z = true


# instance fields
.field private mAccount:Lcom/android/email/provider/EmailContent$Account;

.field private mAccountEmailDomain:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mFoldIdStr:Ljava/lang/String;

.field private mFreeText:Ljava/lang/String;

.field private mGreaterThanDateStr:Ljava/lang/String;

.field private mIdStr:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLessThanDateStr:Ljava/lang/String;

.field private mOptionsDeepTraversalStr:Ljava/lang/String;

.field private mSeparatorDisplayCount:I

.field private mSeparatorTotalCount:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mActivity:Landroid/app/Activity;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mOptionsDeepTraversalStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mFoldIdStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mIdStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mLessThanDateStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mGreaterThanDateStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/provider/EmailSearchAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mFreeText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exchange/provider/EmailSearchAdapter;)Lcom/android/email/provider/EmailContent$Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exchange/provider/EmailSearchAdapter;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public search()I
    .locals 7

    .prologue
    .line 101
    const-wide/16 v1, -0x1

    .line 103
    .local v1, foldId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mFoldIdStr:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 107
    iget-object v3, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/email/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailboxKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 109
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/exchange/provider/EmailSearchAdapter$1;

    invoke-direct {v4, p0}, Lcom/android/exchange/provider/EmailSearchAdapter$1;-><init>(Lcom/android/exchange/provider/EmailSearchAdapter;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 141
    const/4 v3, 0x0

    return v3

    .line 104
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 105
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal value in URI"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setAccount(Lcom/android/email/provider/EmailContent$Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mAccount:Lcom/android/email/provider/EmailContent$Account;

    .line 71
    return-void
.end method

.method public setFoldIdStr(Ljava/lang/String;)V
    .locals 0
    .parameter "numberStr"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mFoldIdStr:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setFreeText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mFreeText:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setGreaterThanDateStr(Ljava/lang/String;)V
    .locals 0
    .parameter "dateStr"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mGreaterThanDateStr:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setIdStr(Ljava/lang/String;)V
    .locals 0
    .parameter "numberStr"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mIdStr:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setLessThanDateStr(Ljava/lang/String;)V
    .locals 0
    .parameter "dateStr"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mLessThanDateStr:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setoptionsDeepTraversalStr(Ljava/lang/String;)V
    .locals 0
    .parameter "boolStr"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/exchange/provider/EmailSearchAdapter;->mOptionsDeepTraversalStr:Ljava/lang/String;

    .line 96
    return-void
.end method
