.class Lcom/android/email/activity/MessageList$MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimerTask;,
        Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;
    }
.end annotation


# static fields
.field public static final COLUMN_ACCOUNT_KEY:I = 0x2

.field public static final COLUMN_ATTACHMENTS:I = 0x8

.field public static final COLUMN_DATE:I = 0x5

.field public static final COLUMN_DISPLAY_NAME:I = 0x3

.field public static final COLUMN_FAVORITE:I = 0x7

.field public static final COLUMN_FLAGS:I = 0xb

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_IMPORTANCE:I = 0xc

.field public static final COLUMN_MAILBOX_KEY:I = 0x1

.field public static final COLUMN_READ:I = 0x6

.field public static final COLUMN_SUBJECT:I = 0x4

.field public static final COLUMN_THREAD_NAME:I = 0xa

.field public static final COLUMN_TO_LIST:I = 0x9

.field private static final MessageViewTextSize:Ljava/lang/String; = "MessageViewTextSize"

.field private static final PREFERENCES_FILE:Ljava/lang/String; = "AndroidMail.Main"

.field private static final REFRESH_INTERVAL_MS:J = 0xfa0L


# instance fields
.field public final PROJECTION:[Ljava/lang/String;

.field private count:I

.field private itemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageList$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAttachmentIcon:Landroid/graphics/drawable/Drawable;

.field private mChecked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/text/DateFormat;

.field mDatetimeTextColorRead:I

.field mDatetimeTextColorUnread:I

.field private mDayFormat:Ljava/text/DateFormat;

.field private mFFlagCompleted:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFFlagSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

.field private mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

.field private mFavorites:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

.field private mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

.field mFromTextColorRead:I

.field mFromTextColorUnread:I

.field private mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvitationIcon:Landroid/graphics/drawable/Drawable;

.field private mLastRefreshTime:J

.field private mListViewMode:I

.field private mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

.field public mMailboxType:I

.field private mNullViewPosition:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

.field private mSelectedIconOff:Landroid/graphics/drawable/Drawable;

.field private mSelectedIconOn:Landroid/graphics/drawable/Drawable;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field mSubjectTextColorRead:I

.field mSubjectTextColorUnread:I

.field private mThreadClose:Landroid/graphics/drawable/Drawable;

.field private mThreadOpen:Landroid/graphics/drawable/Drawable;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private pos:I

.field private textSizeAddress:F

.field private textSizeDate:F

.field private textSizeSubject:F

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;Landroid/content/Context;)V
    .locals 7
    .parameter
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 6418
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    .line 6419
    invoke-direct {p0, p2, v6, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 6344
    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "mailboxKey"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v4, "accountKey"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "subject"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "timeStamp"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "flagRead"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "flagFavorite"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "flagAttachment"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "toList"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "threadName"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "flags"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "importance"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "flagStatus"

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 6379
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorUnread:I

    .line 6380
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorUnread:I

    .line 6381
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorUnread:I

    .line 6382
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorRead:I

    .line 6383
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    .line 6384
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorRead:I

    .line 6387
    new-instance v2, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;-><init>(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    .line 6389
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLastRefreshTime:J

    .line 6399
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    .line 6402
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    .line 6404
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagSet:Ljava/util/HashSet;

    .line 6405
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagCompleted:Ljava/util/HashSet;

    .line 6411
    iput-object v6, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->itemArray:Ljava/util/ArrayList;

    .line 6412
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mNullViewPosition:Ljava/util/HashSet;

    .line 6414
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->pos:I

    .line 6415
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->count:I

    .line 6416
    sget v2, Lcom/android/email/activity/MessageList;->mViewModeType:I

    iput v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    .line 6420
    iput-object p2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    .line 6421
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 6423
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6424
    .local v0, resources:Landroid/content/res/Resources;
    const v2, 0x7f0200b7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    .line 6427
    const v2, 0x7f02007a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInvitationIcon:Landroid/graphics/drawable/Drawable;

    .line 6430
    const v2, 0x7f0200bb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 6431
    const v2, 0x7f0200bc

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 6432
    const v2, 0x7f020021

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOn:Landroid/graphics/drawable/Drawable;

    .line 6433
    const v2, 0x7f020020

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOff:Landroid/graphics/drawable/Drawable;

    .line 6435
    const v2, 0x7f0200bd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 6436
    const v2, 0x7f0200b8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 6439
    const v2, 0x7f0200be

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 6440
    const v2, 0x7f0200bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 6444
    const v2, 0x7f0200ba

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadOpen:Landroid/graphics/drawable/Drawable;

    .line 6445
    const v2, 0x7f0200b9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadClose:Landroid/graphics/drawable/Drawable;

    .line 6447
    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorRead:I

    .line 6448
    const v2, 0x7f090015

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    .line 6449
    const v2, 0x7f090017

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorRead:I

    .line 6451
    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorUnread:I

    .line 6452
    const v2, 0x7f090014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorUnread:I

    .line 6453
    const v2, 0x7f090016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorUnread:I

    .line 6455
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 6464
    .local v1, theme:Landroid/content/res/Resources$Theme;
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 6465
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDayFormat:Ljava/text/DateFormat;

    .line 6466
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 6468
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    .line 6470
    const-string v2, "AndroidMail.Main"

    invoke-virtual {p2, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 6471
    sget v2, Lcom/android/email/activity/MessageList;->mViewModeType:I

    iput v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    .line 6472
    return-void
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6313
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageList$MessageListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 6313
    invoke-direct {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->refreshList()V

    return-void
.end method

.method private changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "targetText"
    .parameter "searchText"

    .prologue
    const-string v11, "FontColor_End-"

    const-string v10, "-FontColor_Start"

    .line 6612
    const/4 v2, 0x0

    .line 6613
    .local v2, matchedIndex:I
    const/4 v1, 0x0

    .line 6614
    .local v1, matchedCount:I
    const/4 v4, 0x0

    .line 6615
    .local v4, sameString:Z
    const-string v6, ""

    .line 6616
    .local v6, subStrOfTargetText:Ljava/lang/String;
    move-object v3, p1

    .line 6617
    .local v3, resultString:Ljava/lang/String;
    const/16 v7, 0x1e

    new-array v5, v7, [Ljava/lang/String;

    .line 6619
    .local v5, strBueffer:[Ljava/lang/String;
    :cond_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    .line 6621
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    if-nez v1, :cond_3

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 6623
    if-ltz v2, :cond_0

    .line 6625
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 6627
    if-nez v1, :cond_4

    .line 6629
    aput-object v6, v5, v1

    .line 6630
    add-int/lit8 v1, v1, 0x1

    .line 6650
    :cond_1
    :goto_1
    if-nez v4, :cond_0

    .line 6652
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-FontColor_Start"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "FontColor_End-"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6657
    :cond_2
    const-string v7, "-FontColor_Start"

    const-string v7, "<font color=red>"

    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6658
    const-string v7, "FontColor_End-"

    const-string v7, "</font>"

    invoke-virtual {v3, v11, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6663
    return-object v3

    .line 6621
    :cond_3
    add-int/lit8 v9, v2, 0x1

    goto :goto_0

    .line 6634
    :cond_4
    const/4 v4, 0x0

    .line 6635
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 6637
    aget-object v7, v5, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 6639
    const/4 v4, 0x1

    .line 6635
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 6643
    :cond_6
    if-nez v4, :cond_1

    .line 6645
    aput-object v6, v5, v1

    .line 6646
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private declared-synchronized refreshList()V
    .locals 2

    .prologue
    .line 6564
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-boolean v0, v0, Lcom/android/email/activity/MessageList;->mAdapterIsChanged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 6565
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6566
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->requeryList()V

    .line 6567
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageList;->mAdapterIsChanged:Z

    .line 6571
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLastRefreshTime:J

    .line 6572
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6573
    :cond_1
    monitor-exit p0

    return-void

    .line 6564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 35
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 6689
    const/16 v29, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    const-wide/16 v31, -0x1

    cmp-long v29, v29, v31

    if-nez v29, :cond_1

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 6690
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v15, v0

    .line 6691
    .local v15, itemView:Landroid/widget/TextView;
    const/16 v29, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object v0, v15

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7060
    .end local v15           #itemView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 6698
    :cond_1
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v15, v0

    .line 6699
    .local v15, itemView:Lcom/android/email/activity/MessageListItem;
    const/16 v29, 0x1

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->bindViewInit(Lcom/android/email/activity/MessageList$MessageListAdapter;Z)V

    .line 6702
    const/16 v29, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    .line 6703
    const/16 v29, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    .line 6704
    const/16 v29, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v0, v29

    move-object v2, v15

    iput-wide v0, v2, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    .line 6705
    const/16 v29, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_4

    const/16 v29, 0x1

    :goto_1
    move/from16 v0, v29

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/email/activity/MessageListItem;->mRead:Z

    .line 6708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    move-object/from16 v29, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    move/from16 v0, v29

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    .line 6710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagSet:Ljava/util/HashSet;

    move-object/from16 v29, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    move/from16 v0, v29

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/email/activity/MessageListItem;->mFFlagSet:Z

    .line 6711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagCompleted:Ljava/util/HashSet;

    move-object/from16 v29, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    move/from16 v0, v29

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/email/activity/MessageListItem;->mFFlagComplete:Z

    .line 6715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    move-object/from16 v29, v0

    move-object v0, v15

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    move/from16 v0, v29

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    .line 6718
    const v29, 0x7f070009

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 6723
    .local v5, chipView:Landroid/view/View;
    move-object v0, v15

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    move-wide/from16 v29, v0

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_5

    .line 6724
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$9100()[I

    move-result-object v29

    move-object v0, v15

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    sub-int v30, v30, v31

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$9100()[I

    move-result-object v31

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    rem-int v30, v30, v31

    aget v4, v29, v30

    .line 6728
    .local v4, chipResId:I
    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6730
    const/16 v25, 0x0

    .line 6732
    .local v25, text:Ljava/lang/String;
    const v29, 0x7f0700c8

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 6734
    .local v8, displaynameView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    move/from16 v29, v0

    const/16 v30, 0x4

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    move/from16 v29, v0

    const/16 v30, 0x5

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 6736
    :cond_2
    const/16 v29, 0x9

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 6739
    invoke-static/range {v25 .. v25}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v29

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6741
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeAddress:F

    move/from16 v30, v0

    move-object v0, v8

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6750
    :goto_3
    const v29, 0x7f07000a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 6751
    .local v24, subjectView:Landroid/widget/TextView;
    const/16 v29, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 6754
    const/16 v29, 0xc

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 6756
    .local v20, priority:I
    invoke-virtual/range {v24 .. v25}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6759
    sget v29, Lcom/android/email/activity/MessageList;->mSortType:I

    const/16 v30, 0x6

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 6760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    move-object/from16 v29, v0

    const v30, 0x7f0700b5

    invoke-virtual/range {v29 .. v30}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    .line 6763
    .local v18, mSearchText:Landroid/widget/EditText;
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .line 6764
    .local v19, nameText:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    .line 6765
    .local v23, subjectText:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    .line 6766
    .local v21, searchText:Ljava/lang/String;
    move-object/from16 v10, v19

    .line 6767
    .local v10, exchangedName:Ljava/lang/String;
    move-object/from16 v11, v23

    .line 6769
    .local v11, exchangedSubject:Ljava/lang/String;
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move/from16 v29, v0

    if-eqz v29, :cond_7

    .line 6770
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorRead:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6772
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6781
    :goto_4
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$600()I

    move-result v29

    packed-switch v29, :pswitch_data_0

    .line 6800
    :cond_3
    :goto_5
    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6801
    invoke-static {v11}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6823
    .end local v10           #exchangedName:Ljava/lang/String;
    .end local v11           #exchangedSubject:Ljava/lang/String;
    .end local v18           #mSearchText:Landroid/widget/EditText;
    .end local v19           #nameText:Ljava/lang/String;
    .end local v21           #searchText:Ljava/lang/String;
    .end local v23           #subjectText:Ljava/lang/String;
    :goto_6
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeSubject:F

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6827
    const/16 v29, 0xb

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    and-int/lit8 v29, v29, 0x4

    if-eqz v29, :cond_b

    const/16 v29, 0x1

    move/from16 v14, v29

    .line 6832
    .local v14, hasInvitation:Z
    :goto_7
    const/16 v29, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    if-eqz v29, :cond_c

    const/16 v29, 0x1

    move/from16 v13, v29

    .line 6843
    .local v13, hasAttachments:Z
    :goto_8
    const v29, 0x7f07007d

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 6844
    .local v7, dateView:Landroid/widget/TextView;
    const/16 v29, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 6845
    .local v27, timestamp:J
    new-instance v6, Ljava/util/Date;

    move-object v0, v6

    move-wide/from16 v1, v27

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 6846
    .local v6, date:Ljava/util/Date;
    invoke-static {v6}, Lcom/android/email/Utility;->isDateToday(Ljava/util/Date;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 6847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 6851
    :goto_9
    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6853
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeDate:F

    move/from16 v30, v0

    move-object v0, v7

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 6855
    const v29, 0x7f0700c1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageView;

    .line 6856
    .local v22, selectedView:Landroid/widget/ImageView;
    const v29, 0x7f0700c5

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 6857
    .local v12, favoriteView:Landroid/widget/ImageView;
    const v29, 0x7f0700c7

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 6858
    .local v26, threadupdownView:Landroid/widget/ImageView;
    const v29, 0x7f0700c2

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    .line 6859
    .local v17, mPriorityView:Landroid/widget/ImageView;
    const v29, 0x7f0700c4

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 6860
    .local v16, mFollowUpFlagView:Landroid/widget/ImageView;
    const v29, 0x7f0700c3

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 6865
    .local v3, attachmentView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    move/from16 v29, v0

    sget v30, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_19

    .line 6867
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move/from16 v29, v0

    if-eqz v29, :cond_e

    .line 6868
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6875
    :goto_a
    move-object v0, v15

    iget-wide v0, v0, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-wide/from16 v29, v0

    const-wide/16 v31, -0x2

    cmp-long v29, v29, v31

    if-nez v29, :cond_10

    .line 6877
    const-string v29, "MessageList >>"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "bindview() : itemView.mThreadName = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v15

    iget-object v0, v0, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6878
    const/16 v29, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object v1, v15

    iput-object v0, v1, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    .line 6880
    const/16 v29, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6881
    const/16 v29, 0x8

    move-object v0, v12

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6882
    const/16 v29, 0x8

    move-object v0, v3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6883
    const/16 v29, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6885
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6886
    const/16 v29, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6888
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6100()Ljava/util/HashSet;

    move-result-object v29

    const/16 v30, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadOpen:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    :goto_b
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6891
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0200c3

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 7057
    .end local v3           #attachmentView:Landroid/widget/ImageView;
    .end local v4           #chipResId:I
    .end local v5           #chipView:Landroid/view/View;
    .end local v6           #date:Ljava/util/Date;
    .end local v7           #dateView:Landroid/widget/TextView;
    .end local v8           #displaynameView:Landroid/widget/TextView;
    .end local v12           #favoriteView:Landroid/widget/ImageView;
    .end local v13           #hasAttachments:Z
    .end local v14           #hasInvitation:Z
    .end local v15           #itemView:Lcom/android/email/activity/MessageListItem;
    .end local v16           #mFollowUpFlagView:Landroid/widget/ImageView;
    .end local v17           #mPriorityView:Landroid/widget/ImageView;
    .end local v20           #priority:I
    .end local v22           #selectedView:Landroid/widget/ImageView;
    .end local v24           #subjectView:Landroid/widget/TextView;
    .end local v25           #text:Ljava/lang/String;
    .end local v26           #threadupdownView:Landroid/widget/ImageView;
    .end local v27           #timestamp:J
    :catch_0
    move-exception v29

    move-object/from16 v9, v29

    .line 7058
    .local v9, e:Ljava/lang/Exception;
    goto/16 :goto_0

    .line 6705
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v15       #itemView:Lcom/android/email/activity/MessageListItem;
    :cond_4
    const/16 v29, 0x0

    goto/16 :goto_1

    .line 6726
    .restart local v5       #chipView:Landroid/view/View;
    :cond_5
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$9100()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v4, v29, v30

    .restart local v4       #chipResId:I
    goto/16 :goto_2

    .line 6744
    .restart local v8       #displaynameView:Landroid/widget/TextView;
    .restart local v25       #text:Ljava/lang/String;
    :cond_6
    const/16 v29, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 6745
    move-object v0, v8

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6747
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeAddress:F

    move/from16 v30, v0

    move-object v0, v8

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3

    .line 6775
    .restart local v10       #exchangedName:Ljava/lang/String;
    .restart local v11       #exchangedSubject:Ljava/lang/String;
    .restart local v18       #mSearchText:Landroid/widget/EditText;
    .restart local v19       #nameText:Ljava/lang/String;
    .restart local v20       #priority:I
    .restart local v21       #searchText:Ljava/lang/String;
    .restart local v23       #subjectText:Ljava/lang/String;
    .restart local v24       #subjectView:Landroid/widget/TextView;
    :cond_7
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorUnread:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6777
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorUnread:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_4

    .line 6785
    :pswitch_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_3

    .line 6786
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_5

    .line 6789
    :pswitch_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_3

    .line 6790
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 6793
    :pswitch_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_8

    .line 6794
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6795
    :cond_8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_3

    .line 6796
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 6806
    .end local v10           #exchangedName:Ljava/lang/String;
    .end local v11           #exchangedSubject:Ljava/lang/String;
    .end local v18           #mSearchText:Landroid/widget/EditText;
    .end local v19           #nameText:Ljava/lang/String;
    .end local v21           #searchText:Ljava/lang/String;
    .end local v23           #subjectText:Ljava/lang/String;
    :cond_9
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move/from16 v29, v0

    if-eqz v29, :cond_a

    .line 6807
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorRead:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6809
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_6

    .line 6813
    :cond_a
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorUnread:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6815
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorUnread:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_6

    .line 6827
    :cond_b
    const/16 v29, 0x0

    move/from16 v14, v29

    goto/16 :goto_7

    .line 6832
    .restart local v14       #hasInvitation:Z
    :cond_c
    const/16 v29, 0x0

    move/from16 v13, v29

    goto/16 :goto_8

    .line 6849
    .restart local v6       #date:Ljava/util/Date;
    .restart local v7       #dateView:Landroid/widget/TextView;
    .restart local v13       #hasAttachments:Z
    .restart local v27       #timestamp:J
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDateFormat:Ljava/text/DateFormat;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_9

    .line 6871
    .restart local v3       #attachmentView:Landroid/widget/ImageView;
    .restart local v12       #favoriteView:Landroid/widget/ImageView;
    .restart local v16       #mFollowUpFlagView:Landroid/widget/ImageView;
    .restart local v17       #mPriorityView:Landroid/widget/ImageView;
    .restart local v22       #selectedView:Landroid/widget/ImageView;
    .restart local v26       #threadupdownView:Landroid/widget/ImageView;
    :cond_e
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorUnread:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_a

    .line 6888
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadClose:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    goto/16 :goto_b

    .line 6895
    :cond_10
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6500()[S

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->pos:I

    move/from16 v30, v0

    aget-short v29, v29, v30

    const/16 v30, 0x20

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 6896
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0200c4

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6904
    :goto_c
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6905
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    :goto_d
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6908
    invoke-virtual {v15}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v29

    if-nez v29, :cond_14

    .line 6910
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6911
    const/16 v29, 0x0

    move-object v0, v12

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6912
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    move/from16 v29, v0

    if-eqz v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    :goto_e
    move-object v0, v12

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6936
    :goto_f
    if-eqz v14, :cond_17

    .line 6937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInvitationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6938
    const/16 v29, 0x0

    move-object v0, v3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6951
    :goto_10
    const/16 v29, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6953
    invoke-virtual {v15}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 6954
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6955
    packed-switch v20, :pswitch_data_1

    .line 6966
    const/16 v29, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 6900
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0200c3

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_c

    .line 6905
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOff:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    goto/16 :goto_d

    .line 6912
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    goto :goto_e

    .line 6916
    :cond_14
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mFFlagSet:Z

    move/from16 v29, v0

    if-eqz v29, :cond_15

    .line 6919
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6932
    :goto_11
    const/16 v29, 0x8

    move-object v0, v12

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 6922
    :cond_15
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mFFlagComplete:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    .line 6924
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_11

    .line 6928
    :cond_16
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_11

    .line 6941
    :cond_17
    if-eqz v13, :cond_18

    .line 6942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6943
    const/16 v29, 0x0

    move-object v0, v3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10

    .line 6946
    :cond_18
    const/16 v29, 0x8

    move-object v0, v3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_10

    .line 6957
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 6960
    :pswitch_4
    const/16 v29, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 6963
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 6975
    :cond_19
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mRead:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1a

    .line 6976
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorRead:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 6983
    :goto_12
    const/16 v29, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6984
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    :goto_13
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6988
    invoke-virtual {v15}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v29

    if-nez v29, :cond_1d

    .line 6989
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6991
    const/16 v29, 0x0

    move-object v0, v12

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6992
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    :goto_14
    move-object v0, v12

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7017
    :goto_15
    if-eqz v14, :cond_20

    .line 7018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInvitationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7019
    const/16 v29, 0x0

    move-object v0, v3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7033
    :goto_16
    const/16 v29, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7035
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0200c3

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7038
    invoke-virtual {v15}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v29

    if-eqz v29, :cond_0

    .line 7039
    const/16 v29, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7040
    packed-switch v20, :pswitch_data_2

    .line 7051
    const/16 v29, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 6979
    :cond_1a
    new-instance v29, Landroid/content/res/ColorStateList;

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const v34, 0x10100a7

    aput v34, v32, v33

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v32, v0

    aput-object v32, v30, v31

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/high16 v33, -0x100

    aput v33, v31, v32

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorUnread:I

    move/from16 v33, v0

    aput v33, v31, v32

    invoke-direct/range {v29 .. v31}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_12

    .line 6984
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOff:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    goto/16 :goto_13

    .line 6992
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    goto/16 :goto_14

    .line 6998
    :cond_1d
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mFFlagSet:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1e

    .line 7001
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7013
    :goto_17
    const/16 v29, 0x8

    move-object v0, v12

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15

    .line 7004
    :cond_1e
    move-object v0, v15

    iget-boolean v0, v0, Lcom/android/email/activity/MessageListItem;->mFFlagComplete:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1f

    .line 7006
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 7010
    :cond_1f
    const/16 v29, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_17

    .line 7022
    :cond_20
    if-eqz v13, :cond_21

    .line 7023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object v0, v3

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7024
    const/16 v29, 0x0

    move-object v0, v3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_16

    .line 7027
    :cond_21
    const/16 v29, 0x8

    move-object v0, v3

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_16

    .line 7042
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 7045
    :pswitch_7
    const/16 v29, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 7048
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6781
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 6955
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 7040
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 6500
    sget v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    iput v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    .line 6501
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView(): mListViewMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6502
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 6503
    return-void
.end method

.method public doRequery()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 6510
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6513
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 6515
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 6516
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$202(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 6518
    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$4700(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    invoke-static {v8, v0}, Lcom/android/email/activity/MessageList;->access$202(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 6519
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6522
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6528
    :cond_1
    :goto_0
    return-void

    .line 6523
    :catch_0
    move-exception v7

    .line 6524
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MessageList >>"

    const-string v1, "notify data set changed exception"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6525
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getFavorites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6604
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    return-object v0
.end method

.method public getSelectedSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6599
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTextSizeValue()I
    .locals 3

    .prologue
    .line 7317
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MessageViewTextSize"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/16 v4, -0x1

    .line 7065
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7066
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor failed move to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7069
    :cond_0
    iput p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->pos:I

    .line 7071
    const/4 v1, 0x0

    .line 7074
    .local v1, v:Landroid/view/View;
    :try_start_0
    iget v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    sget v3, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    if-ne v2, v3, :cond_2

    .line 7075
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 7125
    :goto_0
    return-object v2

    .line 7079
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 7082
    :cond_2
    iget v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    sget v3, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v2, v3, :cond_7

    .line 7083
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 7084
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 7087
    :cond_3
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6500()[S

    move-result-object v2

    aget-short v2, v2, p1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 7088
    if-eqz p2, :cond_4

    instance-of v2, p2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 7089
    move-object v1, p2

    :goto_1
    move-object v2, v1

    .line 7095
    goto :goto_0

    .line 7092
    :cond_4
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    .line 7098
    :cond_5
    if-eqz p2, :cond_6

    instance-of v2, p2, Lcom/android/email/activity/MessageListItem;

    if-eqz v2, :cond_6

    .line 7099
    move-object v1, p2

    .line 7117
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object v2, v1

    .line 7125
    goto :goto_0

    .line 7102
    :cond_6
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 7108
    :cond_7
    if-eqz p2, :cond_8

    instance-of v2, p2, Lcom/android/email/activity/MessageListItem;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    .line 7110
    move-object v1, p2

    goto :goto_2

    .line 7113
    :cond_8
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2, v3, p3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    .line 7119
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 7120
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: MessageListAdapter.getView() \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7122
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 7322
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 7323
    const/4 v0, 0x0

    .line 7325
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 7132
    iget v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-ne v0, v1, :cond_0

    .line 7133
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 7134
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030020

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 7137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030029

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected declared-synchronized onContentChanged()V
    .locals 7

    .prologue
    .line 6481
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 6482
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLastRefreshTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v1, v3, v5

    .line 6486
    .local v1, sinceRefresh:J
    :try_start_1
    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    if-eqz v3, :cond_0

    .line 6487
    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    const-wide/16 v4, 0xfa0

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->schedule(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6495
    .end local v1           #sinceRefresh:J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 6490
    .restart local v1       #sinceRefresh:J
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 6491
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In onContentChanged , IllegalStateException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6481
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #sinceRefresh:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public removeMessage(Ljava/lang/Long;)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 7162
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7163
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    .line 7164
    return-void

    .line 7163
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRealArray(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MessageList$ListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6593
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageList$ListItem;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->itemArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 6594
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->itemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6595
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->itemArray:Ljava/util/ArrayList;

    .line 6596
    return-void
.end method

.method public setTextSizeValue(I)V
    .locals 2
    .parameter "textsize"

    .prologue
    .line 7313
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MessageViewTextSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 7314
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 6578
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    if-eqz v0, :cond_0

    .line 6579
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->clear()V

    .line 6580
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->cancel()V

    .line 6582
    :cond_0
    return-void
.end method

.method public syncFavorites()V
    .locals 5

    .prologue
    .line 7219
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 7221
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7242
    :cond_0
    :goto_0
    return-void

    .line 7228
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7229
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 7230
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7231
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 7232
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7234
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7236
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 7237
    .local v1, ise:Ljava/lang/IllegalStateException;
    const-string v2, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7238
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public syncFollowupFlag()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 7248
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3400(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/provider/EmailContent$FollowupFlag;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status!=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;->FOLLOWUP_STATUS_CLEARED:Lcom/android/email/provider/EmailContent$FollowupFlag$FollowupFlagStatus;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7251
    .local v6, ff:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7279
    :cond_0
    :goto_0
    return-void

    .line 7255
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7256
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 7257
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagCompleted:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 7258
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 7259
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 7260
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagSet:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7266
    :cond_2
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7268
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 7269
    .local v7, ise:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalStateException >>> syncFavorites"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7270
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7274
    if-eqz v6, :cond_0

    .line 7275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 7263
    .end local v7           #ise:Ljava/lang/IllegalStateException;
    :cond_3
    const/4 v0, 0x6

    :try_start_2
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 7264
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2400(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagCompleted:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 7274
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 7275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 7274
    :cond_5
    if-eqz v6, :cond_0

    .line 7275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 7
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    const/4 v6, 0x0

    .line 7175
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$9200(Lcom/android/email/activity/MessageList;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7177
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "11111 MessageList.java >>>>> updateFavorite()  >>>>> 5598"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 7178
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageList;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080188

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7215
    :cond_0
    :goto_0
    return-void

    .line 7187
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v3, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3, v4, p2}, Lcom/android/email/activity/MessageList;->access$3300(Lcom/android/email/activity/MessageList;JZ)V

    .line 7189
    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 7190
    .local v1, id:Ljava/lang/Long;
    if-eqz p2, :cond_3

    .line 7191
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7203
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7211
    :goto_2
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$8700(Lcom/android/email/activity/MessageList;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7212
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$8800(Lcom/android/email/activity/MessageList;)V

    goto :goto_0

    .line 7193
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7195
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$300(Lcom/android/email/activity/MessageList;)J

    move-result-wide v2

    const-wide/16 v4, -0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 7197
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 7198
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_3

    .line 7204
    :catch_0
    move-exception v0

    .line 7205
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MessageList >>"

    const-string v3, "notify data set changed exception"

    invoke-static {v2, v3}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public updateSelected(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 4
    .parameter "itemView"
    .parameter "newSelected"

    .prologue
    .line 7147
    const v2, 0x7f0700c1

    invoke-virtual {p1, v2}, Lcom/android/email/activity/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 7148
    .local v1, selectedView:Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOn:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7151
    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 7152
    .local v0, id:Ljava/lang/Long;
    if-eqz p2, :cond_1

    .line 7153
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7158
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-static {v2, v3}, Lcom/android/email/activity/MessageList;->access$2600(Lcom/android/email/activity/MessageList;Z)V

    .line 7159
    return-void

    .line 7148
    .end local v0           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 7155
    .restart local v0       #id:Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7158
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public updateTextSize(I)V
    .locals 9
    .parameter "textsize"

    .prologue
    const/high16 v8, 0x41c8

    const/high16 v7, 0x41b8

    const/high16 v6, 0x41a8

    .line 7286
    const/4 v2, 0x0

    .line 7287
    .local v2, TEXT_SIZE_SMALL:I
    const/4 v1, 0x1

    .line 7288
    .local v1, TEXT_SIZE_MEDIUM:I
    const/4 v0, 0x2

    .line 7290
    .local v0, TEXT_SIZE_LARGE:I
    const-string v3, "MessageList >>"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTextSize OK TextSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 7292
    packed-switch p1, :pswitch_data_0

    .line 7310
    :goto_0
    return-void

    .line 7294
    :pswitch_0
    const/high16 v3, 0x41e0

    iput v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeSubject:F

    .line 7295
    iput v6, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeAddress:F

    .line 7296
    iput v6, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeDate:F

    goto :goto_0

    .line 7299
    :pswitch_1
    const/high16 v3, 0x41f0

    iput v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeSubject:F

    .line 7300
    iput v7, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeAddress:F

    .line 7301
    iput v7, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeDate:F

    goto :goto_0

    .line 7304
    :pswitch_2
    const/high16 v3, 0x4204

    iput v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeSubject:F

    .line 7305
    iput v8, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeAddress:F

    .line 7306
    iput v8, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->textSizeDate:F

    goto :goto_0

    .line 7292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateThreadListVisibility(IZ)V
    .locals 5
    .parameter "threadPos"
    .parameter "isShow"

    .prologue
    const/4 v4, 0x1

    .line 6668
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6500()[S

    move-result-object v1

    array-length v0, v1

    .line 6670
    .local v0, size:I
    const-string v1, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mThreadListVisibility.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 6672
    sub-int v1, v0, v4

    if-ge p1, v1, :cond_2

    .line 6673
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6500()[S

    move-result-object v1

    if-eqz p2, :cond_3

    const/4 v2, 0x2

    :goto_0
    aput-short v2, v1, p1

    .line 6675
    :cond_0
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6500()[S

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget-short v1, v1, p1

    and-int/lit16 v1, v1, 0xf0

    if-lez v1, :cond_1

    .line 6676
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6500()[S

    move-result-object v1

    if-eqz p2, :cond_4

    const/16 v2, 0x20

    :goto_1
    aput-short v2, v1, p1

    .line 6678
    if-le p1, v0, :cond_0

    .line 6682
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V

    .line 6684
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 6673
    goto :goto_0

    .line 6676
    :cond_4
    const/16 v2, 0x10

    goto :goto_1
.end method
