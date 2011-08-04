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
        Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;,
        Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final MESSAGE_LIST_ITEM_NORMAL:I

.field private final MESSAGE_LIST_ITEM_NULL:I

.field private final MESSAGE_LIST_ITEM_SEPERATOR:I

.field public final PROJECTION:[Ljava/lang/String;

.field public final PROJECTION_VM:[Ljava/lang/String;

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

.field private listItemSize:I

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

.field private mEncryptedIcon:Landroid/graphics/drawable/Drawable;

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

.field private mSignedIcon:Landroid/graphics/drawable/Drawable;

.field private mSmsChecked:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsIcon:Landroid/graphics/drawable/Drawable;

.field mSubjectTextColorRead:I

.field mSubjectTextColorUnread:I

.field private mThreadClose:Landroid/graphics/drawable/Drawable;

.field private mThreadOpen:Landroid/graphics/drawable/Drawable;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mVoiceMailIcon:Landroid/graphics/drawable/Drawable;

.field private pos:I

.field final synthetic this$0:Lcom/android/email/activity/MessageList;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageList;Landroid/content/Context;)V
    .locals 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8176
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    .line 8177
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1, v5}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 8056
    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "mailboxKey"

    aput-object v2, v1, v5

    const-string v2, "accountKey"

    aput-object v2, v1, v6

    const-string v2, "displayName"

    aput-object v2, v1, v7

    const-string v2, "subject"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timeStamp"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "flagRead"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "flagFavorite"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "flagAttachment"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "toList"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "threadName"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "flags"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "importance"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "flagStatus"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "smimeFlags"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "lastVerb"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "messageType"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 8074
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "fileName"

    aput-object v2, v1, v5

    const-string v2, "mimeType"

    aput-object v2, v1, v6

    const-string v2, "size"

    aput-object v2, v1, v7

    const-string v2, "contentId"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "contentUri"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "messageKey"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "location"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "encoding"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "content"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "flags"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "content_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "vmAttOrder"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "vmAttDuration"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->PROJECTION_VM:[Ljava/lang/String;

    .line 8116
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorUnread:I

    .line 8117
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorUnread:I

    .line 8118
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorUnread:I

    .line 8119
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorRead:I

    .line 8120
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    .line 8121
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorRead:I

    .line 8124
    new-instance v1, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;-><init>(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    .line 8126
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLastRefreshTime:J

    .line 8136
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    .line 8137
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSmsChecked:Ljava/util/HashSet;

    .line 8139
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    .line 8141
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagSet:Ljava/util/HashSet;

    .line 8142
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagCompleted:Ljava/util/HashSet;

    .line 8148
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->itemArray:Ljava/util/ArrayList;

    .line 8149
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mNullViewPosition:Ljava/util/HashSet;

    .line 8151
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->pos:I

    .line 8152
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->count:I

    .line 8153
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget v1, v1, Lcom/android/email/activity/MessageList;->mViewModeType:I

    iput v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    .line 8155
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->MESSAGE_LIST_ITEM_NULL:I

    .line 8156
    iput v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->MESSAGE_LIST_ITEM_SEPERATOR:I

    .line 8157
    iput v6, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->MESSAGE_LIST_ITEM_NORMAL:I

    .line 8178
    iput-object p2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    .line 8179
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 8181
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8182
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0200c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    .line 8185
    const v1, 0x7f020076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInvitationIcon:Landroid/graphics/drawable/Drawable;

    .line 8188
    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    .line 8189
    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    .line 8190
    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOn:Landroid/graphics/drawable/Drawable;

    .line 8191
    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOff:Landroid/graphics/drawable/Drawable;

    .line 8193
    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    .line 8194
    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    .line 8197
    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 8198
    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    .line 8201
    const v1, 0x7f02007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSignedIcon:Landroid/graphics/drawable/Drawable;

    .line 8202
    const v1, 0x7f020079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mEncryptedIcon:Landroid/graphics/drawable/Drawable;

    .line 8207
    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadOpen:Landroid/graphics/drawable/Drawable;

    .line 8208
    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadClose:Landroid/graphics/drawable/Drawable;

    .line 8210
    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorRead:I

    .line 8211
    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    .line 8212
    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorRead:I

    .line 8214
    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorUnread:I

    .line 8215
    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorUnread:I

    .line 8216
    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorUnread:I

    .line 8218
    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSmsIcon:Landroid/graphics/drawable/Drawable;

    .line 8219
    const v1, 0x7f020066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mVoiceMailIcon:Landroid/graphics/drawable/Drawable;

    .line 8221
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 8222
    invoke-static {p2}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDayFormat:Ljava/text/DateFormat;

    .line 8223
    invoke-static {p2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 8225
    iput v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    .line 8227
    const-string v1, "AndroidMail.Main"

    invoke-virtual {p2, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 8228
    iget v1, p1, Lcom/android/email/activity/MessageList;->mViewModeType:I

    iput v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    .line 8229
    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8010
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageList$MessageListAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8010
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSmsChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageList$MessageListAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8010
    invoke-direct {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->refreshList()V

    return-void
.end method

.method private changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "targetText"
    .parameter "searchText"

    .prologue
    const-string v12, "FontColor_End-"

    const-string v11, "-FontColor_Start"

    .line 8368
    const/4 v2, 0x0

    .line 8369
    .local v2, matchedIndex:I
    const/4 v1, 0x0

    .line 8370
    .local v1, matchedCount:I
    const/4 v4, 0x0

    .line 8371
    .local v4, sameString:Z
    const-string v6, ""

    .line 8372
    .local v6, subStrOfTargetText:Ljava/lang/String;
    const-string v7, ""

    .line 8373
    .local v7, subStrOfTargetTextTemp:Ljava/lang/String;
    move-object v3, p1

    .line 8374
    .local v3, resultString:Ljava/lang/String;
    const/16 v8, 0x1e

    new-array v5, v8, [Ljava/lang/String;

    .line 8376
    .local v5, strBueffer:[Ljava/lang/String;
    :cond_0
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 8378
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    if-nez v1, :cond_3

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 8380
    if-ltz v2, :cond_0

    .line 8382
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 8384
    if-nez v1, :cond_4

    .line 8386
    aput-object v6, v5, v1

    .line 8387
    add-int/lit8 v1, v1, 0x1

    .line 8407
    :cond_1
    :goto_1
    if-nez v4, :cond_0

    .line 8409
    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageList$MessageListAdapter;->escapeCharacterToSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-FontColor_Start"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "FontColor_End-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8416
    :cond_2
    const-string v8, "-FontColor_Start"

    const-string v8, "<font color=#00A8FF>"

    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8417
    const-string v8, "FontColor_End-"

    const-string v8, "</font>"

    invoke-virtual {v3, v12, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8422
    return-object v3

    .line 8378
    :cond_3
    add-int/lit8 v10, v2, 0x1

    goto :goto_0

    .line 8391
    :cond_4
    const/4 v4, 0x0

    .line 8392
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v1, :cond_6

    .line 8394
    aget-object v8, v5, v0

    invoke-virtual {v8, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 8396
    const/4 v4, 0x1

    .line 8392
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 8400
    :cond_6
    if-nez v4, :cond_1

    .line 8402
    aput-object v6, v5, v1

    .line 8403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isVoiceMail(J)Z
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "inside finally"

    .line 9428
    .line 9431
    sget-object v1, Lcom/android/email/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    .line 9432
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9434
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v5, "vmAttOrder"

    aput-object v5, v2, v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 9437
    if-eqz v0, :cond_2

    move v1, v6

    .line 9439
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9440
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v6

    .line 9441
    goto :goto_0

    :cond_0
    move v1, v7

    .line 9449
    :cond_1
    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "inside finally"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9450
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9452
    return v1

    .line 9449
    :catchall_0
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "inside finally"

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9450
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9449
    throw v1

    :cond_2
    move v1, v6

    goto :goto_1
.end method

.method private declared-synchronized refreshList()V
    .locals 2

    .prologue
    .line 8320
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-boolean v0, v0, Lcom/android/email/activity/MessageList;->mAdapterIsChanged:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 8321
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8322
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$100(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListHandler;->requeryList()V

    .line 8323
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageList;->mAdapterIsChanged:Z

    .line 8327
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLastRefreshTime:J

    .line 8328
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8329
    :cond_1
    monitor-exit p0

    return-void

    .line 8320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8536
    if-nez p1, :cond_0

    .line 8538
    const-string v3, "MessageList >>"

    const-string v4, "bindview() : view is null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 9132
    :goto_0
    return-void

    .line 8541
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    .line 8542
    if-nez v3, :cond_1

    .line 8544
    const-string v3, "MessageList >>"

    const-string v4, "bindview() : viewHolder is null"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8547
    :cond_1
    iget v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    if-nez v4, :cond_2

    .line 8549
    const-string v3, "MessageList >>"

    const-string v4, "bindview() : viewHolder.itemType is MESSAGE_LIST_ITEM_NULL"

    invoke-static {v3, v4}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8553
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    iget v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 8554
    check-cast p1, Landroid/widget/TextView;

    .line 8555
    const/4 v3, 0x3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8562
    :cond_3
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/email/activity/MessageListItem;

    move-object v4, v0

    .line 8563
    const/4 v5, 0x1

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageListItem;->bindViewInit(Lcom/android/email/activity/MessageList$MessageListAdapter;Z)V

    .line 8566
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    .line 8567
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    .line 8568
    const/4 v5, 0x2

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    .line 8569
    const/4 v5, 0x6

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    .line 8572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    move-object v5, v0

    iget-wide v6, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    .line 8574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagSet:Ljava/util/HashSet;

    move-object v5, v0

    iget-wide v6, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/email/activity/MessageListItem;->mFFlagSet:Z

    .line 8575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagCompleted:Ljava/util/HashSet;

    move-object v5, v0

    iget-wide v6, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/email/activity/MessageListItem;->mFFlagComplete:Z

    .line 8577
    const/16 v5, 0xf

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/email/activity/MessageListItem;->mLastVerb:I

    .line 8579
    const/16 v5, 0x11

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/activity/MessageListItem;->mConvId:Ljava/lang/String;

    .line 8580
    const/16 v5, 0x12

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/email/activity/MessageListItem;->mConvThreadId:I

    .line 8581
    const/16 v5, 0x13

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/email/activity/MessageListItem;->mFlagReadConv:I

    .line 8582
    const/16 v5, 0x14

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/email/activity/MessageListItem;->mFlagSetFFConv:I

    .line 8583
    const/16 v5, 0x15

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/email/activity/MessageListItem;->mFlagComFFConv:I

    .line 8584
    const/16 v5, 0xf

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/android/email/activity/MessageListItem;->mLastVerbConv:I

    .line 8586
    const/16 v5, 0x10

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    const/16 v6, 0x100

    if-ne v5, v6, :cond_c

    const/4 v5, 0x1

    :goto_2
    iput-boolean v5, v4, Lcom/android/email/activity/MessageListItem;->mSms:Z

    .line 8590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    move-object v5, v0

    iget-wide v6, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    .line 8595
    iget-wide v5, v4, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    long-to-int v5, v5

    if-lez v5, :cond_d

    .line 8596
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$4500()[I

    move-result-object v5

    iget-wide v6, v4, Lcom/android/email/activity/MessageListItem;->mAccountId:J

    long-to-int v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$4500()[I

    move-result-object v7

    array-length v7, v7

    rem-int/2addr v6, v7

    aget v5, v5, v6

    .line 8600
    :goto_3
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->chipView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 8605
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    move v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mMailboxType:I

    move v5, v0

    const/4 v6, 0x5

    if-ne v5, v6, :cond_e

    .line 8607
    :cond_4
    const/16 v5, 0x9

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8610
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    invoke-static {v5}, Lcom/android/email/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/email/mail/Address;

    move-result-object v5

    invoke-static {v5}, Lcom/android/email/mail/Address;->toFriendly([Lcom/android/email/mail/Address;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8617
    :goto_4
    const/4 v5, 0x4

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 8620
    const/16 v5, 0xc

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 8622
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8625
    sget v5, Lcom/android/email/activity/MessageList;->mSortType:I

    const/4 v8, 0x6

    if-ne v5, v8, :cond_11

    .line 8626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    const v8, 0x7f0700ef

    invoke-virtual {v5, v8}, Lcom/android/email/activity/MessageList;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 8629
    iget-object v8, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 8630
    iget-object v9, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 8631
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8635
    iget-boolean v10, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v10, :cond_f

    .line 8636
    iget-object v10, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    new-instance v11, Landroid/content/res/ColorStateList;

    const/4 v12, 0x3

    new-array v12, v12, [[I

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a1

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    new-array v14, v14, [I

    aput-object v14, v12, v13

    const/4 v13, 0x3

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, -0x1

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, -0x1

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorRead:I

    move v15, v0

    aput v15, v13, v14

    invoke-direct {v11, v12, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8638
    iget-object v10, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    new-instance v11, Landroid/content/res/ColorStateList;

    const/4 v12, 0x3

    new-array v12, v12, [[I

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a1

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    new-array v14, v14, [I

    aput-object v14, v12, v13

    const/4 v13, 0x3

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, -0x1

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, -0x1

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    move v15, v0

    aput v15, v13, v14

    invoke-direct {v11, v12, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8647
    :goto_5
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$800()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    :cond_5
    move-object v5, v9

    .line 8666
    :goto_6
    iget-object v9, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8667
    iget-object v8, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8688
    :goto_7
    const/16 v5, 0xb

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    .line 8693
    :goto_8
    const/16 v8, 0x8

    move-object/from16 v0, p3

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    .line 8696
    :goto_9
    const/16 v9, 0xe

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 8697
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_6

    .line 8698
    :cond_6
    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_7

    .line 8700
    :cond_7
    const/16 v9, 0x10

    move-object/from16 v0, p3

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    and-int/lit16 v9, v9, 0x100

    const/16 v10, 0x100

    if-ne v9, v10, :cond_15

    const/4 v9, 0x1

    .line 8701
    :goto_a
    if-eqz v9, :cond_9

    iget-wide v10, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_9

    .line 8703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    move-object v10, v0

    iget-wide v11, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v10, v11, v12}, Lcom/android/email/provider/EmailContent$Body;->restoreBodyWithId(Landroid/content/Context;J)Lcom/android/email/provider/EmailContent$Body;

    move-result-object v10

    .line 8704
    if-eqz v6, :cond_8

    const-string v11, ""

    if-ne v6, v11, :cond_9

    .line 8705
    :cond_8
    iget-object v6, v10, Lcom/android/email/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 8708
    iget-object v10, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8734
    :cond_9
    const/4 v6, 0x5

    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 8735
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 8736
    invoke-static {v6}, Lcom/android/email/Utility;->isDateToday(Ljava/util/Date;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 8737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mTimeFormat:Ljava/text/DateFormat;

    move-object v10, v0

    invoke-virtual {v10, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 8741
    :goto_b
    iget-object v10, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    move v6, v0

    sget v10, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v6, v10, :cond_28

    .line 8772
    iget-boolean v6, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v6, :cond_17

    .line 8773
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    new-instance v10, Landroid/content/res/ColorStateList;

    const/4 v11, 0x3

    new-array v11, v11, [[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a7

    aput v15, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a1

    aput v15, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    new-array v13, v13, [I

    aput-object v13, v11, v12

    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorRead:I

    move v14, v0

    aput v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8779
    :goto_c
    iget-wide v10, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    const-wide/16 v12, -0x2

    cmp-long v6, v10, v12

    if-nez v6, :cond_1c

    .line 8783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$7200(Lcom/android/email/activity/MessageList;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 8785
    const-string v5, "MessageList >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindview() : itemView.mThreadName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 8786
    const/16 v5, 0xa

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    .line 8788
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8789
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8790
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8791
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->threadupdownView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8793
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8794
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mEncryptedView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8795
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8796
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSignView:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8798
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8802
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->threadupdownView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6600()Ljava/util/HashSet;

    move-result-object v5

    const/16 v6, 0xa

    move-object/from16 v0, p3

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadOpen:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    :goto_d
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8805
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9100
    :cond_a
    :goto_e
    const/16 v4, 0xf

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 9102
    const-string v5, "MessageList >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastVerb = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9103
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 9120
    :pswitch_0
    iget-object v3, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 9128
    :catch_0
    move-exception v3

    .line 9129
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 8569
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 8586
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 8598
    :cond_d
    :try_start_1
    invoke-static {}, Lcom/android/email/activity/MessageList;->access$4500()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    goto/16 :goto_3

    .line 8613
    :cond_e
    const/4 v5, 0x3

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 8614
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 8641
    :cond_f
    iget-object v10, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    new-instance v11, Landroid/content/res/ColorStateList;

    const/4 v12, 0x3

    new-array v12, v12, [[I

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a1

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    new-array v14, v14, [I

    aput-object v14, v12, v13

    const/4 v13, 0x3

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, -0x1

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, -0x1

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorUnread:I

    move v15, v0

    aput v15, v13, v14

    invoke-direct {v11, v12, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8643
    iget-object v10, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    new-instance v11, Landroid/content/res/ColorStateList;

    const/4 v12, 0x3

    new-array v12, v12, [[I

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a7

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const v16, 0x10100a1

    aput v16, v14, v15

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    new-array v14, v14, [I

    aput-object v14, v12, v13

    const/4 v13, 0x3

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, -0x1

    aput v15, v13, v14

    const/4 v14, 0x1

    const/4 v15, -0x1

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorUnread:I

    move v15, v0

    aput v15, v13, v14

    invoke-direct {v11, v12, v13}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_5

    .line 8651
    :pswitch_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_5

    .line 8652
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    move-object v5, v9

    goto/16 :goto_6

    .line 8655
    :pswitch_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_5

    .line 8656
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 8659
    :pswitch_3
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_10

    .line 8660
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 8661
    :cond_10
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v10, v11, :cond_5

    .line 8662
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->changeColorInTextView(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_6

    .line 8672
    :cond_11
    iget-boolean v5, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v5, :cond_12

    .line 8673
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    new-instance v8, Landroid/content/res/ColorStateList;

    const/4 v9, 0x3

    new-array v9, v9, [[I

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a1

    aput v13, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    new-array v11, v11, [I

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorRead:I

    move v12, v0

    aput v12, v10, v11

    invoke-direct {v8, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8675
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    new-instance v8, Landroid/content/res/ColorStateList;

    const/4 v9, 0x3

    new-array v9, v9, [[I

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a1

    aput v13, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    new-array v11, v11, [I

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorRead:I

    move v12, v0

    aput v12, v10, v11

    invoke-direct {v8, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_7

    .line 8679
    :cond_12
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    new-instance v8, Landroid/content/res/ColorStateList;

    const/4 v9, 0x3

    new-array v9, v9, [[I

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a1

    aput v13, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    new-array v11, v11, [I

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSubjectTextColorUnread:I

    move v12, v0

    aput v12, v10, v11

    invoke-direct {v8, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8681
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    new-instance v8, Landroid/content/res/ColorStateList;

    const/4 v9, 0x3

    new-array v9, v9, [[I

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a7

    aput v13, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const v13, 0x10100a1

    aput v13, v11, v12

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    new-array v11, v11, [I

    aput-object v11, v9, v10

    const/4 v10, 0x3

    new-array v10, v10, [I

    const/4 v11, 0x0

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, -0x1

    aput v12, v10, v11

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFromTextColorUnread:I

    move v12, v0

    aput v12, v10, v11

    invoke-direct {v8, v9, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_7

    .line 8688
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 8693
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 8700
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 8739
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDateFormat:Ljava/text/DateFormat;

    move-object v10, v0

    invoke-virtual {v10, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_b

    .line 8776
    :cond_17
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    new-instance v10, Landroid/content/res/ColorStateList;

    const/4 v11, 0x3

    new-array v11, v11, [[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a7

    aput v15, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a1

    aput v15, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    new-array v13, v13, [I

    aput-object v13, v11, v12

    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorUnread:I

    move v14, v0

    aput v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_c

    .line 8802
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadClose:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    goto/16 :goto_d

    .line 8808
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/email/activity/MessageList;->access$7200(Lcom/android/email/activity/MessageList;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 8809
    const/16 v5, 0xa

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/email/activity/MessageListItem;->mThreadName:Ljava/lang/String;

    .line 8811
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8812
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8813
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8814
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->threadupdownView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8816
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mEncryptedView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8817
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8818
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSignView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8819
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8820
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8822
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->threadupdownView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/email/activity/MessageList;->access$6800()Ljava/util/HashSet;

    move-result-object v6

    const/16 v7, 0x11

    move-object/from16 v0, p3

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadOpen:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    :goto_f
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8825
    iget v4, v4, Lcom/android/email/activity/MessageListItem;->mFlagReadConv:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    .line 8826
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8829
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 8822
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mThreadClose:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    goto :goto_f

    .line 8833
    :cond_1b
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8836
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 8848
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    move-object v6, v0

    invoke-static {v6}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)[S

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->pos:I

    move v10, v0

    aget-short v6, v6, v10

    const/16 v10, 0x20

    if-ne v6, v10, :cond_1d

    .line 8849
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0200eb

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8857
    :goto_10
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8858
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    iget-boolean v10, v4, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    if-eqz v10, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOn:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    :goto_11
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8861
    invoke-virtual {v4}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v6

    if-nez v6, :cond_20

    .line 8863
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8864
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8865
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    iget-boolean v10, v4, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    if-eqz v10, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    :goto_12
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8888
    :goto_13
    invoke-virtual {v4}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 8912
    if-eqz v9, :cond_23

    .line 8913
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8925
    :goto_14
    if-eqz v5, :cond_25

    .line 8927
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInvitationIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8928
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8947
    :goto_15
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->threadupdownView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8949
    invoke-virtual {v4}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 8950
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8951
    packed-switch v7, :pswitch_data_2

    .line 8962
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 8853
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f0200ea

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_10

    .line 8858
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOff:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    goto :goto_11

    .line 8865
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    goto :goto_12

    .line 8869
    :cond_20
    iget-boolean v6, v4, Lcom/android/email/activity/MessageListItem;->mFFlagSet:Z

    if-eqz v6, :cond_21

    .line 8872
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8873
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8885
    :goto_16
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_13

    .line 8875
    :cond_21
    iget-boolean v6, v4, Lcom/android/email/activity/MessageListItem;->mFFlagComplete:Z

    if-eqz v6, :cond_22

    .line 8877
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8878
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16

    .line 8881
    :cond_22
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    .line 8915
    :cond_23
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_14

    .line 8918
    :cond_24
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mEncryptedView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8919
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSignView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8920
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_14

    .line 8931
    :cond_25
    if-eqz v8, :cond_27

    .line 8932
    iget-wide v5, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->isVoiceMail(J)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 8934
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mVoiceMailIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8939
    :goto_17
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15

    .line 8937
    :cond_26
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 8942
    :cond_27
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_15

    .line 8953
    :pswitch_4
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 8956
    :pswitch_5
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 8959
    :pswitch_6
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 8971
    :cond_28
    iget-boolean v6, v4, Lcom/android/email/activity/MessageListItem;->mRead:Z

    if-eqz v6, :cond_29

    .line 8972
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    new-instance v10, Landroid/content/res/ColorStateList;

    const/4 v11, 0x3

    new-array v11, v11, [[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a7

    aput v15, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a1

    aput v15, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    new-array v13, v13, [I

    aput-object v13, v11, v12

    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorRead:I

    move v14, v0

    aput v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8979
    :goto_18
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8980
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    iget-boolean v10, v4, Lcom/android/email/activity/MessageListItem;->mSelected:Z

    if-eqz v10, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOn:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    :goto_19
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8984
    invoke-virtual {v4}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v6

    if-nez v6, :cond_2c

    .line 8985
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8987
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8988
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    iget-boolean v10, v4, Lcom/android/email/activity/MessageListItem;->mFavorite:Z

    if-eqz v10, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOn:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    :goto_1a
    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9012
    :goto_1b
    invoke-virtual {v4}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v6

    if-eqz v6, :cond_30

    .line 9035
    if-eqz v9, :cond_2f

    .line 9036
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9048
    :goto_1c
    if-eqz v5, :cond_31

    .line 9049
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInvitationIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9050
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9070
    :goto_1d
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->threadupdownView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9072
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9077
    invoke-virtual {v4}, Lcom/android/email/activity/MessageListItem;->IsEAS()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 9078
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9079
    packed-switch v7, :pswitch_data_3

    .line 9090
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 8975
    :cond_29
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    new-instance v10, Landroid/content/res/ColorStateList;

    const/4 v11, 0x3

    new-array v11, v11, [[I

    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a7

    aput v15, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const v15, 0x10100a1

    aput v15, v13, v14

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x1

    new-array v13, v13, [I

    aput-object v13, v11, v12

    const/4 v12, 0x3

    new-array v12, v12, [I

    const/4 v13, 0x0

    const/4 v14, -0x1

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, -0x1

    aput v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mDatetimeTextColorUnread:I

    move v14, v0

    aput v14, v12, v13

    invoke-direct {v10, v11, v12}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_18

    .line 8980
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOff:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    goto/16 :goto_19

    .line 8988
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavoriteIconOff:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    goto/16 :goto_1a

    .line 8994
    :cond_2c
    iget-boolean v6, v4, Lcom/android/email/activity/MessageListItem;->mFFlagSet:Z

    if-eqz v6, :cond_2d

    .line 8997
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8998
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagSet:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9009
    :goto_1e
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1b

    .line 9000
    :cond_2d
    iget-boolean v6, v4, Lcom/android/email/activity/MessageListItem;->mFFlagComplete:Z

    if-eqz v6, :cond_2e

    .line 9002
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9003
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFollowUpFlagComplete:Landroid/graphics/drawable/Drawable;

    move-object v10, v0

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    .line 9006
    :cond_2e
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    .line 9038
    :cond_2f
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c

    .line 9041
    :cond_30
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mEncryptedView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9042
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSignView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9043
    iget-object v6, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1c

    .line 9054
    :cond_31
    if-eqz v8, :cond_33

    .line 9055
    iget-wide v5, v4, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->isVoiceMail(J)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 9056
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mVoiceMailIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9061
    :goto_1f
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1d

    .line 9059
    :cond_32
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mAttachmentIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1f

    .line 9064
    :cond_33
    iget-object v5, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1d

    .line 9081
    :pswitch_7
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLowPriorityIcon:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 9084
    :pswitch_8
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    .line 9087
    :pswitch_9
    iget-object v4, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mHighPriorityIcon:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_e

    .line 9106
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 9107
    iget-object v3, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 9111
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 9112
    iget-object v3, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 9116
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/email/activity/MessageList;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 9117
    iget-object v3, v3, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 8647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 9103
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 8951
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 9079
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 8256
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget v0, v0, Lcom/android/email/activity/MessageList;->mViewModeType:I

    iput v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    .line 8257
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

    .line 8258
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 8259
    return-void
.end method

.method public doRequery()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 8266
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8269
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 8271
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->cancel(Z)Z

    .line 8272
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 8274
    :cond_0
    iget-object v8, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    new-instance v0, Lcom/android/email/activity/MessageList$LoadMessagesTask;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v4}, Lcom/android/email/activity/MessageList;->access$5100(Lcom/android/email/activity/MessageList;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/MessageList$LoadMessagesTask;-><init>(Lcom/android/email/activity/MessageList;JJZ)V

    invoke-static {v8, v0}, Lcom/android/email/activity/MessageList;->access$502(Lcom/android/email/activity/MessageList;Lcom/android/email/activity/MessageList$LoadMessagesTask;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    .line 8275
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$500(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$LoadMessagesTask;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageList$LoadMessagesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 8278
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8284
    :cond_1
    :goto_0
    return-void

    .line 8279
    :catch_0
    move-exception v7

    .line 8280
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MessageList >>"

    const-string v1, "notify data set changed exception"

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 8281
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public escapeCharacterToSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "text"

    .prologue
    const/16 v6, 0xc

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 8425
    new-array v5, v6, [C

    fill-array-data v5, :array_0

    .line 8427
    .local v5, targetChar:[C
    new-array v1, v6, [Ljava/lang/String;

    const-string v6, "\\^"

    aput-object v6, v1, v8

    const-string v6, "\\*"

    aput-object v6, v1, v9

    const/4 v6, 0x2

    const-string v7, "\\+"

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-string v7, "\\("

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-string v7, "\\)"

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const-string v7, "\\?"

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, "\\{"

    aput-object v7, v1, v6

    const/4 v6, 0x7

    const-string v7, "\\}"

    aput-object v7, v1, v6

    const/16 v6, 0x8

    const-string v7, "\\["

    aput-object v7, v1, v6

    const/16 v6, 0x9

    const-string v7, "\\]"

    aput-object v7, v1, v6

    const/16 v6, 0xa

    const-string v7, "\\|"

    aput-object v7, v1, v6

    const/16 v6, 0xb

    const-string v7, "\\$"

    aput-object v7, v1, v6

    .line 8429
    .local v1, convertedString:[Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 8430
    .local v0, bConverted:Ljava/lang/Boolean;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8431
    .local v4, out:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 8433
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 8434
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 8436
    aget-char v6, v5, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_2

    .line 8438
    aget-object v6, v1, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8439
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 8443
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 8445
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8431
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8434
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8448
    .end local v3           #j:I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 8425
    :array_0
    .array-data 0x2
        0x5et 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x5bt 0x0t
        0x5dt 0x0t
        0x7ct 0x0t
        0x24t 0x0t
    .end array-data
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
    .line 8360
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
    .line 8355
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    return-object v0
.end method

.method public getTextSizeValue()I
    .locals 3

    .prologue
    .line 9507
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MessageViewTextSize"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x2

    .line 9137
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor failed move to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9141
    :cond_0
    iput p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->pos:I

    .line 9146
    :try_start_0
    iget v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    if-ne v0, v1, :cond_2

    .line 9147
    if-eqz p2, :cond_1

    move-object v0, p2

    .line 9214
    :goto_0
    return-object v0

    .line 9151
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 9154
    :cond_2
    iget v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    sget v1, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION:I

    if-ne v0, v1, :cond_8

    .line 9155
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    .line 9156
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    if-nez v0, :cond_3

    move-object v0, p2

    .line 9157
    goto :goto_0

    .line 9160
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 9164
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)[S

    move-result-object v0

    aget-short v0, v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 9165
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    if-nez v0, :cond_5

    move-object v0, p2

    .line 9166
    goto :goto_0

    .line 9169
    :cond_5
    new-instance v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;-><init>(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    .line 9170
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    .line 9171
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 9172
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 9173
    goto :goto_0

    .line 9177
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    if-ne v0, v2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->textSize:I

    iget v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->listItemSize:I

    if-ne v0, v1, :cond_7

    move-object v0, p2

    .line 9206
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessageList$MessageListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 9208
    :catch_0
    move-exception v0

    .line 9209
    const-string v1, "MessageList >>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: MessageListAdapter.getView() \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 9210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9211
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 9182
    :cond_7
    :try_start_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 9188
    :cond_8
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_a

    .line 9189
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    move-object v0, p2

    .line 9190
    goto :goto_1

    .line 9193
    :cond_9
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 9197
    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    if-ne v0, v2, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    iget v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->textSize:I

    iget v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->listItemSize:I

    if-ne v0, v1, :cond_b

    move-object v0, p2

    .line 9199
    goto :goto_1

    .line 9202
    :cond_b
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/email/activity/MessageList$MessageListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 9512
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 9513
    const/4 v0, 0x0

    .line 9515
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f030036

    const/4 v5, 0x0

    .line 9220
    .line 9221
    new-instance v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;-><init>(Lcom/android/email/activity/MessageList$MessageListAdapter;)V

    .line 9224
    iget v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    sget v2, Lcom/android/email/activity/MessageList;->VIEW_MODE_CONVERSATION_READY:I

    if-ne v1, v2, :cond_0

    .line 9226
    iput v5, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    .line 9227
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 9271
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9272
    return-object v1

    .line 9229
    :cond_0
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 9230
    iget v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mListViewMode:I

    sget v2, Lcom/android/email/activity/MessageList;->VIEW_MODE_STANDARD:I

    if-ne v1, v2, :cond_1

    .line 9231
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    .line 9232
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030027

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 9235
    :cond_1
    iput v5, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    .line 9236
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v6, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 9240
    :cond_2
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->itemType:I

    .line 9241
    iget v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->listItemSize:I

    iput v1, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->textSize:I

    .line 9243
    iget v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->listItemSize:I

    packed-switch v1, :pswitch_data_0

    .line 9253
    :pswitch_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030034

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 9256
    :goto_1
    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->chipView:Landroid/view/View;

    .line 9257
    const v2, 0x7f07010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->displaynameView:Landroid/widget/TextView;

    .line 9258
    const v2, 0x7f070099

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->subjectView:Landroid/widget/TextView;

    .line 9259
    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 9260
    const v2, 0x7f070102

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->selectedView:Landroid/widget/ImageView;

    .line 9261
    const v2, 0x7f070109

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->favoriteView:Landroid/widget/ImageView;

    .line 9262
    const v2, 0x7f07010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->threadupdownView:Landroid/widget/ImageView;

    .line 9263
    const v2, 0x7f070105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->priorityView:Landroid/widget/ImageView;

    .line 9264
    const v2, 0x7f070108

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->followUpFlagView:Landroid/widget/ImageView;

    .line 9265
    const v2, 0x7f070104

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->attachmentView:Landroid/widget/ImageView;

    .line 9267
    const v2, 0x7f0700ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSignView:Landroid/widget/ImageView;

    .line 9268
    const v2, 0x7f070107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mEncryptedView:Landroid/widget/ImageView;

    .line 9269
    const v2, 0x7f070106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter$ViewHolder;->mSmsView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 9246
    :pswitch_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030035

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    .line 9249
    :pswitch_2
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030033

    invoke-virtual {v1, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto/16 :goto_1

    .line 9243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected declared-synchronized onContentChanged()V
    .locals 7

    .prologue
    .line 8238
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mLastRefreshTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v1, v3, v5

    .line 8243
    .local v1, sinceRefresh:J
    :try_start_1
    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    if-eqz v3, :cond_0

    .line 8244
    iget-object v3, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    const-wide/16 v4, 0xfa0

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->schedule(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8251
    .end local v1           #sinceRefresh:J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 8247
    .restart local v1       #sinceRefresh:J
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 8248
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

    .line 8238
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
    .line 9308
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9309
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    .line 9310
    return-void

    .line 9309
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
    .line 8349
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MessageList$ListItem;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->itemArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 8350
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->itemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8351
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->itemArray:Ljava/util/ArrayList;

    .line 8352
    return-void
.end method

.method public setTextSizeValue(I)V
    .locals 2
    .parameter

    .prologue
    .line 9503
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MessageViewTextSize"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9504
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 8334
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    if-eqz v0, :cond_0

    .line 8335
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->clear()V

    .line 8336
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mRefreshTimer:Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList$MessageListAdapter$RefreshTimer;->cancel()V

    .line 8338
    :cond_0
    return-void
.end method

.method public syncCheckedItem()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 9459
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 9461
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9494
    :cond_0
    :goto_0
    return-void

    .line 9468
    :cond_1
    :try_start_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 9469
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 9470
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9471
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9472
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 9473
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9474
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9489
    :catch_0
    move-exception v0

    .line 9490
    const-string v1, "MessageList >>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalStateException >>> syncCheckedItem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 9491
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 9493
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    goto :goto_0

    .line 9477
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 9478
    :cond_3
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9479
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 9480
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 9483
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 9487
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, v1, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_5
    move v1, v6

    .line 9493
    goto :goto_3
.end method

.method public syncFavorites()V
    .locals 5

    .prologue
    .line 9365
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 9367
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9388
    :cond_0
    :goto_0
    return-void

    .line 9374
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9375
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 9376
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 9377
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 9378
    iget-object v2, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v2}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9380
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9382
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 9383
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

    .line 9384
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public syncFollowupFlag()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 9394
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$3700(Lcom/android/email/activity/MessageList;)Landroid/content/ContentResolver;

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

    move-result-object v0

    .line 9397
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9425
    :cond_0
    :goto_0
    return-void

    .line 9401
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 9402
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 9403
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagCompleted:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 9404
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 9405
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 9406
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagSet:Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9412
    :cond_2
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9414
    :catch_0
    move-exception v1

    .line 9415
    :try_start_1
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

    .line 9416
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9420
    if-eqz v0, :cond_0

    .line 9421
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 9409
    :cond_3
    const/4 v1, 0x6

    :try_start_2
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 9410
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$2700(Lcom/android/email/activity/MessageList;)Lcom/android/email/activity/MessageList$MessageListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFFlagCompleted:Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 9420
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 9421
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 9420
    :cond_4
    throw v1

    :cond_5
    if-eqz v0, :cond_0

    goto :goto_3
.end method

.method public updateFavorite(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 9321
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9800(Lcom/android/email/activity/MessageList;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9323
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "11111 MessageList.java >>>>> updateFavorite()  >>>>> 5598"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9324
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageList;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0801a5

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 9361
    :cond_0
    :goto_0
    return-void

    .line 9333
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-wide v1, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v0, v1, v2, p2}, Lcom/android/email/activity/MessageList;->access$3600(Lcom/android/email/activity/MessageList;JZ)V

    .line 9335
    iget-wide v0, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 9336
    if-eqz p2, :cond_3

    .line 9337
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9349
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9357
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9400(Lcom/android/email/activity/MessageList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9358
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v0}, Lcom/android/email/activity/MessageList;->access$9500(Lcom/android/email/activity/MessageList;)V

    goto :goto_0

    .line 9339
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mFavorites:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9341
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$200(Lcom/android/email/activity/MessageList;)J

    move-result-wide v1

    const-wide/16 v3, -0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 9343
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9344
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_3

    .line 9350
    :catch_0
    move-exception v0

    .line 9351
    const-string v1, "MessageList >>"

    const-string v2, "notify data set changed exception"

    invoke-static {v1, v2}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 9352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public updateSelected(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 9282
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " In UpdateSelected"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 9283
    const v0, 0x7f070102

    invoke-virtual {p1, v0}, Lcom/android/email/activity/MessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9284
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOn:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9285
    iget-wide v0, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 9286
    iget-boolean v1, p1, Lcom/android/email/activity/MessageListItem;->mSms:Z

    if-ne v1, v2, :cond_0

    .line 9288
    if-eqz p2, :cond_2

    .line 9289
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSmsChecked:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9297
    :cond_0
    :goto_1
    if-eqz p2, :cond_3

    .line 9298
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9304
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageList;->access$2900(Lcom/android/email/activity/MessageList;Z)V

    .line 9305
    return-void

    .line 9284
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSelectedIconOff:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 9291
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mSmsChecked:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9300
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->mChecked:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9304
    :cond_4
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public updateTextSize(I)V
    .locals 3
    .parameter

    .prologue
    .line 9498
    const-string v0, "MessageList >>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTextSize OK TextSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 9499
    iput p1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->listItemSize:I

    .line 9500
    return-void
.end method

.method public updateThreadListVisibility(IZ)V
    .locals 5
    .parameter "threadPos"
    .parameter "isShow"

    .prologue
    const/4 v4, 0x1

    .line 8453
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)[S

    move-result-object v1

    array-length v0, v1

    .line 8455
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

    .line 8457
    sub-int v1, v0, v4

    if-ge p1, v1, :cond_2

    .line 8458
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)[S

    move-result-object v1

    if-eqz p2, :cond_3

    const/4 v2, 0x2

    :goto_0
    aput-short v2, v1, p1

    .line 8460
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)[S

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget-short v1, v1, p1

    and-int/lit16 v1, v1, 0xf0

    if-lez v1, :cond_1

    .line 8461
    iget-object v1, p0, Lcom/android/email/activity/MessageList$MessageListAdapter;->this$0:Lcom/android/email/activity/MessageList;

    invoke-static {v1}, Lcom/android/email/activity/MessageList;->access$7300(Lcom/android/email/activity/MessageList;)[S

    move-result-object v1

    if-eqz p2, :cond_4

    const/16 v2, 0x20

    :goto_1
    aput-short v2, v1, p1

    .line 8463
    sub-int v1, v0, v4

    if-lt p1, v1, :cond_0

    .line 8467
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V

    .line 8469
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 8458
    goto :goto_0

    .line 8461
    :cond_4
    const/16 v2, 0x10

    goto :goto_1
.end method
