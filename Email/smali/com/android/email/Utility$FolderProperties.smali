.class public Lcom/android/email/Utility$FolderProperties;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderProperties"
.end annotation


# static fields
.field private static sInstance:Lcom/android/email/Utility$FolderProperties;


# instance fields
.field private mDefaultMailboxDrawable:Landroid/graphics/drawable/Drawable;

.field private mSpecialMailbox:[Ljava/lang/String;

.field private mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

.field private mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

.field private mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    .line 339
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 339
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mDefaultMailboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 350
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/Utility$FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/email/Utility$FolderProperties;
    .locals 1
    .parameter "context"

    .prologue
    .line 364
    new-instance v0, Lcom/android/email/Utility$FolderProperties;

    invoke-direct {v0, p0}, Lcom/android/email/Utility$FolderProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/Utility$FolderProperties;->sInstance:Lcom/android/email/Utility$FolderProperties;

    .line 365
    sget-object v0, Lcom/android/email/Utility$FolderProperties;->sInstance:Lcom/android/email/Utility$FolderProperties;

    return-object v0
.end method

.method public static setInitInstance()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/Utility$FolderProperties;->sInstance:Lcom/android/email/Utility$FolderProperties;

    .line 370
    return-void
.end method


# virtual methods
.method public getDisplayName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailbox:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 381
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIconIds(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "type"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 393
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mDefaultMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getSummaryMailboxIconIds(J)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "mailboxKey"

    .prologue
    .line 397
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mSummaryCombinedInboxDrawable:Landroid/graphics/drawable/Drawable;

    .line 406
    :goto_0
    return-object v0

    .line 399
    :cond_0
    const-wide/16 v0, -0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mSummaryStarredMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 401
    :cond_1
    const-wide/16 v0, -0x5

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 402
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_2
    const-wide/16 v0, -0x6

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 404
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mSpecialMailboxDrawable:Landroid/content/res/TypedArray;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 406
    :cond_3
    iget-object v0, p0, Lcom/android/email/Utility$FolderProperties;->mDefaultMailboxDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
